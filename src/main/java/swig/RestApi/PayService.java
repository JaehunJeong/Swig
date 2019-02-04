package swig.RestApi;

import java.util.Map;

public interface PayService {

	Map<String, Object> selectOneReserve(Map<String,Object> map) throws Exception;
	Map<String, Object> selectRequestName() throws Exception;
	void insertOrder(Map<String,Object> map) throws Exception;
}
