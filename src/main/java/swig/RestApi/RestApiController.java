package swig.RestApi;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import swig.common.CommandMap;

@Controller
public class RestApiController {

	@Resource(name="payService")
	private PayService payService;
	private String tid;
	private static KakaoRestApiHelper apiHelper = new KakaoRestApiHelper();
	
	@RequestMapping(value="kakaotest")
	public String testKakaoPay(@RequestParam("L_NO") int L_NO, CommandMap commandMap) throws Exception{
		//String P_NO = "1"
		//String L_STRING = String.valueOf(L_NO);
		commandMap.put("L_NO", L_NO);
		
		Map<String, Object> map = payService.selectOneReserve(commandMap.getMap());
		
		String price = map.get("L_TOTALPRICE").toString();
		String name = map.get("L_SUBJECT").toString();
		String count = map.get("L_TIMEPL").toString();
		//String people = map.get(")
		
		apiHelper.setAdminKey("c96a3dcf1bd646ad68f5d46d5318a748");
		//일단 등록하고 받아온거 예제 소스 키3229bd5301d8eb8368280d477fa574ec
		//c96a3dcf1bd646ad68f5d46d5318a748
		Map<String, String> paramMap;
		
		paramMap = new HashMap<String,String>();
		paramMap.put("cid", "TC0ONETIME");
		//https://devtalk.kakao.com/t/cid/32989/2
		paramMap.put("partner_order_id", "SWIG.Corp");
		paramMap.put("partner_user_id", "partner_user_id");
		paramMap.put("item_name", name);
		paramMap.put("quantity", count);
		paramMap.put("total_amount", price);
		//위 3가지는 필수 조건
		paramMap.put("tax_free_amount", "0");
		paramMap.put("approval_url", "http://localhost:8080/swig/openPaySuccess?L_NO="+commandMap.get("L_NO"));
		paramMap.put("fail_url","http://localhost:8080/swig/adminForm");
		paramMap.put("cancel_url", "http://localhost:8080/swig/adminForm");
		
		String result = apiHelper.requestPaymentReady(paramMap);
		System.out.println("resultready="+result);
		String result_url = result.substring(result.indexOf("next_redirect_pc_url")+23, result.indexOf("android_app_scheme")-3);
		tid = result.substring(result.indexOf("tid")+6,result.indexOf("tms_result")-3);
		System.out.println("resulttid=" +tid);
		return "redirect:"+result_url;
	}
	@RequestMapping(value="openPaySuccess")
	public ModelAndView openPaySuccess(CommandMap commandMap , HttpServletRequest request) throws Exception
	{
		ModelAndView mav = new ModelAndView("/admin/paySuccess");
		//Map<String,Object> map = payService.selectRequestName();
		String P_TID;//결제 고유번호
		String P_CID;//가맹점 코드
		String P_STATUS;//결제 상태
		String P_PARTNER_ID;//가맹점 주문번호 신청 번호를 넣을 예정
		String P_PARTNER_USER_ID;//결제자 이름
		String P_PAYMENT_METHOD_TYPE;//결제 타입
		String P_ITEM_NAME;//상품명
		String P_QUANTITY;//상품 수량
		String P_AMOUNT_TOTAL;//상품 총액
		String P_AMOUNT_VAT;//상품 부과세
		String P_CANCELAVAILABLE_TOTAL;
		String P_CANCELAVAILABLE_VAT;
		String P_CREATED_AT;
		String amount;
		String cancel;
		String card;
		String P_CARD_BIN;
		String P_CARD_CORP_NAME;
		String P_INSTALL_MONTH;
		String L_NO = request.getParameter("L_NO");
		String pg_token = request.getParameter("pg_token");
		apiHelper.setAdminKey("c96a3dcf1bd646ad68f5d46d5318a748");
		//일단 등록하고 받아온거 예제 소스 키3229bd5301d8eb8368280d477fa574ec
		//c96a3dcf1bd646ad68f5d46d5318a748
		Map<String, String> paramMap;
		
		paramMap = new HashMap<String,String>();
		paramMap.put("cid", "TC0ONETIME");
		//https://devtalk.kakao.com/t/cid/32989/2
		paramMap.put("tid", tid);
		String result = apiHelper.successPayment(paramMap);
		System.out.println("result="+result);
		P_TID = result.substring(result.indexOf("tid")+6,result.indexOf("cid")-3);
		P_CID = result.substring(result.indexOf("cid")+6,result.indexOf("status")-3);
		P_STATUS = result.substring(result.indexOf("status")+9,result.indexOf("partner_order_id")-3);
		P_PARTNER_ID = result.substring(result.indexOf("partner_order_id")+19,result.indexOf("partner_user_id")-3);
		P_PARTNER_USER_ID = result.substring(result.indexOf("partner_user_id")+18,result.indexOf("payment_method_type")-3);
		P_PAYMENT_METHOD_TYPE = result.substring(result.indexOf("payment_method_type")+22,result.indexOf("item_name")-3);
		P_QUANTITY = result.substring(result.indexOf("quantity")+10,result.indexOf("amount")-2);
		
		amount = result.substring(result.indexOf("amount")+9,result.indexOf("cancel_available_amount")-3);
		P_AMOUNT_TOTAL = amount.substring(amount.indexOf("total")+7,amount.indexOf("tax_free")-2);
		P_AMOUNT_VAT = amount.substring(amount.indexOf("vat")+5,amount.indexOf("discount")-2);
		
		cancel=result.substring(result.indexOf("cancel_available_amount")+26,result.indexOf("canceled_amount")-3);
		P_CANCELAVAILABLE_TOTAL = cancel.substring(cancel.indexOf("amount")+9,cancel.indexOf("tax_free")-2);
		P_CANCELAVAILABLE_VAT = cancel.substring(cancel.indexOf("vat")+5,cancel.indexOf("discount")-2);
		
		P_CREATED_AT = result.substring(result.indexOf("created_at")+13,result.indexOf("selected_card_info")-3);
		
		card = result.substring(result.indexOf("selected_card_info")+21);
		P_CARD_BIN = card.substring(card.indexOf("card_bin")+11,card.indexOf("card_corp_name")-3);
		P_CARD_CORP_NAME = card.substring(card.indexOf("card_corp_name")+17,card.indexOf("install_month")-3);
		P_INSTALL_MONTH = card.substring(card.indexOf("install_month")+15,card.indexOf("interest_free_install")-2);
		System.out.println("P_TID="+P_TID);
		System.out.println("P_CID="+P_CID);
		System.out.println("P_STATUS="+P_STATUS);
		System.out.println("P_PARTNER_ID="+P_PARTNER_ID);
		System.out.println("P_PARTNER_USER_ID="+P_PARTNER_USER_ID);
		System.out.println("P_PAYMENT_METHOD_TYPE="+P_PAYMENT_METHOD_TYPE);
		System.out.println("P_QUANTITY="+P_QUANTITY);
		System.out.println("amount="+amount);
		System.out.println("P_AMOUNT_TOTAL="+P_AMOUNT_TOTAL);
		System.out.println("P_AMOUNT_VAT="+P_AMOUNT_VAT);
		System.out.println("cancel="+cancel);
		System.out.println("P_CANCELAVAILABLE_TOTAL="+P_CANCELAVAILABLE_TOTAL);
		System.out.println("P_CANCELAVILABlE_VAT="+P_CANCELAVAILABLE_VAT);
		System.out.println("P_CREATED_AT="+P_CREATED_AT);
		System.out.println("card="+card);
		System.out.println("P_CARD_BIN="+P_CARD_BIN);
		System.out.println("P_CARD_CORP_NAME="+P_CARD_CORP_NAME);
		System.out.println("P_INSTALL_MONTH="+P_INSTALL_MONTH);
		mav.addObject("tid",tid);
		mav.addObject("P_CID",P_CID);
		mav.addObject("P_STATUS",P_STATUS);
		mav.addObject("P_PARTNER_ID",P_PARTNER_ID);
		mav.addObject("P_PARTNER_USER_ID",P_PARTNER_USER_ID);
		mav.addObject("P_PAYMENT_METHOD_TYPE",P_PAYMENT_METHOD_TYPE);
		mav.addObject("P_QUANTITY",P_QUANTITY);
		mav.addObject("P_AMOUNT_TOTAL",P_AMOUNT_TOTAL);
		mav.addObject("P_AMOUNT_VAT",P_AMOUNT_VAT);
		mav.addObject("P_CANCELAVAILABLE_TOTAL",P_CANCELAVAILABLE_TOTAL);
		mav.addObject("P_CANCELAVAILABLE_VAT",P_CANCELAVAILABLE_VAT);
		mav.addObject("P_CREATED_AT",P_CREATED_AT);
		mav.addObject("P_CARD_BIN",P_CARD_BIN);
		mav.addObject("P_CARD_CORP_NAME",P_CARD_CORP_NAME);
		mav.addObject("P_INSTALL_MONTH",P_INSTALL_MONTH);
		mav.addObject("L_NO",L_NO);
		mav.addObject("pg_token",pg_token);
		
		//mav.addObject("name", map.get("name"));
		
		//payService.insertPayInfo(commandMap.getMap());
		return mav;
	}
	@RequestMapping(value="paySuccess")
	public ModelAndView paySuccess(CommandMap commandMap) throws Exception
	{
		
		ModelAndView mav = new ModelAndView("redirect:openLectureList");
		payService.insertOrder(commandMap.getMap());
		return mav;
	}
	
