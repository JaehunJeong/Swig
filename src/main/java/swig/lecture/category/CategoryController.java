package swig.lecture.category;

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
public class CategoryController {

Logger log= Logger.getLogger(this.getClass());
	
	@Resource(name="lectureService")
	private LectureService lectureService;
	
	@Resource(name="reviewService")
	private ReviewService reviewService;
	
	@Resource(name="categoryService")
	private CategoryService categoryService;
	
	@Resource(name="regionCategoryService")
	private RegionCategoryService regionCategoryService;
	
	
	@RequestMapping(value="/cate1")
	public ModelAndView cate1(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("/lecture/LectureList");
		
		List<Map<String,Object>> list = lectureService.selectcate1(commandMap.getMap());
		mav.addObject("list", list);
	}
	@RequestMapping(value="/cate2")
	public ModelAndView cate1(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("/lecture/LectureList");
		
		List<Map<String,Object>> list = lectureService.selectcate1(commandMap.getMap());
		mav.addObject("list", list);
	}
	@RequestMapping(value="/cate3")
	public ModelAndView cate1(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("/lecture/LectureList");
		
		List<Map<String,Object>> list = lectureService.selectcate1(commandMap.getMap());
		mav.addObject("list", list);
	}
	@RequestMapping(value="/cate4")
	public ModelAndView cate1(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("/lecture/LectureList");
		
		List<Map<String,Object>> list = lectureService.selectcate1(commandMap.getMap());
		mav.addObject("list", list);
	}
}
