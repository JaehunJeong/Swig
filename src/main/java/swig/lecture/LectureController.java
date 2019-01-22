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
	
	@RequestMapping(value="/selectLectureList")
	public ModelAndView selectLectureList(CommandMap commandMap) throws Exception {

		// ajax 등의 요청을 했을 때, json형식으로 return 받기 위해서 사용
		ModelAndView mav = new ModelAndView("jsonView");
		
		
		List<Map<String,Object>> list = lectureService.lectureList(commandMap.getMap());
		mav.addObject("list", list);
		
		
		/*if(list.size() > 0){
    		mv.addObject("TOTAL", list.get(0).get("TOTAL_COUNT"));
    	}
    	else{
    		mv.addObject("TOTAL", 0);
    	}
		페이징 시 필요 */
		
		return mav;
	}
		
	@RequestMapping(value="/LectureDetail")
	public ModelAndView selectLectureDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView("/lecture/LectureDetail");
		
		/*	
		Map<String,Object> map = lectureService.selectLectureDetail(commandMap.getMap());
		
		commandMap.put("M_NO", session.getAttribute("session_member_no"));
		// M_NO 를 끌어와야 수강신청을 눌렀을 때 제대로 넘길 수 있다. 그러니 필수 
		
		commandMap.put("L_NO", session.getAttribute("session_lecture_no"));
		// L_NO 을 끌어오면 장소/시간을 끌어올 수 있다.. 재량으로..
		
		mav.addObject("map", map);
		
		List<Map<String, Object>> list = reviewService.selectReview(commandMap.getMap());
		mav.addObject("list", list);*/
		return mav;
	}
	
	// 점수 넣고 후기 작성 & 후기 수정
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
		
		 reviewService.avgScore(commandMap.getMap());		// 총첨 넣기
		
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
	
		@RequestMapping(value = "/lectureApplyForm")	// 수강 신청
		public ModelAndView lectureApplyForm(CommandMap commandMap) throws Exception {
			
			ModelAndView mav = new ModelAndView("/lecture/lectureApplyForm");
		
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



// 장소, 시간 선택, 리뷰 작성, 리뷰 삭제, 리뷰 수정, 수업신청, 찜하기, 실시간 톡
