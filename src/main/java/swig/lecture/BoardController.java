package swig.lecture;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
	ModelAndView mav = new ModelAndView();
	
	String session_member_id;
	
	@RequestMapping(value = "/lectureAppleForm.do")
	public ModelAndView lectureApplyForm(HttpServletRequest request, HttpSession session) {
		mav.setViewName("/lecture/lectureApplyForm.jsp");
		
		String member_id = (String)session.getAttribute("session_member_id");
		
		return mav;
		
	}
	
	
	@RequestMapping(value = "/wish.do")
	public ModelAndView wish(HttpServletRequest request, HttpSession session) {
		
		String member_id = (String)session.getAttribute("session_member_id");
		
		mav.setViewName("/lecture/wish.jsp");
		
		return mav;
	}
	
	@RequestMapping(value = "/talk.do")
	public ModelAndView talk() {
		return null;	// 수정해야함
	}
}
