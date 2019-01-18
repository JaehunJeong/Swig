package swig.admin.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import swig.common.CommandMap;
import swig.paging.Paging;

@Controller
public class AdminController {
	Logger log= Logger.getLogger(this.getClass());
	// mypage , 생각해보자
	@Resource(name="adminService") 
	private AdminService adminService;
	
	@RequestMapping(value="openMemberList")
	public ModelAndView openMemberList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/admin/memberList");
		
		return mv;
	}
	//회원 목록
	@RequestMapping(value="allUserList")
	public ModelAndView allUserList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String,Object>> list = adminService.selectMemberList(commandMap.getMap());
		mv.addObject("list",list);
		if(list.size()>0) {
			mv.addObject("TOTAL",list.get(0).get("TOTAL_COUNT"));
		}
		else {
			mv.addObject("TOTAL",0);
		}
		return mv;
		
	}
	//회원 상세보기
	@RequestMapping(value="userDetail")
	public ModelAndView userDetail(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/memberDetail");
		
		Map<String, Object> map = adminService.selectMemberDetail(commandMap.getMap());
		mav.addObject("map",map.get("map"));
		mav.addObject("list",map.get("list"));
		return mav;
	}
	@RequestMapping(value="dropUser")
	public ModelAndView dropUser(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/memberdetail");
		
		adminService.deleteMember(commandMap.getMap());
		
		return mav;
	}
	@RequestMapping(value="tutorApplyList")
	public ModelAndView tutorApplyList(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/applyList");
		List<Map<String, Object>> applyList = adminService.selectApplyList(commandMap.getMap());
		mav.addObject("applyList", applyList);
		
		if(applyList.size()>0) {
			mav.addObject("TOTAL", applyList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
	}
	@RequestMapping(value="tutorApplyPermit")
	public ModelAndView tutorApplyPermit(CommandMap commandMap) throws Exception{
	
		ModelAndView mav = new ModelAndView("redirect:/admin/applyList");
		adminService.permitRequest(commandMap.getMap());
		
		return mav;
		
		
	}
	@RequestMapping(value="tutorApplyCancel")
	public ModelAndView tutorApplyCancel(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirec:/admin/applyList");
		adminService.cancelRequest(commandMap.getMap());
		
		return mav;
	}
	@RequestMapping(value="adminTutorList")
	public ModelAndView adminTutorList(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/tutorList");
		List<Map<String, Object>> tutorList = adminService.selectTutorList(commandMap.getMap());
		mav.addObject("tutorList", tutorList);
		
		if(tutorList.size()>0) {
			mav.addObject("TOTAL", tutorList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
	}
	@RequestMapping(value="adminTutorDelete")
	public ModelAndView adminTutorDelete(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:/admin/tutorList");
		adminService.deleteTutor(commandMap.getMap());
		
		return mav;
	}
	@RequestMapping(value="categoryList")
	public ModelAndView categoryList(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/categoryList");
		List<Map<String, Object>> categoryList = adminService.selectCategoryList(commandMap.getMap());
		mav.addObject("categoryList", categoryList);
		
		if(categoryList.size()>0) {
			mav.addObject("TOTAL", categoryList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
	}
	@RequestMapping(value="addCategory")
	public ModelAndView addCategory(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:/admin/categoryList");
		
		adminService.insertCategory(commandMap.getMap());
		return mav;
	}

	@RequestMapping(value="modifyCategory")
	public ModelAndView modifyCategory(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/modifyCategory");//폼 옮길건지 그자리에 서 바로 수정할건지
		
		adminService.modifyCategory(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="deleteCategory")
	public ModelAndView deleteCategory(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:/admin/categoryList");
		adminService.deleteCategory(commandMap.getMap());
		
		return mav;
	}
	@RequestMapping(value="lectureList")
	public ModelAndView lectureList(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/lectureList");
		
		List<Map<String, Object>> lectureList = adminService.selectLectureList(commandMap.getMap());
		mav.addObject("lectureList", lectureList);
		
		if(lectureList.size()>0) {
			mav.addObject("TOTAL", lectureList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
		
	}
	@RequestMapping(value="lectureDetail")
	public ModelAndView lectureDetail(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/lectureDetail");
		Map<String,Object> map = adminService.selectLectureDetail(commandMap.getMap());
		
		mav.addObject("map", map.get("map"));
		mav.addObject("list", map.get("list"));
		return mav;
	}
	@RequestMapping(value="lectureOpenModify")
	public ModelAndView lectureOpenModify(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/lectureModify");
		Map<String,Object> map = adminService.selectLectureDetail(commandMap.getMap());
		
		mav.addObject("map", map);
		mav.addObject("list", map.get("list"));
		
		return mav;
	}
	@RequestMapping(value="lectureModify")
	public ModelAndView lectureModify(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:/admin/lectureDetail");
		
		adminService.modifyLecture(commandMap.getMap(), request);
		
		mav.addObject("L_NO", commandMap.get("L_NO"));
		return mav;
	}
	@RequestMapping(value="lectureDelete")
	public ModelAndView lectureDelete(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:/admin/lectureList");
		
		adminService.deleteLecture(commandMap.getMap());
		return mav;
	}
}