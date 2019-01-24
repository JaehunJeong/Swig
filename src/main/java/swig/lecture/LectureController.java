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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import swig.common.CommandMap;
import swig.lecture.review.ReviewService;
import swig.lecture.LectureService;
import swig.lecture.category.CategoryService;
import swig.lecture.category.RegionCategoryService;

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
   
   @Resource(name="categoryService")
   private CategoryService categoryService;
   
   @Resource(name="regionCategoryService")
   private RegionCategoryService regionCategoryService;
   
   /*@Resource(name="reviewService")
   private ReviewService reviewService;*/
   
   @RequestMapping(value="/openLectureList")
   public ModelAndView openLectureList(CommandMap commandMap) throws Exception{
      ModelAndView mav = new ModelAndView("/lecture/lectureList");
      return mav;
   }
   
  /* @RequestMapping(value="/selectLectureList")
   public ModelAndView selectLectureList(CommandMap commandMap) throws Exception {
      
      // ajax 등의 요청을 했을 때, json형식으로 return 받기 위해서 사용
      ModelAndView mav = new ModelAndView("jsonView");
      
      List<Map<String,Object>> list = lectureService.lectureList(commandMap.getMap());
      mav.addObject("list", list);
      
      if(list.size() > 0){
          mv.addObject("TOTAL", list.get(0).get("TOTAL_COUNT"));
       }
       else{
          mv.addObject("TOTAL", 0);
       }
      페이징 시 필요 
      
      return mav;
   }*/
      
  /* @RequestMapping(value="/LectureDetail")
   public ModelAndView selectLectureDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
      HttpSession session = request.getSession();
      ModelAndView mav = new ModelAndView("/lecture/LectureDetail");
         
      Map<String,Object> map = lectureService.selectLectureDetail(commandMap.getMap());
      
      commandMap.put("M_NO", session.getAttribute("session_member_no"));
      mav.addObject("map", map);
      
      List<Map<String, Object>> list = reviewService.selectReview(commandMap.getMap());
      mav.addObject("list", list);
      return mav;
   }*/
   
   /*@RequestMapping(value="/insertReview")
   public ModelAndView insertReview(CommandMap commandMap) throws Exception{
      ModelAndView mav = new ModelAndView("redirect:/lecture/LectureDetail?LR_NO" + commandMap.getMap().get("LR_NO"));
   
       commandMap.put("LR_SCORE1", commandMap.get("LR_SCORE1-input"));
       commandMap.put("LR_SCORE2", commandMap.get("LR_SCORE2-input"));
       commandMap.put("LR_SCORE3", commandMap.get("LR_SCORE3-input"));
       commandMap.put("LR_SCORE4", commandMap.get("LR_SCORE4-input"));
       commandMap.put("LR_SCORE5", commandMap.get("LR_SCORE5-input"));
      
       reviewService.avgScore(commandMap.getMap());      // 총첨 넣기
       reviewService.insertReview(commandMap.getMap());
      
      if(commandMap.get("LR_NO") == null || "".equals(commandMap.get("LR_NO"))) {
         reviewService.insertReview(commandMap.getMap());
      } else {
         reviewService.updateReview(commandMap.getMap());
      }
      return mav;
   }*/
   
  /* @RequestMapping(value="/deleteReview")
   public ModelAndView deleteReview(CommandMap commandMap) throws Exception{
      ModelAndView mav = new ModelAndView("redirect:/lecture/LectureDetail?LR_NO=" + commandMap.getMap().get("LR_NO"));
      reviewService.deleteReview(commandMap.getMap());
         
      return mav;
   }
   
      @RequestMapping(value = "/lectureApplyForm")
      public ModelAndView lectureApplyForm(CommandMap commandMap) throws Exception {
         
         ModelAndView mav = new ModelAndView("/lecture/lectureApplyForm");
      
         return mav;   
      }   
      
      @RequestMapping(value = "/wish")
      public ModelAndView wish(CommandMap commandMap) throws Exception {
         
         ModelAndView mav = new ModelAndView("/lecture/wish");
         
         return mav;
      }   
   
      @RequestMapping(value = "/talk")
      public ModelAndView talk(CommandMap commandMap) {
         
         ModelAndView mav = new ModelAndView("/lecture/talk");
      
         return mav;
      }
      */
      @RequestMapping(value="/lectureWrite1")
      public ModelAndView lectureWriteForm1() throws Exception {
    	  
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
    	  
    	  
    	  ModelAndView mav= new ModelAndView("lecture/lectureWrite1");
    	  
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
      
      @RequestMapping(value="/lectureWrite2")
      public ModelAndView lectureWriteForm2() throws Exception{
    	  ModelAndView mav= new ModelAndView("lecture/lectureWrite2");
    	  
    	  return mav;
      }
      
      @RequestMapping(value="/lectureWrite3")
      public ModelAndView lectureWriteForm3() throws Exception{
    	  ModelAndView mav= new ModelAndView("lecture/lectureWrite3");
    	  
    	  return mav;
      }
      
      @RequestMapping(value="/lectureWrite4")
      public ModelAndView lectureWriteForm4() throws Exception {
    	  
    	  List<Map<String, Object>> recaGroup = new ArrayList<Map<String, Object>>(regionCategoryService.selectRegiongroup());
    	  List<List<Map<String,Object>>> caList = new ArrayList<List<Map<String,Object>>>(regionCategoryService.listOfRegionCategory());
    	  
    	  List<Map<String,Object>> list1=caList.get(0);
    	  List<Map<String,Object>> list2=caList.get(1);
    	  List<Map<String,Object>> list3=caList.get(2);
    	  List<Map<String,Object>> list4=caList.get(3);
    	  List<Map<String,Object>> list5=caList.get(4);
    	  List<Map<String,Object>> list6=caList.get(5);
    	  List<Map<String,Object>> list7=caList.get(6);
    	  List<Map<String,Object>> list8=caList.get(7);
    	  List<Map<String,Object>> list9=caList.get(8);
    	  
    	  ModelAndView mav= new ModelAndView("lecture/lectureWrite4");
    	  
    	  mav.addObject("recaGroup", recaGroup);
    	  
    	  mav.addObject("list1", list1);
    	  mav.addObject("list2", list2);
    	  mav.addObject("list3", list3);
    	  mav.addObject("list4", list4);
    	  mav.addObject("list5", list5);
    	  mav.addObject("list6", list6);
    	  mav.addObject("list7", list7);
    	  mav.addObject("list8", list8);
    	  mav.addObject("list9", list9);
    	  
    	  return mav;
      }
      
    @RequestMapping(value="/lectureInsert1")
      public ModelAndView LectureInsert1(@RequestParam(value="clfile") MultipartFile[] clFiles, 
    		  						     @RequestParam(value="file") MultipartFile[] slFiles, CommandMap commandMap) throws Exception {
    	  ModelAndView mav=new ModelAndView("redirect:/lectureWrite2");
    	  
    	  lectureService.insertLecture1(commandMap.getMap(), clFiles, slFiles);
    	  
    	  return mav;
      }
      
      @RequestMapping(value="/lectureInsert2")
      public ModelAndView LectureInsert2(@RequestParam(value="clFile") MultipartFile[] clFiles, CommandMap commandMap) throws Exception {
    	  ModelAndView mav=new ModelAndView("redirect:/lectureWrite3");
    	  
    	  lectureService.insertLecture2(commandMap.getMap(), clFiles);
    	  
    	  return mav;
      }
      
      @RequestMapping(value="/lectureInsert3")
      public ModelAndView LectureInsert3(CommandMap commandMap) throws Exception {
    	  ModelAndView mav=new ModelAndView("redirect:/lectureWrite4");
    	  
    	  lectureService.insertLecture3(commandMap.getMap());
    	  
    	  return mav;
      }
      
      @RequestMapping(value="/lectureInsert4")
      public ModelAndView LectureInsert4(CommandMap commandMap) throws Exception {
    	  ModelAndView mav=new ModelAndView("redirect:/lectureWrite4");
    	  commandMap.get("");
    	  commandMap.get("");
    	  commandMap.get("");
    	  
    	  lectureService.insertLecture4(commandMap.getMap());
    	  
    	  return mav;
      }
      
}



// 장소, 시간 선택, 리뷰 작성, 리뷰 삭제, 리뷰 수정, 수업신청, 찜하기, 실시간 톡