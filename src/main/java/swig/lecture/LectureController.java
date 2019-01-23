package swig.lecture;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import swig.common.CommandMap;
import swig.lecture.LectureService;
import swig.lecture.review.ReviewService;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

@Controller
public class LectureController {
	
	Logger log= Logger.getLogger(this.getClass());
	
	@Resource(name="lectureService")
	private LectureService lectureService;
	
	
	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	@RequestMapping(value="/openLectureList")
	public ModelAndView openLectureList(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("/lecture/lectureList");
		return mav;
	}
	
		
	@RequestMapping(value="/LectureDetail")
	public ModelAndView selectLectureDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		/*ModelAndView mav = new ModelAndView("/lecture/LectureDetail?LR_NO" + commandMap.getMap().get("LR_NO"));*/
		ModelAndView mav = new ModelAndView("/lecture/LectureDetail");
		/*	
		Map<String,Object> map = lectureService.selectLectureDetail(commandMap.getMap());
		
		commandMap.put("M_NO", session.getAttribute("session_member_no"));
		// M_NO 瑜� �걣�뼱���빞 �닔媛뺤떊泥��쓣 �닃���쓣 �븣 �젣��濡� �꽆湲� �닔 �엳�떎. 洹몃윭�땲 �븘�닔 
		
		commandMap.put("L_NO", session.getAttribute("session_lecture_no"));
		// L_NO �쓣 �걣�뼱�삤硫� �옣�냼/�떆媛꾩쓣 �걣�뼱�삱 �닔 �엳�떎.. �옱�웾�쑝濡�..
		
		mav.addObject("map", map);
		
		List<Map<String, Object>> list = reviewService.selectReview(commandMap.getMap());
		mav.addObject("list", list);*/
		return mav;
	}
	
	@RequestMapping(value="/LectureDetail/selectReviewList")
	public ModelAndView reviewList(CommandMap commanMap) throws Exception{
		ModelAndView mav = new ModelAndView("/LectureDetail/ReviewList");
		
		List<Map<String, Object>> list = reviewService.reviewList(commanMap.getMap());
		mav.addObject("list", list);
		
		if(list.size() > 0){
    		mav.addObject("TOTAL", list.get(0).get("TOTAL_COUNT"));
    	}
    	else{
    		mav.addObject("TOTAL", 0);
    	}
		
		return mav;
		
	}
	// �젏�닔 �꽔怨� �썑湲� �옉�꽦 & �썑湲� �닔�젙
	@RequestMapping(value="/LectureDetail/insertReview")
	public ModelAndView insertReview(CommandMap commandMap/*, HttpServletRequest request*/) throws Exception{
		/*HttpSession session = request.getSession();
		
		commandMap.put("M_NO", session.getAttribute("session_member_no"));*/
		ModelAndView mav = new ModelAndView("redirect:/lecture/LectureDetail?LR_NO" + commandMap.getMap().get("LR_NO"));
	
		 commandMap.put("LR_SCORE1", commandMap.get("LR_SCORE1"));
		 commandMap.put("LR_SCORE2", commandMap.get("LR_SCORE2"));
		 commandMap.put("LR_SCORE3", commandMap.get("LR_SCORE3"));
		 commandMap.put("LR_SCORE4", commandMap.get("LR_SCORE4"));
		 commandMap.put("LR_SCORE5", commandMap.get("LR_SCORE5"));
		
		 reviewService.avgScore(commandMap.getMap());		// 珥앹꺼 �꽔湲�
		
		 commandMap.put("LR_TOTALSCORE", commandMap.get("LR_TOTALSCORE"));
		 
		if(commandMap.get("LR"
				+ "_NO") == null || "".equals(commandMap.get("LR_NO"))) {
			reviewService.insertReview(commandMap.getMap());
		} else {
			reviewService.updateReview(commandMap.getMap());
		}
		return mav;
	}
	
	@RequestMapping(value="/deleteReview")
	public ModelAndView deleteReview(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("redirect:/lecture/LectureDetail?LR_NO=" + commandMap.getMap().get("LR_NO"));
		reviewService.deleteReview(commandMap.getMap());
			
		return mav;
	}
	
		@RequestMapping(value = "/lectureApplyForm")	// �닔媛� �떊泥�
		public ModelAndView lectureApplyForm(CommandMap commandMap) throws Exception {
			
			ModelAndView mav = new ModelAndView("/lecture/lectureApplyForm?M_NO=" + commandMap.getMap().get("M_NO"));
		
			return mav;	
		}	
		
		@RequestMapping(value = "/wish")
		public ModelAndView wish(CommandMap commandMap) throws Exception {
			
			ModelAndView mav = new ModelAndView("/lecture/wish");
			
			return mav;
		}	
	
		@RequestMapping(value = "/talk")
		public ModelAndView talk(CommandMap commandMap) {
			
			ModelAndView mav = new ModelAndView("/lecture/talk");
		
			return mav;
		}
}



// �옣�냼, �떆媛� �꽑�깮, 由щ럭 �옉�꽦, 由щ럭 �궘�젣, 由щ럭 �닔�젙, �닔�뾽�떊泥�, 李쒗븯湲�, �떎�떆媛� �넚
