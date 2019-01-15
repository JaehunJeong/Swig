package swig.mypage;

import java.util.List;

public interface MyPageService {
	
	//정보수정
	public void memberUpdate(Member member) throws Exception;
	
	//정보수정(파일제외)
	public void memberUpdateExceptFile() throws Exception;
	
	//회원탈퇴
	public void memberDelete(int m_tutor) throws Exception;
	
	//수업신청 리스트 출력
	public List<Request> lectureApplyList(Request request) throws Exception;
	
	//수강중인 수업 리스트 출력
	public List<Request> lectureListForm(Request request) throws Exception;
	
	//위시리스트 출력
	public List<WishList> wishListForm() throws Exception;


}
