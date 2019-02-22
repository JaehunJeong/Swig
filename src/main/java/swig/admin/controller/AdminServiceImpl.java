package swig.admin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import swig.common.FileUtils;
@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	Logger log= Logger.getLogger(this.getClass());
	
	@Resource(name="adminDAO")
	private AdminDAO adminDAO;
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Override
	public Map<String, Object> selectDateValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	= new HashMap<String,Object>();
		
		str = adminDAO.selectJanValue();
		map.put("map1", str);
		str = adminDAO.selectFebValue();
		map.put("map2", str);
		str = adminDAO.selectDecValue();
		map.put("map3", str);
		str = adminDAO.selectNovValue();
		map.put("map4", str);
		str = adminDAO.selectOctValue();
		map.put("map5", str);
		
		return map;
	}
	@Override
	public Map<String, Object> selectLectureValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectJanLectureValue();
		map.put("lectureMap1", str);
		str = adminDAO.selectFebLectureValue();
		map.put("lectureMap2", str);
		str = adminDAO.selectDecLectureValue();
		map.put("lectureMap3", str);
		str = adminDAO.selectNovLectureValue();
		map.put("lectureMap4", str);
		str = adminDAO.selectOctLectureValue();
		map.put("lectureMap5", str);
		return map;
	}
	@Override
	public Map<String, Object> selectTutorValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectJanTutorValue();
		map.put("tutorMap1", str);
		str = adminDAO.selectFebTutorValue();
		map.put("tutorMap2", str);
		str = adminDAO.selectDecTutorValue();
		map.put("tutorMap3", str);
		str = adminDAO.selectNovTutorValue();
		map.put("tutorMap4", str);
		str = adminDAO.selectOctTutorValue();
		map.put("tutorMap5", str);
		return map;
	}
	@Override
	public Map<String, Object> selectPayValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectJanPayValue();
		map.put("payMap1", str);
		str = adminDAO.selectFebPayValue();
		map.put("payMap2", str);
		str = adminDAO.selectDecPayValue();
		map.put("payMap3", str);
		str = adminDAO.selectNovPayValue();
		map.put("payMap4", str);
		str = adminDAO.selectOctPayValue();
		map.put("payMap5", str);
		return map;
	}
	@Override
	public Map<String, Object> selectCostValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectJanCostValue();
		map.put("costMap1", str);
		str = adminDAO.selectFebCostValue();
		map.put("costMap2", str);
		str = adminDAO.selectDecCostValue();
		map.put("costMap3", str);
		str = adminDAO.selectNovCostValue();
		map.put("costMap4", str);
		str = adminDAO.selectOctCostValue();
		map.put("costMap5", str);
		return map;
	}
	@Override
	public Map<String, Object> selectCaValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectCa1Value();
		map.put("caMap1", str);
		str = adminDAO.selectCa2Value();
		map.put("caMap2", str);
		str = adminDAO.selectCa3Value();
		map.put("caMap3", str);
		str = adminDAO.selectCa4Value();
		map.put("caMap4", str);
		str = adminDAO.selectCaValue();
		map.put("caMap", str);
		return map;
	}
	@Override
	public Map<String, Object> selectCaJanValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectJanCa1Value();
		map.put("caJanMap1", str);
		str = adminDAO.selectJanCa2Value();
		map.put("caJanMap2", str);
		str = adminDAO.selectJanCa3Value();
		map.put("caJanMap3", str);
		str = adminDAO.selectJanCa4Value();
		map.put("caJanMap4", str);
		str = adminDAO.selectJanCaValue();
		map.put("caJanMap", str);
		return map;
	}
	@Override
	public Map<String, Object> selectCaDecValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectDecCa1Value();
		map.put("caDecMap1", str);
		str = adminDAO.selectDecCa2Value();
		map.put("caDecMap2", str);
		str = adminDAO.selectDecCa3Value();
		map.put("caDecMap3", str);
		str = adminDAO.selectDecCa4Value();
		map.put("caDecMap4", str);
		str = adminDAO.selectDecCaValue();
		map.put("caDecMap", str);
		return map;
	}
	@Override
	public Map<String, Object> selectCaNovValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectNovCa1Value();
		map.put("caNovMap1", str);
		str = adminDAO.selectNovCa2Value();
		map.put("caNovMap2", str);
		str = adminDAO.selectNovCa3Value();
		map.put("caNovMap3", str);
		str = adminDAO.selectNovCa4Value();
		map.put("caNovMap4", str);
		str = adminDAO.selectNovCaValue();
		map.put("caNovMap", str);
		return map;
	}
	@Override
	public Map<String, Object> selectCaOctValue() throws Exception {
		// TODO Auto-generated method stub
		int str;
		Map<String,Object> map	=new HashMap<String,Object>();
		str = adminDAO.selectOctCa1Value();
		map.put("caOctMap1", str);
		str = adminDAO.selectOctCa2Value();
		map.put("caOctMap2", str);
		str = adminDAO.selectOctCa3Value();
		map.put("caOctMap3", str);
		str = adminDAO.selectOctCa4Value();
		map.put("caOctMap4", str);
		str = adminDAO.selectOctCaValue();
		map.put("caOctMap", str);
		return map;
	}
	//////////////////////////////////////////
	@Override
	public List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectMemberList(map);
	}
	@Override
	public Map<String, Object> selectMemberDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> resultMap = new HashMap<String,Object>();
		Map<String,Object> tempMap = adminDAO.selectMemberDetail(map);
		resultMap.put("map", tempMap);
		
		/*List<Map<String,Object>> list = adminDAO.selectMemberFile(map);
		resultMap.put("list", list);*/
		return resultMap;
	}
	
	@Override
	public void updateMember(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.updateMember(map);
	}
	@Override
	public void updateMemberFile(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.deleteFileList(map);
		List<Map<String,Object>> list = fileUtils.parseUpdateFileInfo(map,request);
		Map<String,Object> tempMap = null;
		for(int i=0, size=list.size(); i<size; i++) {
			tempMap = list.get(i);
			if(tempMap.get("IS_NEW").equals("Y")) {
				adminDAO.insertFile(tempMap);
			}
			else {
				adminDAO.updateFile(tempMap);
			}
		}
	}
	@Override
	public void deleteMember(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.deleteMember(map);
	}
	///////////////////////////////////////////////////////////////////////////////////
	@Override
	public List<Map<String, Object>> selectApplyList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return adminDAO.selectApplyList(map);
	}
	
	@Override
	public void permitRequest(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.permitRequest(map);
	}
	@Override
	public void cancelRequest(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.cancelRequest(map);
	}
	///////////////////////////////////////////////////////////////////////////
	@Override
	public List<Map<String, Object>> selectTutorList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectTutorList(map);
	}
	@Override
	public List<Map<String, Object>> selectTutorChkList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectTutorChkList(map);
	}
	@Override
	public void deleteTutor(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.deleteTutor(map);
	}
	@Override
	public Map<String, Object> selectTutorDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> resultMap = new HashMap<String,Object>();
		Map<String,Object> tempMap = adminDAO.selectTutorDetail(map);
		resultMap.put("map", tempMap);
		
		/*List<Map<String,Object>> list = adminDAO.selectMemberFile(map);
		resultMap.put("list", list);*/
		return resultMap;
	}
	@Override//파일 업로드에대한 변한으로 가게되면 바꿔야됭
	public Map<String, Object> selectTutorScert(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> resultMap = new HashMap<String,Object>();
		Map<String,Object> tempMap = adminDAO.selectTutorScert(map);
		resultMap.put("map", tempMap);
		
		/*List<Map<String,Object>> list = adminDAO.selectMemberFile(map);
		resultMap.put("list", list);*/
		return resultMap;
	}
	@Override//파일 업로드에대한 변한으로 가게되면 바꿔야됭
	public Map<String, Object> selectTutorCerti(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> resultMap = new HashMap<String,Object>();
		Map<String,Object> tempMap = adminDAO.selectTutorCerti(map);
		resultMap.put("map", tempMap);
		
		/*List<Map<String,Object>> list = adminDAO.selectMemberFile(map);
		resultMap.put("list", list);*/
		return resultMap;
	}
	@Override
	public void permitId(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.permitId(map);
	}
	@Override
	public void rejectId(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.rejectId(map);
	}
	@Override
	public void permitCol(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.permitCol(map);
	}
	@Override
	public void rejectCol(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.rejectCol(map);
	}
	@Override
	public void permitCerti1(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.permitCerti1(map);
	}
	@Override
	public void rejectCerti1(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.rejectCerti1(map);
	}
	@Override
	public void permitCerti2(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.permitCerti2(map);
	}
	@Override
	public void rejectCerti2(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.rejectCerti2(map);
	}
	@Override
	public void permitCerti3(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.permitCerti3(map);
	}
	@Override
	public void rejectCerti3(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.rejectCerti3(map);
	}
	@Override
	public void permitCerti4(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.permitCerti4(map);
	}
	@Override
	public void rejectCerti4(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.rejectCerti4(map);
	}
	@Override
	public void permitCerti5(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.permitCerti5(map);
	}
	@Override
	public void rejectCerti5(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.rejectCerti5(map);
	}
	///////////////////////////////////////////////////////////////////////////
	@Override
	public List<Map<String, Object>> selectCategoryList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectCategoryList(map);
	}
	@Override
	public void insertCategory(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		adminDAO.insertCategory(map);
		
	}
	
	@Override
	public Map<String,Object> selectMaxValue() throws Exception {
		// TODO Auto-generated method stub
		String str;
		String[] array;
		String ca_no;
		int big;
		//List<Map<String,Object>> maxNum =new ArrayList<Map<String,Object>>();
		Map<String,Object> map	= new HashMap<String,Object>();
		str = adminDAO.selectOneMaxValue();
		array = ((String) str).split("-");
		
		big = Integer.parseInt(array[1]) + 1;
		
		str = String.valueOf(big);
		ca_no = array[0] + "-" + str;
		map.put("map1", ca_no);
		////
		str = adminDAO.selectTwoMaxValue();
		array = ((String) str).split("-");
		
		big = Integer.parseInt(array[1]) + 1;
		
		str = String.valueOf(big);
		ca_no = array[0] + "-" + str;
		map.put("map2", ca_no);
		//////////
		str = adminDAO.selectThreeMaxValue();
		array = ((String) str).split("-");
		
		big = Integer.parseInt(array[1]) + 1;
		
		str = String.valueOf(big);
		ca_no = array[0] + "-" + str;
		map.put("map3", ca_no);
		///
		str = adminDAO.selectFourMaxValue();
		array = ((String) str).split("-");
		
		big = Integer.parseInt(array[1]) + 1;
		
		str = String.valueOf(big);
		ca_no = array[0] + "-" + str;
		map.put("map4", ca_no);
		////
		/*
		 * str = adminDAO.selectFiveMaxValue(); array = ((String) str).split("-");
		 * 
		 * big = Integer.parseInt(array[1]) + 1;
		 * 
		 * str = String.valueOf(big); ca_no = array[0] + "-" + str; map.put("map5",
		 * ca_no); /// str = adminDAO.selectSixMaxValue(); array = ((String)
		 * str).split("-");
		 * 
		 * big = Integer.parseInt(array[1]) + 1;
		 * 
		 * str = String.valueOf(big); ca_no = array[0] + "-" + str; map.put("map6",
		 * ca_no); //// str = adminDAO.selectSevenMaxValue(); array = ((String)
		 * str).split("-");
		 * 
		 * big = Integer.parseInt(array[1]) + 1;
		 * 
		 * str = String.valueOf(big); ca_no = array[0] + "-" + str; map.put("map7",
		 * ca_no); //// str = adminDAO.selectEightMaxValue(); array = ((String)
		 * str).split("-");
		 * 
		 * big = Integer.parseInt(array[1]) + 1;
		 * 
		 * str = String.valueOf(big); ca_no = array[0] + "-" + str; map.put("map8",
		 * ca_no);
		 */
		//map1.put("map", ca_no);
		//System.out.println(map1.get("CA_NO"));
		//return map1;
		//insertCategory(map);
		System.out.println(map.get("map1"));
		System.out.println(map.get("map2"));
		System.out.println(map.get("map3"));
		System.out.println(map.get("map4"));
		System.out.println(map.get("map5"));
		System.out.println(map.get("map6"));
		System.out.println(map.get("map7"));
		System.out.println(map.get("map8"));
		return map;
	}
	@Override
	public Map<String, Object> selectCategoryDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> resultMap = new HashMap<String,Object>();
		Map<String,Object> tempMap = adminDAO.selectCategoryDetail(map);
		resultMap.put("map", tempMap);
		return resultMap;
	}
	@Override
	public void deleteCategory(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.deleteCategory(map);
		adminDAO.updateLectureChk(map);
		
	}@Override
	public void modifyCategory(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.modifyCategory(map);
	}
	///////////////////////////////////////////////////////////////////////
	@Override
	public List<Map<String, Object>> selectLectureList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectLectureList(map);
	}
	@Override
	public List<Map<String, Object>> selectComputerList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectComputerList(map);
	}
	@Override
	public List<Map<String, Object>> selectLanguageList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectLanguageList(map);
	}
	@Override
	public List<Map<String, Object>> selectLifeList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectLifeList(map);
	}
	@Override
	public List<Map<String, Object>> selectEtcList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.selectEtcList(map);
	}
	@Override
	public Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		Map<String,Object> resultMap = new HashMap<String,Object>();
		Map<String,Object> tempMap = adminDAO.selectLectureDetail(map);
		resultMap.put("map", tempMap);
		
		List<Map<String, Object>> list = adminDAO.selectLectureFileList(map);
		resultMap.put("list", list);
		
		return resultMap;
	}
	@Override
	public void modifyLecture(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.modifyLecture(map);
		
		adminDAO.deleteFileList(map);
		/*List<Map<String,Object>> list = fileUtils.parseUpdateFileInfo(map,request);
		Map<String,Object> tempMap = null;
		for(int i=0, size = list.size(); i<size; i++) {
			tempMap = list.get(i);
			if(tempMap.get("IS_NEW").equals("Y")) {
				adminDAO.insertFile(tempMap);
			}else {
				adminDAO.updateFile(tempMap);
			}
		}*/
	}
	@Override
	public void deleteLecture(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.deleteLecture(map);
	}
	//////////////////////////////////////////////////////////////////////////
	@Override
	public void paySuccess(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.paySuccess(map);
	}
	@Override
	public List<Map<String, Object>> approveList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return adminDAO.approveList(map);
	}
	@Override
	public List<Map<String, Object>> approveComList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		return adminDAO.approveComList(map);
	}
	@Override
	public List<Map<String, Object>> refundList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return adminDAO.refundList(map);
	}
}
