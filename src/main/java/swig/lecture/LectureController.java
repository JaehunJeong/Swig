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
import swig.lecture.category.CategoryService;
import swig.lecture.category.RegionCategoryService;
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
	
	@Resource(name="categoryService")
	private CategoryService categoryService;
	
	@Resource(name="regionCategoryService")
	private RegionCategoryService regionCategoryService;
	
	/*@RequestMapping(value="/CategoryList")
	public ModelAndView CategoryList(CommandMap commandMap) throws Exception{
	  
	  ModelAndView mav = new ModelAndView("/lecture/LectureList?CA_NO" + commandMap.getMap().get("CA_NO"));
		
	  List<Map<String, Object>> caGroup = new ArrayList<Map<String, Object>>(categoryService.selectCAgroup());	// 대분류 가져옴
   	  List<List<Map<String,Object>>> caList = new ArrayList<List<Map<String,Object>>>(categoryService.listOfCategory());	// 소분류 가져옴
   	  
   	  List<Map<String,Object>> list1=caList.get(0);
   	  List<Map<String,Object>> list2=caList.get(1);
   	  List<Map<String,Object>> list3=caList.get(2);
   	  List<Map<String,Object>> list4=caList.get(3);
   	  List<Map<String,Object>> list5=caList.get(4);
   	  List<Map<String,Object>> list6=caList.get(5);
   	  List<Map<String,Object>> list7=caList.get(6);
   	  List<Map<String,Object>> list8=caList.get(7);
 
   	  mav.addObject("caGroup", caGroup);
	  
	  mav.addObject("list1", list1);
	  mav.addObject("list2", list2);
	  mav.addObject("list3", list3);
	  mav.addObject("list4", list4);
	  mav.addObject("list5", list5);
	  mav.addObject("list6", list6);
	  mav.addObject("list7", list7);
	  mav.addObject("list8", list8);
	  
	  List<Map<String, Object>> recaGroup = new ArrayList<Map<String, Object>>(regionCategoryService.selectRegiongroup());
	  List<List<Map<String,Object>>> recaList = new ArrayList<List<Map<String,Object>>>(regionCategoryService.listOfRegionCategory());
	  
	  List<Map<String,Object>> relist1=recaList.get(0);
	  List<Map<String,Object>> relist2=recaList.get(1);
	  List<Map<String,Object>> relist3=recaList.get(2);
	  List<Map<String,Object>> relist4=recaList.get(3);
	  List<Map<String,Object>> relist5=recaList.get(4);
	  List<Map<String,Object>> relist6=recaList.get(5);
	  List<Map<String,Object>> relist7=recaList.get(6);
	  List<Map<String,Object>> relist8=recaList.get(7);
	  List<Map<String,Object>> relist9=recaList.get(8);
	  
	  mav.addObject("recaGroup", recaGroup);
	  
	  mav.addObject("relist1", relist1);
	  mav.addObject("relist2", relist2);
	  mav.addObject("relist3", relist3);
	  mav.addObject("relist4", relist4);
	  mav.addObject("relist5", relist5);
	  mav.addObject("relist6", relist6);
	  mav.addObject("relist7", relist7);
	  mav.addObject("relist8", relist8);
	  mav.addObject("relist9", relist9);
	  
<<<<<<< HEAD
	  
		/*
		 * List<Map<String, Object>> lectureList = new
		 * ArrayList<Map<String,Object>>(lectureService.lectureList());
		 */
	  

	/*
	 * List<Map<String, Object>> lectureList = new
	 * ArrayList<Map<String,Object>>(lectureService.lectureList());
	 * 
	 * return mav;
	 * 
	 * }
	 */
	

	/*public ModelAndView lectureWriteForm1() throws Exception {
         
         List<Map<String, Object>> caGroup = new ArrayList<Map<String, Object>>(categoryService.selectCAgroup());
         List<List<Map<String,Object>>> caList = new ArrayList<List<Map<String,Object>>>(categoryService.listOfCategory());
         
         List<Map<String,Object>> list1=caList.get(0);
         List<Map<String,Object>> list2=caList.get(1);
         List<Map<String,Object>> list3=caList.get(2);
         List<Map<String,Object>> list4=caList.get(3);
         List<Map<String,Object>> list5=caList.get(4);
         List<Map<String,Object>> list6=caList.get(5);
         List<Map<String,Object>> list7=caList.get(6);
         List<Map<String,Object>> list8=caList.get(7);
         
         
         ModelAndView mav= new ModelAndView("/lecture/LectureList");
         
         mav.addObject("caGroup", caGroup);
         
         mav.addObject("list1", list1);
         mav.addObject("list2", list2);
         mav.addObject("list3", list3);
         mav.addObject("list4", list4);
         mav.addObject("list5", list5);
         mav.addObject("list6", list6);
         mav.addObject("list7", list7);
         mav.addObject("list8", list8);
         
         return mav;
      }
	
	@RequestMapping(value="/openLectureList")
	public ModelAndView openLectureList(CommandMap commandMap) throws Exception{
	    List<Map<String, Object>> caGroup = new ArrayList<Map<String, Object>>(categoryService.selectCAgroup());
        List<List<Map<String,Object>>> caList = new ArrayList<List<Map<String,Object>>>(categoryService.listOfCategory());
        
        List<Map<String,Object>> list1=caList.get(0);
        List<Map<String,Object>> list2=caList.get(1);
        List<Map<String,Object>> list3=caList.get(2);
        List<Map<String,Object>> list4=caList.get(3);
        List<Map<String,Object>> list5=caList.get(4);
        List<Map<String,Object>> list6=caList.get(5);
        List<Map<String,Object>> list7=caList.get(6);
        List<Map<String,Object>> list8=caList.get(7);
        
        ModelAndView mav= new ModelAndView("/lecture/LectureList");
        
        mav.addObject("caGroup", caGroup);
        
        mav.addObject("list1", list1);
        mav.addObject("list2", list2);
        mav.addObject("list3", list3);
        mav.addObject("list4", list4);
        mav.addObject("list5", list5);
        mav.addObject("list6", list6);
        mav.addObject("list7", list7);
        mav.addObject("list8", list8);

        System.out.println(caGroup);
        
		return mav;
	}*/
	
	@RequestMapping(value="/openLectureList")
	public ModelAndView openLectureList(CommandMap commandMap) throws Exception{
		 ModelAndView mav= new ModelAndView("/lecture/LectureList");
		 return mav;
	}
	
	@RequestMapping(value="/selectLectureList")
	public ModelAndView selectLectureList (CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<Map<String,Object>> list = lectureService.selectLectureList(commandMap.getMap());
		mav.addObject("list", list);
		
		 if(list.size() > 0){
		        mav.addObject("TOTAL", list.get(0).get("TOTAL_COUNT"));
		    }
		    else{
		        mav.addObject("TOTAL", 0);
		    }
		return mav;
	}
	
	@RequestMapping(value="/LectureDetail")
	public ModelAndView selectLectureDetail(CommandMap commandMap/*, HttpServletRequest request*/) throws Exception {
		//HttpSession session = request.getSession();
		//ModelAndView mav = new ModelAndView("/lecture/LectureDetail?L_NO=" + commandMap.getMap().get("L_NO"));
		ModelAndView mav = new ModelAndView("/lecture/LectureDetail");
		
		Map<String,Object> map = lectureService.selectLectureDetail(commandMap.getMap());
		
		/*commandMap.put("M_NO", session.getAttribute("session_member_no"));
		// M_NO 瑜� �걣�뼱���빞 �닔媛뺤떊泥��쓣 �닃���쓣 �븣 �젣��濡� �꽆湲� �닔 �엳�떎. 洹몃윭�땲 �븘�닔 
		
		commandMap.put("L_NO", session.getAttribute("session_lecture_no"));
		// L_NO �쓣 �걣�뼱�삤硫� �옣�냼/�떆媛꾩쓣 �걣�뼱�삱 �닔 �엳�떎.. �옱�웾�쑝濡�..
		*/
		mav.addObject("map", map);
		System.out.println(map);
		/*List<Map<String, Object>> list = reviewService.reviewList(commandMap.getMap());
		mav.addObject("list", list);*/
		return mav;
	}
	
	@RequestMapping(value="/selectReviewList")
	public ModelAndView reviewList(CommandMap commanMap) throws Exception{
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<Map<String, Object>> list = reviewService.reviewList(commanMap.getMap());
		mav.addObject("list", list);
		
		if(list.size() > 0){
    		mav.addObject("TOTAL", list.get(0).get("TOTAL_COUNT"));
    	}
    	else{
    		mav.addObject("TOTAL", 0);
    	}
		
		return mav;
		
	}
	// �젏�닔 �꽔怨� �썑湲� �옉�꽦 & �썑湲� �닔�젙
	@RequestMapping(value="/insertReview")
	public ModelAndView insertReview(CommandMap commandMap/*, HttpServletRequest request*/) throws Exception{
		/*HttpSession session = request.getSession();
		
		commandMap.put("M_NO", session.getAttribute("session_member_no"));*/
		ModelAndView mav = new ModelAndView("redirect:/lecture/LectureDetail?LR_NO" + commandMap.getMap().get("LR_NO"));
	
		 commandMap.put("LR_SCORE1", commandMap.get("LR_SCORE1"));
		 commandMap.put("LR_SCORE2", commandMap.get("LR_SCORE2"));
		 commandMap.put("LR_SCORE3", commandMap.get("LR_SCORE3"));
		 commandMap.put("LR_SCORE4", commandMap.get("LR_SCORE4"));
		 commandMap.put("LR_SCORE5", commandMap.get("LR_SCORE5"));
		
		 reviewService.avgScore(commandMap.getMap());		// 珥앹꺼 �꽔湲�
		
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
	
		@RequestMapping(value = "/lectureApplyForm")	// �닔媛� �떊泥�
		public ModelAndView lectureApplyForm(CommandMap commandMap) throws Exception {
			
			ModelAndView mav = new ModelAndView("/lecture/LectureApplyForm?M_NO=" + commandMap.getMap().get("M_NO"));
		
			return mav;	
		}	
		
		@RequestMapping(value = "/wish")
		public ModelAndView wish(CommandMap commandMap) throws Exception {
			
			ModelAndView mav = new ModelAndView("/lecture/LectureDetail/wish");
			
			return mav;
		}	
	
		@RequestMapping(value = "/talk")
		public ModelAndView talk(CommandMap commandMap) {
			
			ModelAndView mav = new ModelAndView("/lecture/LectureDetail/talk");
		
			return mav;
		}
}



// �옣�냼, �떆媛� �꽑�깮, 由щ럭 �옉�꽦, 由щ럭 �궘�젣, 由щ럭 �닔�젙, �닔�뾽�떊泥�, 李쒗븯湲�, �떎�떆媛� �넚
