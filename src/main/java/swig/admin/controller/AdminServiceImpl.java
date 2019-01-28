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
	public void deleteTutor(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.deleteTutor(map);
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
		str = adminDAO.selectFiveMaxValue();
		array = ((String) str).split("-");
		
		big = Integer.parseInt(array[1]) + 1;
		
		str = String.valueOf(big);
		ca_no = array[0] + "-" + str;
		map.put("map5", ca_no);
		///
		str = adminDAO.selectSixMaxValue();
		array = ((String) str).split("-");
		
		big = Integer.parseInt(array[1]) + 1;
		
		str = String.valueOf(big);
		ca_no = array[0] + "-" + str;
		map.put("map6", ca_no);
		////
		str = adminDAO.selectSevenMaxValue();
		array = ((String) str).split("-");
		
		big = Integer.parseInt(array[1]) + 1;
		
		str = String.valueOf(big);
		ca_no = array[0] + "-" + str;
		map.put("map7", ca_no);
		////
		str = adminDAO.selectEightMaxValue();
		array = ((String) str).split("-");
		
		big = Integer.parseInt(array[1]) + 1;
		
		str = String.valueOf(big);
		ca_no = array[0] + "-" + str;
		map.put("map8", ca_no);
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
}
