package swig.mypage;

import swig.dao.AbstractDAO;
import swig.member.Member;

public class MyPageDAO extends AbstractDAO{
	
	public void memberUpdate(Member member) throws Exception{
		memberUpdate("member.memberUpdate", member);
	}
	
	public void memberDelete(Member member) throws Exception{
		memberUpdate("member.memberDelete", member);
	}
	
	public Request lectureApplyList(Request request) throws Exception{
		return (Request) memberUpdate("member.lectureApplyList", request);
	}
	
	public Request lectureListForm(Request request) throws Exception{
		return (Request) memberUpdate("member.lectureListForm", request);
	}
	
	public WishList wishListForm(Wishlist wishList) throws Exception{
		return (WishList) memberUpdate("member.wishListForm", wishList);
	}

}
