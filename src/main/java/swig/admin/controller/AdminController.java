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

import swig.RestApi.PayService;
import swig.common.CommandMap;


@Controller
public class AdminController {
	Logger log= Logger.getLogger(this.getClass());
	// mypage , 생각해보자
	@Resource(name="adminService") 
	private AdminService adminService;
	//////////////////////////////Index//////////////////////
	@RequestMapping(value="adminForm")
	@SuppressWarnings("null")
	public ModelAndView openAdminForm(CommandMap commandMap)throws ArithmeticException, Exception{
		ModelAndView mav = new ModelAndView("/admin/adminForm");
		Map<String, Object> map = adminService.selectDateValue();
		mav.addObject("map1",map.get("map1"));//1
		mav.addObject("map2",map.get("map2"));//2
		mav.addObject("map3",map.get("map3"));//12
		mav.addObject("map4",map.get("map4"));//11
		mav.addObject("map5",map.get("map5"));//10
		Map<String, Object> map1 = adminService.selectLectureValue();
		mav.addObject("lectureMap1",map1.get("lectureMap1"));//1
		mav.addObject("lectureMap2",map1.get("lectureMap2"));//2
		mav.addObject("lectureMap3",map1.get("lectureMap3"));//12
		mav.addObject("lectureMap4",map1.get("lectureMap4"));//11
		mav.addObject("lectureMap5",map1.get("lectureMap5"));//10
		Map<String, Object> map2 = adminService.selectTutorValue();
		mav.addObject("tutorMap1",map2.get("tutorMap1"));//1
		mav.addObject("tutorMap2",map2.get("tutorMap2"));//2
		mav.addObject("tutorMap3",map2.get("tutorMap3"));//12
		mav.addObject("tutorMap4",map2.get("tutorMap4"));//11
		mav.addObject("tutorMap5",map2.get("tutorMap5"));//10
		Map<String, Object> map3 = adminService.selectPayValue();
		mav.addObject("payMap1",map3.get("payMap1"));//1
		mav.addObject("payMap2",map3.get("payMap2"));//2
		mav.addObject("payMap3",map3.get("payMap3"));//12
		mav.addObject("payMap4",map3.get("payMap4"));//11
		mav.addObject("payMap5",map3.get("payMap5"));//10
		Map<String, Object> map4 = adminService.selectCostValue();
		mav.addObject("costMap1",map4.get("costMap1"));//1
		mav.addObject("costMap2",map4.get("costMap2"));//2
		mav.addObject("costMap3",map4.get("costMap3"));//12
		mav.addObject("costMap4",map4.get("costMap4"));//11
		mav.addObject("costMap5",map4.get("costMap5"));//10
		//2월
		Map<String, Object> map5 = adminService.selectCaValue();
		int camp1 = (int) map5.get("caMap1");
		int camp2 = (int) map5.get("caMap2");
		int camp3 = (int) map5.get("caMap3");
		int camp4 = (int) map5.get("caMap4");
		int camp = (int) map5.get("caMap");
		int febcom = (camp1/camp) *100 ;
		int feblang = (camp2/camp) *100 ;
		int feblife = (camp3/camp) *100 ;
		int febother = (camp4/camp) *100 ;
		mav.addObject("caMap1",map5.get("caMap1"));//1
		mav.addObject("caMap2",map5.get("caMap2"));//2
		mav.addObject("caMap3",map5.get("caMap3"));//12
		mav.addObject("caMap4",map5.get("caMap4"));//11
		mav.addObject("caMap",map5.get("caMap"));//11
		mav.addObject("camp1",febcom);
		mav.addObject("camp2",feblang);
		mav.addObject("camp3",feblife);
		mav.addObject("camp4",febother);
		//1월
		Map<String, Object> map6 = adminService.selectCaJanValue();
		//int jancamp1 = (int) map6.get("caJanMap1");
		//int jancamp2 = (int) map6.get("caJanMap2");
		//int jancamp3 = (int) map6.get("caJanMap3");
		//int jancamp4 = (int) map6.get("caJanMap4");
		//int jancamp = (int) map6.get("caJanMap");
		//int jancom = (jancamp1/jancamp) *100 ;
		//int janlang = (jancamp2/jancamp) *100 ;
		//int janlife = (jancamp3/jancamp) *100 ;
		//int janother = (jancamp4/jancamp) *100 ;
		//mav.addObject("jancamp1",jancom);
		//mav.addObject("jancamp2",janlang);
		//mav.addObject("jancamp3",janlife);
		//mav.addObject("jancamp4",janother);
		mav.addObject("caJanMap1",map6.get("caJanMap1"));//1
		mav.addObject("caJanMap2",map6.get("caJanMap2"));//2
		mav.addObject("caJanMap3",map6.get("caJanMap3"));//12
		mav.addObject("caJanMap4",map6.get("caJanMap4"));//11
		mav.addObject("caJanMap",map6.get("caJanMap"));//11
		
		//12월
		Map<String, Object> map7 = adminService.selectCaDecValue();
		//int deccamp1 = (int) map7.get("caDecMap1");
		//int deccamp2 = (int) map7.get("caDecMap2");
		//int deccamp3 = (int) map7.get("caDecMap3");
		//int deccamp4 = (int) map7.get("caDecMap4");
		//int deccamp = (int) map7.get("caDecMap");
		//int deccom = (deccamp1/deccamp) *100 ;
		//int declang = (deccamp2/deccamp) *100 ;
		//int declife = (deccamp3/deccamp) *100 ;
		//int decother = (deccamp4/deccamp) *100 ;
		//mav.addObject("deccamp1",deccom);
		//mav.addObject("deccamp2",declang);
		//mav.addObject("deccamp3",declife);
		//mav.addObject("deccamp4",decother);
		mav.addObject("caDecMap1",map7.get("caDecMap1"));//1
		mav.addObject("caDecMap2",map7.get("caDecMap2"));//2
		mav.addObject("caDecMap3",map7.get("caDecMap3"));//12
		mav.addObject("caDecMap4",map7.get("caDecMap4"));//11
		mav.addObject("caDecMap",map7.get("caDecMap"));//11
		
		//11월
		Map<String, Object> map8 = adminService.selectCaNovValue();
		//int novcamp1 = (int) map8.get("caNovMap1");
		//int novcamp2 = (int) map8.get("caNovMap2");
		//int novcamp3 = (int) map8.get("caNovMap3");
		//int novcamp4 = (int) map8.get("caNovMap4");
		//int novcamp = (int) map8.get("caNovMap");
		//int novcom = (novcamp1/novcamp) *100 ;
		//int novlang = (novcamp2/novcamp) *100 ;
		//int novlife = (novcamp3/novcamp) *100 ;
		//int novother = (novcamp4/novcamp) *100 ;
		//mav.addObject("novcamp1",novcom);
		//mav.addObject("novcamp2",novlang);
		//mav.addObject("novcamp3",novlife);
		//mav.addObject("novcamp4",novother);
		mav.addObject("caNovMap1",map8.get("caNovMap1"));//1
		mav.addObject("caNovMap2",map8.get("caNovMap2"));//2
		mav.addObject("caNovMap3",map8.get("caNovMap3"));//12
		mav.addObject("caNovMap4",map8.get("caNovMap4"));//11
		mav.addObject("caNovMap",map8.get("caNovMap"));//11
		
		//10월
		Map<String, Object> map9 = adminService.selectCaOctValue();
		//int octcamp1 = (int) map9.get("caOctMap1");
		//int octcamp2 = (int) map9.get("caOctMap2");
		//int octcamp3 = (int) map9.get("caOctMap3");
		//int octcamp4 = (int) map9.get("caOctMap4");
		//int octcamp = (int) map9.get("caOctMap");
		//int octcom = (octcamp1/octcamp) *100 ;
		//int octlang = (octcamp2/octcamp) *100 ;
		//int octlife = (octcamp3/octcamp) *100 ;
		//int octother = (octcamp4/octcamp) *100 ;
		//mav.addObject("octcamp1",octcom);
		//mav.addObject("octcamp2",octlang);
		//mav.addObject("octcamp3",octlife);
		//mav.addObject("octcamp4",octother);
		mav.addObject("caOctMap1",map9.get("caOctMap1"));//1
		mav.addObject("caOctMap2",map9.get("caOctMap2"));//2
		mav.addObject("caOctMap3",map9.get("caOctMap3"));//12
		mav.addObject("caOctMap4",map9.get("caOctMap4"));//11
		mav.addObject("caOctMap",map9.get("caOctMap"));//11
		
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
		//List<Map<String,Object>> list2 = adminService.selectTutorChkList(commandMap.getMap());
		List<Map<String,Object>> list = adminService.selectTutorList(commandMap.getMap());
		//System.out.println(list2);
		//list.add((Map<String, Object>) list2);
		mv.addObject("list",list);
		System.out.println(list);
		if(list.size()>0) {
			mv.addObject("TOTAL",list.get(0).get("TOTAL_COUNT"));
		}
		else {
			mv.addObject("TOTAL",0);
		}
		return mv;
	}
	@RequestMapping(value="adminTutorDetail")
	public ModelAndView adminTutorDetail(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/tutorDetail");
		
		Map<String, Object> map = adminService.selectTutorDetail(commandMap.getMap());
		mav.addObject("map",map.get("map"));
		/*mav.addObject("list",map.get("list"));*/
		return mav;
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
	@RequestMapping(value="permitId")
	public ModelAndView permitId(CommandMap commandMap) throws Exception{
	
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail");
		adminService.permitId(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="rejectId")
	public ModelAndView rejectId(CommandMap commandMap) throws Exception{
	
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail");
		adminService.rejectId(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="permitCol")
	public ModelAndView permitCol(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.permitCol(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="rejectCol")
	public ModelAndView rejectCol(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.rejectCol(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="permitCerti1")
	public ModelAndView permitCerti1(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.permitCerti1(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="rejectCerti1")
	public ModelAndView rejectCerti1(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.rejectCerti1(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="permitCerti2")
	public ModelAndView permitCerti2(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.permitCerti2(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="rejectCerti2")
	public ModelAndView rejectCerti2(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.rejectCerti2(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="permitCerti3")
	public ModelAndView permitCerti3(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.permitCerti3(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="rejectCerti3")
	public ModelAndView rejectCerti3(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.rejectCerti3(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="permitCerti4")
	public ModelAndView permitCerti4(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.permitCerti4(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="rejectCerti4")
	public ModelAndView rejectCerti4(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.rejectCerti4(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="permitCerti5")
	public ModelAndView permitCerti5(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.permitCerti5(commandMap.getMap());
		
		return mav;
		
	}
	@RequestMapping(value="rejectCerti5")
	public ModelAndView rejectCerti5(CommandMap commandMap, HttpServletRequest request) throws Exception{
		String T_NO = request.getParameter("T_NO");
		ModelAndView mav = new ModelAndView("redirect:adminTutorDetail?T_NO="+T_NO+"");
		adminService.rejectCerti5(commandMap.getMap());
		
		return mav;
		
	}
	///////////////////////////TutorApply////////////////////////////////
	@RequestMapping(value="openTutorApplyList")
	public ModelAndView openTutorApplyList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/tutorApplyList");
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
	@RequestMapping(value="adminTutorApplyDetail")
	public ModelAndView adminTutorApplyDetail(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/tutorApplyDetail");
		
		Map<String, Object> map = adminService.selectTutorDetail(commandMap.getMap());
		mav.addObject("map",map.get("map"));
		/*mav.addObject("list",map.get("list"));*/
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
		/*
		 * mav.addObject("map5",map.get("map5")); mav.addObject("map6",map.get("map6"));
		 * mav.addObject("map7",map.get("map7")); mav.addObject("map8",map.get("map8"));
		 */
		
		
		System.out.println(map.get("map1"));
		System.out.println(map.get("map2"));
		System.out.println(map.get("map3"));
		System.out.println(map.get("map4"));
		/*
		 * System.out.println(map.get("map5")); System.out.println(map.get("map6"));
		 * System.out.println(map.get("map7")); System.out.println(map.get("map8"));
		 */
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
		/*
		 * mav.addObject("map5",map.get("map5")); mav.addObject("map6",map.get("map6"));
		 * mav.addObject("map7",map.get("map7")); mav.addObject("map8",map.get("map8"));
		 */
		
		
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
		//String CA_IDX = request.getParameter("CA_IDX");
		//commandMap.put("CA_IDX",CA_IDX);
		ModelAndView mav = new ModelAndView("redirect:openCategoryList");
		
		adminService.deleteCategory(commandMap.getMap());
		
		//mav.addObject("CA_IDX", CA_IDX);
		return mav;
	}
	//////////////////////////////////lecture/////////////////////////////////////
	@RequestMapping(value="openLectureList")
	public ModelAndView openLectureList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/adminLecture");
		return mav;
	}
	@RequestMapping(value="openLectureSellingList")
	public ModelAndView openLectureSellingList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/adminLectureSelling");
		return mav;
	}
	@RequestMapping(value="openLectureDeletedList")
	public ModelAndView openLectureDeletedList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/adminLectureDeleted");
		return mav;
	}
	@RequestMapping(value="openLectureSoldoutList")
	public ModelAndView openLectureSoldoutList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/adminLectureSoldout");
		return mav;
	}
	@RequestMapping(value="lectureList")
	public ModelAndView lectureList(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		String L_CHK = request.getParameter("L_CHK");
		commandMap.put("L_CHK",L_CHK);
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
	@RequestMapping(value="computerList")
	public ModelAndView computerList(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		String L_CHK = request.getParameter("L_CHK");
		commandMap.put("L_CHK",L_CHK);
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<Map<String, Object>> lectureList = adminService.selectComputerList(commandMap.getMap());
		mav.addObject("lectureList", lectureList);
		
		if(lectureList.size()>0) {
			mav.addObject("TOTAL", lectureList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
		
	}
	@RequestMapping(value="languageList")
	public ModelAndView languageList(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		String L_CHK = request.getParameter("L_CHK");
		commandMap.put("L_CHK",L_CHK);
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<Map<String, Object>> lectureList = adminService.selectLanguageList(commandMap.getMap());
		mav.addObject("lectureList", lectureList);
		
		if(lectureList.size()>0) {
			mav.addObject("TOTAL", lectureList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
		
	}
	@RequestMapping(value="lifeList")
	public ModelAndView lifeList(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		String L_CHK = request.getParameter("L_CHK");
		commandMap.put("L_CHK",L_CHK);
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<Map<String, Object>> lectureList = adminService.selectLifeList(commandMap.getMap());
		mav.addObject("lectureList", lectureList);
		
		if(lectureList.size()>0) {
			mav.addObject("TOTAL", lectureList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
		
	}
	@RequestMapping(value="etcList")
	public ModelAndView etcList(CommandMap commandMap, HttpServletRequest request) throws Exception
	{
		String L_CHK = request.getParameter("L_CHK");
		commandMap.put("L_CHK",L_CHK);
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<Map<String, Object>> lectureList = adminService.selectEtcList(commandMap.getMap());
		mav.addObject("lectureList", lectureList);
		
		if(lectureList.size()>0) {
			mav.addObject("TOTAL", lectureList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
		
	}

	
	@RequestMapping(value="adminLectureDetail")
	public ModelAndView adminLecture(CommandMap commandMap)throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/lectureDetail");
		
		Map<String, Object> map = adminService.selectLectureDetail(commandMap.getMap());
		mav.addObject("map",map.get("map"));
		/*mav.addObject("list",map.get("list"));*/
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
	/////////////////////////////////////////////////
	@RequestMapping(value="openApproveList")
	public ModelAndView openApproveList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/adminApprove");
		return mav;
	}
	@RequestMapping(value="approveList")
	public ModelAndView approveList(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<Map<String, Object>> kakaoList = adminService.approveList(commandMap.getMap());
		mav.addObject("kakaoList", kakaoList);
		
		if(kakaoList.size()>0) {
			mav.addObject("TOTAL", kakaoList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
		
	}
	@RequestMapping(value="openRefundList")
	public ModelAndView openRefundList(CommandMap commandMap)throws Exception{
		ModelAndView mav = new ModelAndView("/admin/adminRefund");
		return mav;
	}
	@RequestMapping(value="refundList")
	public ModelAndView refundList(CommandMap commandMap) throws Exception
	{
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<Map<String, Object>> kakaoList = adminService.refundList(commandMap.getMap());
		mav.addObject("kakaoList", kakaoList);
		
		if(kakaoList.size()>0) {
			mav.addObject("TOTAL", kakaoList.get(0).get("TOTAL_COUNT"));
		}
		else {
			mav.addObject("TOTAL", 0);
		}
		return mav;
		
	}
}