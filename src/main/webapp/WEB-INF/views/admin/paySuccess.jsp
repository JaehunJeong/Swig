<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script type="text/javascript">
        $(document).ready(function(){
              
        	$("#add1").on("click",function(e){
    			e.preventDefault();
    			fn_KakaoInsert();
    			
    		});
        });
        function fn_KakaoInsert(){
        	var comSubmit = new ComSubmit("frm1");
			comSubmit.setUrl("<c:url value='paySuccess' />");
			comSubmit.submit();
        }
        	


</script>
</head>
<body>
<form id ="frm1">
<div>
	<p>주문이 완료 되었습니다</p>
	<br>
	<br>
	<p>주문 번호</p><br>
	<input type="text" id="O_TID" name="O_TID" value="${tid }"/>
	<input type="text" id="O_CID" name="O_CID" value="${P_CID }"/>
	<p>결제 상태</p><br>
	<input type="text" id="O_STATUS" name="O_STATUS" value="${P_STATUS }"/>
	<p>회사 이름</p><br>
	<input type="text" id="O_PARTNER_ID" name="O_PARTNER_ID" value="${P_PARTNER_ID }"/>
	<p>회원 이름</p><br>
	<input type="text" id="O_PARTNER_USER_ID" name="O_PARTNER_USER_ID" value="${P_PARTNER_USER_ID }"/>
	<p>결제 수단</p><br>
	<input type="text" id="O_PAYMENT_METHOD_TYPE" name="O_PAYMENT_METHOD_TYPE" value="${P_PAYMENT_METHOD_TYPE }"/>
	<p>강의 이름</p><br>
	<input type="text" id="O_ITEM_NAME" name="O_ITEM_NAME" value="${P_ITEM_NAME }"/>
	<p>신청한 강의 횟수</p><br>
	<input type="text" id="O_QUANTITY" name="O_QUANTITY" value="${P_QUANTITY }"/>
	<p>강의 비용</p><br>
	<input type="text" id="O_AMOUNT_TOTAL" name="O_AMOUNT_TOTAL" value="${P_AMOUNT_TOTAL }"/>
	<p>결제 부가세</p><br>
	<input type="text" id="O_AMOUNT_VAT" name="O_AMOUNT_VAT" value="${P_AMOUNT_VAT }"/>
	<input type="text" id="O_CANCELAVAILABLE_TOTAL" name="O_CANCELAVAILABLE_TOTAL" value="${P_CANCELAVAILABLE_TOTAL }"/>
	<input type="text" id="O_CANCELAVAILABLE_VAT" name="O_CANCELAVAILABLE_VAT" value="${P_CANCELAVAILABLE_VAT }"/>
	<p>결제 날짜</p><br>
	<input type="text" id="O_CREATED_AT" name="O_CREATED_AT" value="${P_CREATED_AT }"/>
	<input type="text" id="O_CARD_BIN" name="O_CARD_BIN" value="${P_CARD_BIN }"/>
	<p>결제 카드사</p><br>
	<input type="text" id="O_CARD_CORP_NAME" name="O_CARD_CORP_NAME" value="${P_CARD_CORP_NAME }"/>
	<p>할부 개월</p><br>
	<input type="text" id="O_INSTALL_MONTH" name="O_INSTALL_MONTH" value="${P_INSTALL_MONTH }"/>
	<input type="text" id="L_NO" name="L_NO" value="${L_NO }"/> 
	<input type="text" id="O_PG_TOKEN" name="O_PG_TOKEN" value="${pg_token }"/>
	
</div>
</form>
<a href="#this" class="btn" id="add1">확인</a>
<%@ include file="/WEB-INF/include/include-body.jspf" %>
</body>
</html>