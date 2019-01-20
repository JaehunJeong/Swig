package swig.admin.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public interface AdminService {
	List<Map<String,Object>> selectMemberList(Map<String,Object> map) throws Exception;
	
	Map<String,Object> selectMemberDetail(Map<String,Object> map)throws Exception;
	
	void updateMember(Map<String,Object>map) throws Exception;
	
	void updateMemberFile(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	void deleteMember(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectApplyList(Map<String,Object>map)throws Exception;
	
	void permitRequest(Map<String, Object> map) throws Exception;
	
	void cancelRequest(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectTutorList(Map<String,Object> map) throws Exception;
	
	void deleteTutor (Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectCategoryList(Map<String,Object>map)throws Exception;
	
	void insertCategory(Map<String,Object> map) throws Exception;
	
	void modifyCategory(Map<String,Object>map) throws Exception;
	
	void deleteCategory(Map<String,Object>map) throws Exception;
	
	List<Map<String, Object>> selectLectureList(Map<String,Object>map)throws Exception;
	
	Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception;
	
	void modifyLecture(Map<String,Object> map, HttpServletRequest request) throws Exception;
	
	void deleteLecture(Map<String, Object> map) throws Exception;
	
}
