package swig.admin.controller;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;
import swig.common.AbstractDAO;

@Repository("adminDAO")
public class AdminDAO extends AbstractDAO{
	public int selectJanValue() {
		return (int) selectOne("admin.selectJanValue");
	}
	public int selectFebValue() {
		return (int) selectOne("admin.selectFebValue");
	}
	public int selectDecValue() {
		return (int) selectOne("admin.selectDecValue");
	}
	public int selectNovValue() {
		return (int) selectOne("admin.selectNovValue");
	}
	public int selectOctValue() {
		return (int) selectOne("admin.selectOctValue");
	}
	/////////////////////////////////////
	public int selectJanLectureValue() {
		return (int) selectOne("admin.selectJanLectureValue");
	}
	public int selectFebLectureValue() {
		return (int) selectOne("admin.selectFebLectureValue");
	}
	public int selectDecLectureValue() {
		return (int) selectOne("admin.selectDecLectureValue");
	}
	public int selectNovLectureValue() {
		return (int) selectOne("admin.selectNovLectureValue");
	}
	public int selectOctLectureValue() {
		return (int) selectOne("admin.selectOctLectureValue");
	}
	////////////////////////////////////////////////////
	public int selectJanTutorValue() {
		return (int) selectOne("admin.selectJanTutorValue");
	}
	public int selectFebTutorValue() {
		return (int) selectOne("admin.selectFebTutorValue");
	}
	public int selectDecTutorValue() {
		return (int) selectOne("admin.selectDecTutorValue");
	}
	public int selectNovTutorValue() {
		return (int) selectOne("admin.selectNovTutorValue");
	}
	public int selectOctTutorValue() {
		return (int) selectOne("admin.selectOctTutorValue");
	}
	//////////////////////////////////////////////////////////
	public int selectJanPayValue() {
		return (int) selectOne("admin.selectJanPayValue");
	}
	public int selectFebPayValue() {
		return (int) selectOne("admin.selectFebPayValue");
	}
	public int selectDecPayValue() {
		return (int) selectOne("admin.selectDecPayValue");
	}
	public int selectNovPayValue() {
		return (int) selectOne("admin.selectNovPayValue");
	}
	public int selectOctPayValue() {
		return (int) selectOne("admin.selectOctPayValue");
	}
	////////////////////////////////////////////////////////////
	public int selectJanCostValue() {
		return (int) selectOne("admin.selectJanCostValue");
	}
	public int selectFebCostValue() {
		return (int) selectOne("admin.selectFebCostValue");
	}
	public int selectDecCostValue() {
		return (int) selectOne("admin.selectDecCostValue");
	}
	public int selectNovCostValue() {
		return (int) selectOne("admin.selectNovCostValue");
	}
	public int selectOctCostValue() {
		return (int) selectOne("admin.selectOctCostValue");
	}
	/////////////////////////////////////////////////
	public int selectCa1Value() {
		return (int) selectOne("admin.selectCa1Value");
	}
	public int selectCa2Value() {
		return (int) selectOne("admin.selectCa2Value");
	}
	public int selectCa3Value() {
		return (int) selectOne("admin.selectCa3Value");
	}
	public int selectCa4Value() {
		return (int) selectOne("admin.selectCa4Value");
	}
	public int selectCaValue() {
		return (int) selectOne("admin.selectCaValue");
	}
	////////////////////////////////////
	public int selectJanCa1Value() {
		return (int) selectOne("admin.selectJanCa1Value");
	}
	public int selectJanCa2Value() {
		return (int) selectOne("admin.selectJanCa2Value");
	}
	public int selectJanCa3Value() {
		return (int) selectOne("admin.selectJanCa3Value");
	}
	public int selectJanCa4Value() {
		return (int) selectOne("admin.selectJanCa4Value");
	}
	public int selectJanCaValue() {
		return (int) selectOne("admin.selectJanCaValue");
	}
	//////////////////////////////
	public int selectDecCa1Value() {
		return (int) selectOne("admin.selectDecCa1Value");
	}
	public int selectDecCa2Value() {
		return (int) selectOne("admin.selectDecCa2Value");
	}
	public int selectDecCa3Value() {
		return (int) selectOne("admin.selectDecCa3Value");
	}
	public int selectDecCa4Value() {
		return (int) selectOne("admin.selectDecCa4Value");
	}
	public int selectDecCaValue() {
		return (int) selectOne("admin.selectDecCaValue");
	}
	///////////////////////////////////
	public int selectNovCa1Value() {
		return (int) selectOne("admin.selectNovCa1Value");
	}
	public int selectNovCa2Value() {
		return (int) selectOne("admin.selectNovCa2Value");
	}
	public int selectNovCa3Value() {
		return (int) selectOne("admin.selectNovCa3Value");
	}
	public int selectNovCa4Value() {
		return (int) selectOne("admin.selectNovCa4Value");
	}
	public int selectNovCaValue() {
		return (int) selectOne("admin.selectNovCaValue");
	}
	///////////////////////////////
	public int selectOctCa1Value() {
		return (int) selectOne("admin.selectOctCa1Value");
	}
	public int selectOctCa2Value() {
		return (int) selectOne("admin.selectOctCa2Value");
	}
	public int selectOctCa3Value() {
		return (int) selectOne("admin.selectOctCa3Value");
	}
	public int selectOctCa4Value() {
		return (int) selectOne("admin.selectOctCa4Value");
	}
	public int selectOctCaValue() {
		return (int) selectOne("admin.selectOctCaValue");
	}
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
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTutorChkList(Map<String,Object> map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectChkTutorList",map);
	}
	public void deleteTutor(Map<String,Object> map) throws Exception{
		update("admin.deleteTutor", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectTutorDetail(Map<String, Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectTutorDetail",map);
	}
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectTutorScert(Map<String,Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectTutorDetail",map);
	}
	@SuppressWarnings("unchecked")
	public Map<String,Object> selectTutorCerti(Map<String,Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectTutorDetail",map);
	}
	public void permitId(Map<String, Object> map) throws Exception{
		update("admin.permitId", map);
	}
	public void rejectId(Map<String, Object> map) throws Exception{
		update("admin.rejectId", map);
	}
	public void permitCol(Map<String, Object> map) throws Exception{
		update("admin.permitCol", map);
	}
	public void rejectCol(Map<String, Object> map) throws Exception{
		update("admin.rejectCol", map);
	}
	public void permitCerti1(Map<String, Object> map) throws Exception{
		update("admin.permitCerti1", map);
	}
	public void rejectCerti1(Map<String, Object> map) throws Exception{
		update("admin.rejectCerti1", map);
	}
	public void permitCerti2(Map<String, Object> map) throws Exception{
		update("admin.permitCerti2", map);
	}
	public void rejectCerti2(Map<String, Object> map) throws Exception{
		update("admin.rejectCerti2", map);
	}
	public void permitCerti3(Map<String, Object> map) throws Exception{
		update("admin.permitCerti3", map);
	}
	public void rejectCerti3(Map<String, Object> map) throws Exception{
		update("admin.rejectCerti3", map);
	}
	public void permitCerti4(Map<String, Object> map) throws Exception{
		update("admin.permitCerti4", map);
	}
	public void rejectCerti4(Map<String, Object> map) throws Exception{
		update("admin.rejectCerti4", map);
	}
	public void permitCerti5(Map<String, Object> map) throws Exception{
		update("admin.permitCerti5", map);
	}
	public void rejectCerti5(Map<String, Object> map) throws Exception{
		update("admin.rejectCerti5", map);
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
	public List<Map<String,Object>> selectComputerList(Map<String,Object>map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectComputerList",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectLanguageList(Map<String,Object>map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectLanguageList",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectLifeList(Map<String,Object>map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectLifeList",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectEtcList(Map<String,Object>map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectEtcList",map);
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
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> approveList(Map<String,Object>map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectPayList",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> approveComList(Map<String,Object>map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectApproveList",map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> refundList(Map<String,Object>map) throws Exception{
		return (List<Map<String,Object>>) selectPagingList("admin.selectCancelList",map);
	}
}
