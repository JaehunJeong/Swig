package swig.mypage;

import java.util.List;
import java.util.Map;

import swig.dao.AbstractDAO;

public class MyPageDAO extends AbstractDAO{
	
	//회원정보가져오기
	public Map<String, Object> memberView(Object object) throws Exception {
		return (Map<String, Object>) selectOne("member.memberView", object);
	}
	
	//회원정보수정
	public void memberUpdate(Member member) throws Exception{
		update("member.memberUpdate", member);
	}
	
	//튜터정보수정
	public void tutorUpdate(Tutor tutor) throws Exception{
		update("member.tutorUpdate", tutor);
	}
	
	//튜터정보수정(파일제외)
	public void memberUpdateExceptFile(Tutor tutor) throws Exception{
		update("member.tutorUpdateExceptFile", tutor);
	}
	
	//파일(사진)삭제
	public String deleteFile(int m_no) throws Exception{
		return (String) selectOne("members.selectFile", m_no);
	}
	
	//회원탈퇴
	public void memberDelete(int m_tutor) throws Exception{
		delete("member.memberDelete", m_tutor);
	}
	
	//수강신청 목록
	public List<Map<String, Object>> lectureApplyList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>) selectList("member.lectureApplyList", map);
	}
	
	//수강중인 수업 목록
	public List<Map<String, Object>> lectureListForm(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>) selectList("member.lectureListForm", map);
	}
	
	//
	public List<Map<String, Object>> wishListForm(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>) selectList("member.wishListForm", map);
	}

}