	@RequestMapping(value="payCancel")
	public ModelAndView payCancel(CommandMap commandMap) throws Exception
	{
		
		ModelAndView mav = new ModelAndView("/admin/payCancel");
		Map<String, Object> map = payService.selectOneReserve(commandMap.getMap());
		
		String price = map.get("L_TOTALPRICE").toString();
		String name = map.get("L_SUBJECT").toString();
		String count = map.get("L_TIMEPL").toString();
		//String people = map.get(")
		
		apiHelper.setAdminKey("c96a3dcf1bd646ad68f5d46d5318a748");
		//일단 등록하고 받아온거 예제 소스 키3229bd5301d8eb8368280d477fa574ec
		//c96a3dcf1bd646ad68f5d46d5318a748
		Map<String, String> paramMap;
		
		paramMap = new HashMap<String,String>();
		paramMap.put("cid", "TC0ONETIME");
		//https://devtalk.kakao.com/t/cid/32989/2
		paramMap.put("tid", "T2586406766081626135");
		paramMap.put("cancel_amount", "90000");
		paramMap.put("cancel_tax_free_amount", "0");
		
		String result = apiHelper.cancelPayment(paramMap);
		System.out.println("resultready="+result);
		//String result_url = result.substring(result.indexOf("next_redirect_pc_url")+23, result.indexOf("android_app_scheme")-3);
		//tid = result.substring(result.indexOf("tid")+6,result.indexOf("tms_result")-3);
		//System.out.println("resulttid=" +tid);
		return mav;
	}
}
