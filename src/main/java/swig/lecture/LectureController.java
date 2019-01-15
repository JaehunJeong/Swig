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
	
	ModelAndView mav = new ModelAndView();
	
	String session_member_no;
	String session_;
	
	
	// 수업 신청을 누르면 세션 받아서 lectureAppleForm.jsp 로 가도록 설정
	@RequestMapping(value = "/lectureAppleForm.do")
	public ModelAndView lectureApplyForm(HttpServletRequest request, HttpSession session) {
		
		String member_id = (String)session.getAttribute("session_member_no");
		// 아이디 뿐만 아니라 신청한 위치, 요일도 값 받아서 넘겨야 한다...how?
		mav.setViewName("/lecture/lectureApplyForm.jsp");
		
		return mav;
		
	}
	
	// 찜하기를 누르면 세션 받아서 wish.jsp 로 가도록 설정
	@RequestMapping(value = "/wish.do")
	public ModelAndView wish(HttpServletRequest request, HttpSession session) {
		
		String member_id = (String)session.getAttribute("session_member_no");
		
		mav.setViewName("/lecture/wish.jsp");
		
		return mav;
	}
	
	// 실시간 톡을 누르면 세션 받아서 talk.jsp 로 가도록 설정
	@RequestMapping(value = "/talk.do")
	public ModelAndView talk(HttpServletRequest request, HttpSession session) {
		
		String member_id = (String)session.getAttribute("session_member_no");
		
		mav.setViewName("/lecture/talk.jsp");
		return null;
	}
	
	@RequestMapping(value="/")
}
