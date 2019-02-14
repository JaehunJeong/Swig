package swig.RestApi;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("payService")
public class PayServiceImpl implements PayService {
   @Resource(name="payDao")
   private PayDao payDao;
   
   @Override
   public Map<String, Object> selectOneReserve(Map<String, Object> map) throws Exception {
      // TODO Auto-generated method stub
      return payDao.selectOneReserve(map);
   }
   @Override
   public Map<String, Object> selectRequestName() throws Exception {
      // TODO Auto-generated method stub
      String str;
      Map<String,Object> map = new HashMap<String,Object>();
      str = payDao.selectRequestName();
      map.put("name", str);
      return null;
   }
   @Override
   public void insertOrder(Map<String, Object> map) throws Exception {
      // TODO Auto-generated method stub
      payDao.insertOrder(map);
   }
   
   @Override
   public Map<String, Object> selectOneKakaoInfo(Map<String, Object> map) throws Exception{
	   return payDao.selectOneKakaoInfo(map);
   }
   
   @Override
   public void updatePaySuccess(Map<String, Object> map) throws Exception{
	   payDao.updatePaySuccess(map);
   }
   
   @Override
   public void updatePayCancel(Map<String, Object> map) throws Exception{
	   payDao.updatePayCancel(map);
   }
}