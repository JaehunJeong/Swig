package swig.admin.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public interface AdminService {
	Map<String,Object> selectDateValue()throws Exception;
	Map<String,Object> selectLectureValue()throws Exception;
	Map<String,Object> selectTutorValue()throws Exception;
	Map<String,Object> selectPayValue()throws Exception;
	Map<String,Object> selectCostValue()throws Exception;
	Map<String,Object> selectCaValue()throws Exception;
	Map<String,Object> selectCaJanValue()throws Exception;
	Map<String,Object> selectCaDecValue()throws Exception;
	Map<String,Object> selectCaNovValue()throws Exception;
	Map<String,Object> selectCaOctValue()throws Exception;
	////////////////////////////////////
	List<Map<String,Object>> selectMemberList(Map<String,Object> map) throws Exception;
	
	Map<String,Object> selectMemberDetail(Map<String,Object> map)throws Exception;
	
	void updateMember(Map<String,Object>map) throws Exception;
	
	void updateMemberFile(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	void deleteMember(Map<String, Object> map) throws Exception;
	////////////////////////////////////////////////////////////////////
	
	List<Map<String, Object>> selectApplyList(Map<String,Object>map)throws Exception;
	
	void permitRequest(Map<String, Object> map) throws Exception;
	
	void cancelRequest(Map<String, Object> map) throws Exception;
	///////////////////////////////////////////////////////////
	
	List<Map<String, Object>> selectTutorList(Map<String,Object> map) throws Exception;
	
	List<Map<String, Object>> selectTutorChkList(Map<String,Object> map) throws Exception;
	
	Map<String,Object> selectTutorDetail(Map<String,Object> map)throws Exception;
	
	Map<String,Object> selectTutorScert(Map<String,Object> map)throws Exception;
	
	Map<String,Object> selectTutorCerti(Map<String,Object> map)throws Exception;
	
	void deleteTutor (Map<String, Object> map) throws Exception;
	
	void permitId(Map<String, Object> map) throws Exception;
	void rejectId(Map<String, Object> map) throws Exception;
	void permitCol(Map<String, Object> map) throws Exception;
	void rejectCol(Map<String, Object> map) throws Exception;
	void permitCerti1(Map<String, Object> map) throws Exception;
	void rejectCerti1(Map<String, Object> map) throws Exception;
	void permitCerti2(Map<String, Object> map) throws Exception;
	void rejectCerti2(Map<String, Object> map) throws Exception;
	void permitCerti3(Map<String, Object> map) throws Exception;
	void rejectCerti3(Map<String, Object> map) throws Exception;
	void permitCerti4(Map<String, Object> map) throws Exception;
	void rejectCerti4(Map<String, Object> map) throws Exception;
	void permitCerti5(Map<String, Object> map) throws Exception;
	void rejectCerti5(Map<String, Object> map) throws Exception;
	///////////////////////////////////////////////////////
	
	List<Map<String, Object>> selectCategoryList(Map<String,Object>map)throws Exception;
	
	void insertCategory(Map<String,Object> map) throws Exception;
	
	Map<String,Object> selectMaxValue()throws Exception;
	
	Map<String,Object> selectCategoryDetail(Map<String,Object> map)throws Exception;
	
	void modifyCategory(Map<String,Object>map) throws Exception;
	
	void deleteCategory(Map<String,Object>map) throws Exception;
	///////////////////////////////////////////////////////////
	
	List<Map<String, Object>> selectLectureList(Map<String,Object>map)throws Exception;
	List<Map<String, Object>> selectComputerList(Map<String,Object>map)throws Exception;
	List<Map<String, Object>> selectLanguageList(Map<String,Object>map)throws Exception;
	List<Map<String, Object>> selectLifeList(Map<String,Object>map)throws Exception;
	List<Map<String, Object>> selectEtcList(Map<String,Object>map)throws Exception;
	
	Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception;
	
	void modifyLecture(Map<String,Object> map, HttpServletRequest request) throws Exception;
	
	void deleteLecture(Map<String, Object> map) throws Exception;
	////////////////////////////////////////////
	void paySuccess(Map<String,Object>map) throws Exception;
	
	List<Map<String,Object>> approveList(Map<String,Object> map) throws Exception;
	
	List<Map<String,Object>> approveComList(Map<String,Object> map) throws Exception;
	
	List<Map<String,Object>> refundList(Map<String,Object> map) throws Exception;
}
