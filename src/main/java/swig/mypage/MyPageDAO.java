package swig.mypage;

import java.util.List;
import java.util.Map;

import swig.dao.AbstractDAO;
import swig.member.Member;

public class MyPageDAO extends AbstractDAO{
	
	//회원정보수정
	public void memberUpdate(Member member) throws Exception{
		memberUpdate("member.memberUpdate", member);
	}
	
	//회원탈퇴
	public void memberDelete(int m_tutor) throws Exception{
		memberDelete("member.memberDelete", m_tutor);
	}
	
	//수강신청 목록
	public List<Map<String, Object>> lectureApplyList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>) selectList("member.lectureApplyList", map);
	}
	
	//수강중인 수업 목록
	public List<Map<String, Object>> lectureListForm(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("member.lectureListForm", map);
	}
	
	//
	public List<Map<String, Object>> wishListForm(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>) selectList("member.wishListForm", map);
	}

}
