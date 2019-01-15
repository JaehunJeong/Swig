package swig.dao;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import swig.dao.AbstractDAO;

public class AbstractDAO {
	
	protected Log log = LogFactory.getLog(AbstractDAO.class);
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	protected void printQueryId(String queryId) {
		if(log.isDebugEnabled()) {
			log.debug("\t QueryId \t: "+queryId);
		}
	}
	
	//회원정보수정
	public Object memberUpdate(String queryId, Object params) {
		printQueryId(queryId);
		return sqlSession.update(queryId,params);
	}
	
	//회원탈퇴
	public Object memberDelete(String queryId, Object params){
		printQueryId(queryId);
		return sqlSession.delete(queryId, params);
	}
	
	//수업신청,수강중인 수업,위시 리스트 출력
	public Object selectList(String queryId, Object params){
		printQueryId(queryId);
		return sqlSession.delete(queryId, params);
	}
	
}
