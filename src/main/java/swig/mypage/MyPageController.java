package swig.mypage;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import swig.mypage.MyPageService;
import swig.utils.CommandMap;

@Controller
public class MyPageController {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="myPageService")
	private MyPageService myPageService;
	
	//마이페이지 이동
	@RequestMapping(value="/mypageForm.do")
	public String myPageForm() throws Exception{
		return "/mypageForm";
	}
	
	//회원정보 가져오기
	@RequestMapping(value="/memberView.do")
	public ModelAndView memberView(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/mypage/memberForm");
		Map<String, Object> member = myPageService.memberView(session.getAttribute("session_m_no"));
		
		mv.addObject("member", member);
		
		return mv;
	}
	
	//회원정보 수정
	@RequestMapping(value="/memberUpdate.do")
	public String memberUpdate(Member member, HttpServletRequest request) throws Exception{
		MyPageServiceImpl.memberUpdate(member, request);
		return "redirect:/memberForm.do";
	}
	
	//튜터회원정보 수정
	@RequestMapping(value="/tutorUpdate.do")
	public String tutorUpdate(Tutor tutor, HttpServletRequest request) throws Exception{
		MyPageServiceImpl.tutorUpdate(tutor, request);
		return "redirect:/tutorForm.do";
	}
	
	//회원탈퇴
	@RequestMapping(value="/memberDelete.do")
	public String memberDelete(int m_tutor) throws Exception{
		MyPageServiceImpl.memberDelete(m_tutor);
		return "redirect:/mypageForm.do";
	}
	
	//수업신청 리스트 출력
	@RequestMapping(value="/lectureApplyList.do")
	public ModelAndView lectureApplyList(CommandMap commandMap, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/lectureApplyList");
		commandMap.put("m_no", session.getAttribute("session_m_no"));
		List<Map<String, Object>> list = myPageService.lectureApplyList(commandMap.getMap());
		mv.addObject("list", list);
        
        return mv;
	}
	
	//수강중인 수업 리스트 출력
	@RequestMapping(value="/lectureApplyList.do")
	public ModelAndView lectureListForm(CommandMap commandMap, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/lectureApplyList");
		commandMap.put("m_no", session.getAttribute("session_m_no"));
		List<Map<String, Object>> list = myPageService.lectureListForm(commandMap.getMap());
		mv.addObject("list", list);
        
        return mv;
	}
	
	//위시 리스트 출력
	@RequestMapping(value="/lectureApplyList.do")
	public ModelAndView wishListForm(CommandMap commandMap, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/lectureApplyList");
		commandMap.put("m_no", session.getAttribute("session_m_no"));
		List<Map<String, Object>> list = myPageService.wishListForm(commandMap.getMap());
		mv.addObject("list", list);
        
        return mv;
	}
	
}
