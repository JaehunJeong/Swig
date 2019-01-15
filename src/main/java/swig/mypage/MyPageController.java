package swig.mypage;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import swig.mypage.MyPageService;

@Controller
public class MyPageController {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="mypageService")
	private MyPageService mypageService;
	
	//마이페이지 이동
	@RequestMapping(value="/mypageForm.do")
	public String mypageForm() throws Exception{
		return "/mypageForm";
	}
	
	//회원정보수정
	@RequestMapping(value="/memberUpdate.do")
	public String memberUpdate(Member member) throws Exception{
		
		MyPageServiceImpl.memberUpdate(member);
		return "redirect:/memberForm.do";
	}
	
	//회원탈퇴
	@RequestMapping(value="/memberDelete.do")
	public String memberDelete(int m_tutor) throws Exception{
		MyPageServiceImpl.memberDelete(m_tutor);
		return "redirect:/mypageForm.do";
	}
	
	//수업신청 리스트 출력
	//@RequestMapping(value="/lectureApplyList.do")
	//수강중인 수업 리스트 출력
	
	//위시 리스트 출력
	
	
}
