package swig.lecture;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.slf4j.LoggerFactory;
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

import swig.lecture.model.LectureModel;

import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

@Controller
public class ProgramingLectureController {
	
	Logger log= Logger.getLogger(this.getClass());
	
	private List<LectureModel> lectureList = new ArrayList<LectureModel>();
	
	private String isSearch;	// 검색어
	
	
	private String member_no;
	
	String session_member_no;
	
	private byte[] img;
	
	private InputStream inputStream;
	private OutputStream outputStream;
	
	@Resource(name="lectureService")
	private LectureService lectureService;
	
	
	@ModelAttribute("lectureModel")
	public LectureModel formBack() {
		return new LectureModel();
	}
	
	// 대소문자 구분좀 ...
	@RequestMapping(value="/ProgramingLectureList.do")
	public ModelAndView lectureBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mav = new ModelAndView("/lecture/LectureList");
		
		List<Map<String,Object>> list = lectureService.lectureBoardList(commandMap.getMap());
		mav.addObject("list", list);
		
		return mav;
	}
	
	@RequestMapping(value="/ProgramingLectureDetail.do")
	public ModelAndView selectLectureDetail(CommandMap commandMap) throws Exception {
		ModelAndView mav = new ModelAndView("/lecture/LectureDetail");
		
		Map<String,Object> map = lectureService.selectLectureDetail(commandMap.getMap());
		mav.addObject("map", map);
		mav.addObject("list", map.get("list"));
		
		return mav;
	}
	
	
}
