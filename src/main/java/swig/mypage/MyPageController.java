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
	
	//회원번호에 맞는 회원정보 가져오기
	@RequestMapping("/mypage/mypageView")
	public ModelAndView mypageView(HttpSession session) throws Exception{
		if (session.getAttribute("session_m_no") == null) {
			return new ModelAndView("redirect:/first");
		}
		ModelAndView mv = new ModelAndView("/mypage/mypageViewCss");
		Map<String, Object> member = mypageService.selectOneMember(session.getAttribute("session_m_no"));
		
		mv.addObject("member", member);
		
		return mv;
		
	}
	
	
	
}
