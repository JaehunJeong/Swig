package swig.admin.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import swig.common.CommandMap;


@Controller
public class AdminController {
	Logger log= Logger.getLogger(this.getClass());
	// mypage , 생각해보자
	@Resource(name="adminService") 
	private AdminService adminService;
	//////////////////////////////Index//////////////////////
	@RequestMapping(value="adminForm")
	public ModelAndView openAdminForm(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/adminForm");
		return mav;
	}
	///////////////////////MEMBER///////////////////////////////////
	
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
		/*mav.addObject("list",map.get("list"));*/
		return mav;
	}
	@RequestMapping(value="openUserModify")
	public ModelAndView openUserModify(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("/admin/memberUpdate");
		
		Map<String,Object> map =adminService.selectMemberDetail(commandMap.getMap());
		mav.addObject("map", map.get("map"));
		/*mav.addObject("list",map.get("list"));*/
		return mav;
	}
	@RequestMapping(value="userModify")
	public ModelAndView userModify(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("redirect:userDetail");
		
		adminService.updateMember(commandMap.getMap());
		//프로필 사진 업로드 되면 그떄는 request 보내야함
		mav.addObject("M_NO", commandMap.get("M_NO"));
		
		return mav;
	}
	@RequestMapping(value="dropUser")
	public ModelAndView dropUser(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:openMemberList");
		
		adminService.deleteMember(commandMap.getMap());
		mav.addObject("M_NO", commandMap.get("M_NO"));
		return mav;
	}
	///////////////////////////////Tutor///////////////////////
	@RequestMapping(value="openTutorList")
	public ModelAndView openTutorList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/tutorList");
		return mav;
	}
	@RequestMapping(value="adminTutorList")
	public ModelAndView adminTutorList(CommandMap commandMap) throws Exception
	{
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String,Object>> list = adminService.selectTutorList(commandMap.getMap());
		mv.addObject("list",list);
		if(list.size()>0) {
			mv.addObject("TOTAL",list.get(0).get("TOTAL_COUNT"));
		}
		else {
			mv.addObject("TOTAL",0);
		}
		return mv;
	}
	@RequestMapping(value="adminTutorScert")
	public ModelAndView adminTutorScert(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/tutorScert");
		
		Map<String, Object> map = adminService.selectTutorScert(commandMap.getMap());
		mav.addObject("map",map.get("map"));
		/*mav.addObject("list",map.get("list"));*/
		return mav;
	}
	@RequestMapping(value="adminTutorCerti")
	public ModelAndView adminTutorCerti(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/tutorCerti");
		
		Map<String, Object> map = adminService.selectTutorCerti(commandMap.getMap());
		mav.addObject("map",map.get("map"));
		/*mav.addObject("list",map.get("list"));*/
		return mav;
	}
	@RequestMapping(value="adminTutorDelete")
	public ModelAndView adminTutorDelete(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:openTutorList");
		adminService.deleteTutor(commandMap.getMap());
		
		return mav;
	}
	
	///////////////////////////TutorApply////////////////////////////////
	@RequestMapping(value="openTutorApplyList")
	public ModelAndView openTutorApplyList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/applyList");
		return mav;
	}
	@RequestMapping(value="tutorApplyList")
	public ModelAndView tutorApplyList(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("jsonView");
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
	@RequestMapping(value="tutorApplyScert")
	public ModelAndView tutorApplyScert(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/tutorScert");
		
		Map<String, Object> map = adminService.selectTutorScert(commandMap.getMap());
		mav.addObject("map",map.get("map"));
		/*mav.addObject("list",map.get("list"));*/
		return mav;
	}
	@RequestMapping(value="tutorApplyCerti")
	public ModelAndView tutorApplyCerti(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/tutorCerti");
		
		Map<String, Object> map = adminService.selectTutorCerti(commandMap.getMap());
		mav.addObject("map",map.get("map"));
		/*mav.addObject("list",map.get("list"));*/
		return mav;
	}
	@RequestMapping(value="tutorApplyPermit")
	public ModelAndView tutorApplyPermit(CommandMap commandMap) throws Exception{
	
		ModelAndView mav = new ModelAndView("redirect:openTutorApplyList");
		adminService.permitRequest(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="tutorApplyDeny")
	public ModelAndView tutorApplyCancel(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirec:openTutorApplyList");
		adminService.cancelRequest(commandMap.getMap());
		
		return mav;
	}
	/////////////////////////category//////////////////////////////
	@RequestMapping(value="openCategoryList")
	public ModelAndView openCategoryList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/categoryList");
		return mav;
	}
	@RequestMapping(value="categoryList")
	public ModelAndView categoryList(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("jsonView");
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
	@RequestMapping(value="openAddCategory")
	public ModelAndView openOneAddCategory(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("/admin/insert");
		
		Map<String, Object> map = adminService.selectMaxValue();
		mav.addObject("map1",map.get("map1"));
		mav.addObject("map2",map.get("map2"));
		mav.addObject("map3",map.get("map3"));
		mav.addObject("map4",map.get("map4"));
		mav.addObject("map5",map.get("map5"));
		mav.addObject("map6",map.get("map6"));
		mav.addObject("map7",map.get("map7"));
		mav.addObject("map8",map.get("map8"));
		
		
		System.out.println(map.get("map1"));
		System.out.println(map.get("map2"));
		System.out.println(map.get("map3"));
		System.out.println(map.get("map4"));
		System.out.println(map.get("map5"));
		System.out.println(map.get("map6"));
		System.out.println(map.get("map7"));
		System.out.println(map.get("map8"));
		return mav;
	}
	
	@RequestMapping(value="addCategory")
	public ModelAndView addCategory(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:openCategoryList");
		
		adminService.insertCategory(commandMap.getMap());
		
		return mav;
	}
	@RequestMapping(value="openModifyCategory",method= RequestMethod.GET)
	public ModelAndView openModifyCategory(CommandMap commandMap) throws Exception{
		ModelAndView mav = new ModelAndView("/admin/Modify");
		
		Map<String, Object> map = adminService.selectMaxValue();
		mav.addObject("map1",map.get("map1"));
		mav.addObject("map2",map.get("map2"));
		mav.addObject("map3",map.get("map3"));
		mav.addObject("map4",map.get("map4"));
		mav.addObject("map5",map.get("map5"));
		mav.addObject("map6",map.get("map6"));
		mav.addObject("map7",map.get("map7"));
		mav.addObject("map8",map.get("map8"));
		
		
		System.out.println(map.get("map1"));
		System.out.println(map.get("map2"));
		System.out.println(map.get("map3"));
		System.out.println(map.get("map4"));
		System.out.println(map.get("map5"));
		System.out.println(map.get("map6"));
		System.out.println(map.get("map7"));
		System.out.println(map.get("map8"));
		
		Map<String, Object> map1 = adminService.selectCategoryDetail(commandMap.getMap());
		mav.addObject("map9",map1.get("map"));
		System.out.println(map.get("map9"));
		
		
		return mav;
	}
	@RequestMapping(value="modifyCategory")
	public ModelAndView modifyCategory(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:openCategoryList");//폼 옮길건지 그자리에 서 바로 수정할건지
		
		adminService.modifyCategory(commandMap.getMap());
		//mav.addObject("CA_IDX",commandMap.get("CA_IDX"));
		//mav.addObject("CA_NO", commandMap.get("CA_NO"));
		
		return mav;
		
	}
	@RequestMapping(value="deleteCategory")
	public ModelAndView deleteCategory(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("redirect:openCategoryList");
		adminService.deleteCategory(commandMap.getMap());
		
		mav.addObject("CA_IDX", commandMap.get("CA_IDX"));
		return mav;
	}
	//////////////////////////////////lecture/////////////////////////////////////
	@RequestMapping(value="openLectureList")
	public ModelAndView openLectureList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/adminLecture");
		return mav;
	}
	@RequestMapping(value="lectureList")
	public ModelAndView lectureList(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("jsonView");
		
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
		ModelAndView mav = new ModelAndView("redirect:/admin/adminLecture");
		
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