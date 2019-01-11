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
		return "/mypage/mypageForm";
	}	
	
}
