package swig.mypage;

import java.util.List;
import java.util.Map;

public interface MyPageService {
	
	//회원정보 가져오기
	public Map<String, Object> memberView(Object object) throws Exception;
	
	//회원 정보수정
	public void memberUpdate(Member member) throws Exception;
	
	//튜터 정보수정
	public void tutorUpdate(Tutor tutor) throws Exception;
	
	//회원탈퇴
	public void memberDelete(int m_tutor) throws Exception;
	
	//수업신청 리스트 출력
	public List<Map<String, Object>> lectureApplyList(Map<String, Object> map) throws Exception;
	
	//수강중인 수업 리스트 출력
	public List<Map<String, Object>> lectureListForm(Map<String, Object> map) throws Exception;
	
	//위시리스트 출력
	public List<Map<String, Object>> wishListForm(Map<String, Object> map) throws Exception;

	

}
