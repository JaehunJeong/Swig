package swig.admin.controller;

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
	public void deleteCategory(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.modifyCategory(map);
		
	}@Override
	public void modifyCategory(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		adminDAO.deleteCategory(map);
	}
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
