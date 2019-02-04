package swig.RestApi;

import java.util.Map;

import org.springframework.stereotype.Repository;

import swig.common.AbstractDAO;

@Repository("payDao")
public class PayDao extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String,Object> selectOneReserve(Map<String,Object> map) throws Exception{
		return (Map<String,Object>) selectOne("admin.selectOneReserve",map);
	}
	public String selectRequestName() {
		return (String) selectOne("admin.selectRequestName");
	}
	public void insertOrder(Map<String,Object>map) throws Exception{
		insert("admin.insertPayInfo",map);
	}
}
