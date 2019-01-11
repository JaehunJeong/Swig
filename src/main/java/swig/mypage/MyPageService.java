package swig.mypage;

public interface MyPageService {
	
	//정보수정
	void memberUpdate(MemberModel member) throws Exception;
	
	//회원탈퇴
	void memberDelete(String m_no) throws Exception;
	
	//수업신청 리스트 출력
	lectureApplyList(String l_no) throws Exception;
	
	//수강목록 리스트 출력
	lectureListForm() throws Exception;
	
	//위시리스트 출력
	wishListForm() throws Exception;

	
	
	
	

}
