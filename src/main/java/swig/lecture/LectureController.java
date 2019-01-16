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
	
	@Autowired
	@Resource(name="lectureService")
	private LectureService lectureService;
	
	
	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	ModelAndView mav = new ModelAndView();
	
	String session_member_no;
	int totalScore;
	
	// 수업 신청을 누르면 세션 받아서 lectureAppleForm.jsp 로 가도록 설정
	@RequestMapping(value = "/lectureApplyForm")
	public ModelAndView lectureApplyForm(CommandMap commandMap) throws Exception {
		
		ModelAndView mav = new ModelAndView("/lecture/lectureApplyForm");
		// 아이디 뿐만 아니라 신청한 위치, 요일도 값 받아서 넘겨야 한다...how?
		return mav;
		
	}
	
	// 찜하기를 누르면 세션 받아서 wish.jsp 로 가도록 설정
	@RequestMapping(value = "/wish")
	public ModelAndView wish(CommandMap commandMap) throws Exception {
		
		ModelAndView mav = new ModelAndView("/lecture/wish");
		
		return mav;
	}
	
	// 실시간 톡을 누르면 세션 받아서 talk.jsp 로 가도록 설정
	@RequestMapping(value = "/talk")
	public ModelAndView talk(HttpServletRequest request, HttpSession session) {
		
		ModelAndView mav = new ModelAndView("/lecture/talk.jsp");
	
		return mav;
	}
	
	@RequestMapping(value="/insertReview")
	public ModelAndView insertReview(CommandMap commandMap) throws Exception{
		commandMap.put("LR_SCORE1",  commandMap.get("LR_SCORE1-input"));	// map 객체에 추가
		commandMap.put("LR_SCORE2",  commandMap.get("LR_SCORE2-input"));
		commandMap.put("LR_SCORE3",  commandMap.get("LR_SCORE3-input"));
		commandMap.put("LR_SCORE4",  commandMap.get("LR_SCORE4-input"));
		commandMap.put("LR_SCORE5",  commandMap.get("LR_SCORE5-input"));
		
		for(int i=1;i<=5;i++){
			   totalScore += commandMap.get(("LR_SCORE")+i+"-input");
			}
			   commandMap("LR_SCORE_TOTAL",totalScore/5);
		
		// LR_TOTALSCORE 값 지정해서 PUT 해야 한다..
		
		if(commandMap.get("LR_NO") == null || "".equals(commandMap.get("LR_NO"))) {
			reviewService.insertReview(commandMap.getMap());
		} else {
			reviewService.updateReview(commandMap.getMap());
		}
		return new ModelAndView("redirect:/lecture/LectureDetail?LR_NO=" + commandMap.getMap().get("LR_NO"));
	}
	
	@RequestMapping(value="/deleteReview.do")
	public ModelAndView deleteReview(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("redirect:/lecture/LectureDetail?LR_NO=" + commandMap.getMap().get("LR_NO"));
		reviewService.deleteReview(commandMap.getMap());
			
		return mav;
	}
}
