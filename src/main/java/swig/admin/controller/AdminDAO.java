package swig.admin.controller;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import swig.common.AbstractDAO;

@Repository("adminDAO")
public class AdminDAO extends AbstractDAO{
	
	///////////////////////////////////////////////////////////////////////////
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectMemberList(Map<String,Object> map) throws Exception{
		return (List<Map<String,Object>>)selectPagingList("admin.selectMemberList",map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectMemberDetail(Map<String, Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectMemberDetail",map);
	}
	public void updateMember(Map<String,Object> map) throws Exception{
		update("admin.updateMember",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectMemberFile(Map<String,Object> map)throws Exception{
		return (List<Map<String,Object>>) selectList("admin.selectMemberFileList", map);
	}
	public void deleteMember(Map<String,Object> map) throws Exception{
		update("admin.deleteMember", map);
	}
	////////////////////////////////////////////////////////////////////////////////////
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectApplyList(Map<String,Object> map)	throws Exception{
		return (List<Map<String,Object>>)selectPagingList("admin.selectApplyList",map);
	}
	
	public void permitRequest(Map<String, Object> map) throws Exception{
		update("admin.permitRequest", map);
		
	}
	public void cancelRequest(Map<String,Object> map) throws Exception{
		update("admin.cancelRequest", map);
	}
	////////////////////////////////////////////////////////////////////////////////////
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorList(Map<String,Object> map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectTutorList",map);
	}
	public void deleteTutor(Map<String,Object> map) throws Exception{
		update("admin.deleteTutor", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectTutorScert(Map<String,Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectTutorDetail",map);
	}
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectTutorCerti(Map<String,Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectTutorDetail",map);
	}
	////////////////////////////////////////////////////////////////////////////////////////
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCategoryList(Map<String, Object>map )throws Exception{
		return (List<Map<String, Object>>) selectPagingList("admin.selectCategoryList",map);
	}
	
	public String selectOneMaxValue() {
		return (String) selectOne("admin.selectOneMaxValue");
	}
	public String selectTwoMaxValue() {
		return (String) selectOne("admin.selectTwoMaxValue");
	}
	public String selectThreeMaxValue() {
		return (String) selectOne("admin.selectThreeMaxValue");
	}
	public String selectFourMaxValue() {
		return (String) selectOne("admin.selectFourMaxValue");
	}
	public String selectFiveMaxValue() {
		return (String) selectOne("admin.selectFiveMaxValue");
	}
	public String selectSixMaxValue() {
		return (String) selectOne("admin.selectSixMaxValue");
	}
	public String selectSevenMaxValue() {
		return (String) selectOne("admin.selectSevenMaxValue");
	}
	public String selectEightMaxValue() {
		return (String) selectOne("admin.selectEightMaxValue");
	}
	
	public void insertCategory(Map<String,Object>map) throws Exception{
		insert("admin.insertCategory", map);
	}
	public void modifyCategory(Map<String,Object>map)throws Exception{
		update("admin.modifyCategory",map);
		
	}
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectCategoryDetail(Map<String, Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectCategoryDetail",map);
	}
	public void deleteCategory(Map<String, Object>map) throws Exception{
		update("admin.deleteCategory",map);
	}
	public void updateLectureChk(Map<String,Object>map) throws Exception{
		update("admin.updateLectureChk",map);
	}
	//////////////////////////////////////////////////////////////////////////
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectLectureList(Map<String,Object>map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectLectureList",map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectLectureDetail(Map<String, Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectLectureDetail", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectLectureFileList(Map<String,Object> map) throws Exception{
		return (List<Map<String,Object>>) selectList("admin.selectFileList", map);
	}
	
	public void modifyLecture(Map<String,Object> map) throws Exception{
		update("admin.modifyCategory" , map);
	}
	public void deleteLecture(Map<String,Object> map) throws Exception{
		update("admin.deleteCategory",map);
	}
	//////////////////////////////////////////////////////////////////////
	public void deleteFileList(Map<String,Object> map) throws Exception{
		update("admin.deleteFileList", map);
	}
	public void updateFile(Map<String, Object> map) throws Exception{
		update("admin.updateFile", map);
	}
	public void insertFile(Map<String,Object> map) throws Exception{
		insert("admin.insertFile", map);
	}
	//////////////////////////////////////////////
	public void paySuccess(Map<String, Object> map) throws Exception{
		update("admin.paySuccess",map);
	}
}
