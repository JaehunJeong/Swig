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
   @SuppressWarnings("unchecked")
   public Map<String, Object> selectOneKakaoInfo(Map<String, Object> map) throws Exception{
	   return (Map<String, Object>) selectOne("admin.selectOneKakaoInfo", map);
   }
   public void updatePaySuccess(Map<String, Object> map) throws Exception{
	   update("admin.updatePaySuccess", map);
   }
   public void updatePayCancel(Map<String, Object> map) throws Exception{
	   update("admin.updatePayCancel", map);
   }
}