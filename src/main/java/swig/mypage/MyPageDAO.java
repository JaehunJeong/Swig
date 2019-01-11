package swig.mypage;

import swig.dao.AbstractDAO;

public class MyPageDAO extends AbstractDAO{
	
	public void update(MemberModel member) throws Exception{
		update("mypage.update", member);
	}

}
