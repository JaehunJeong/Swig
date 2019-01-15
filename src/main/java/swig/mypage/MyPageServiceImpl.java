package swig.mypage;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;

import swig.mypage.MypageDAO;

public class MyPageServiceImpl implements MyPageService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="mypageDAO")
	private Member member;
	
	public void memberUpdate(Member member) throws Exception{
		MyPageDAO.memberUpdate(member);
	}
	
	public void memberDelete(int m_tutor) throws Exception{
		MyPageDAO.memberDelete(m_tutor);
	}
	
	public List<Request> lectureApplyList(Request request) throws Exception {
		return MyPageDAO.lectureApplyList(request);
	}
	
	public List<Request> lectureListForm(Request request) throws Exception {
		return MyPageDAO.lectureListForm(request);
	}
	
	public List<WishList> wishListForm(WishList wishList) throws Exception {
		return MyPageDAO.wishListForm(wishList);
	}
}
