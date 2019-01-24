<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.6.4.js"></script>

</head>
<body>
<form>
<ul>
	<li>
		<label>시간당 가격</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<input id="L_PRICEPH" name="L_PRICEPH" type="text" onkeyup="updateCalculation()"/>
			<span class="inputstxt">원</span>
	</li>
	<li>
		<label>기본수업시간</label>					
		<select id="L_TIMEPL" name="L_TIMEPL" onchange="updateCalculation()">
			<option selected="selected" value="">선택하세요</option>
			<option value="1" >1시간</option>									
			<option value="2" >2시간</option>
			<option value="3" >3시간</option>
			<option value="4" >4시간</option>
			<option value="5" >5시간</option>
			<option value="6" >6시간</option>
		</select>
		<span class="inputstxt">/ 1회</span>
	</li>

	<li>
		<label>총 수업<br><font size="2px;">(한달기준)</font></label>
		<input id="L_COUNTPM" name="L_COUNTPM" type="text" onkeyup="updateCalculation()"/>
					
		<span class="inputstxt">회</span>
	</li>

	<li>
		<label>총 수업 가격</label>
			<div class="cl_total">
				<dl>
					<dt><font id="calc-unit-price">0</font>원 X <font id="calc-time">0</font>시간 X <font id="calc-total-times">0</font>회</dt>
					<dd>총 <font id="calc-result">0</font>원</dd>
					<dd>연결수수료 <font id="calc-fee">0</font>원</dd>
				</dl>
			</div>
	</li>
</ul>
</form>

<script>
function formatMoney(val) {
	if (val.length < 4)
		return val;
	return formatMoney(val.substring(0, val.length - 3)) + ',' + val.substring(val.length - 3, val.length);
}
</script>

<script>
updateCalculation();
function updateCalculation() {
	var unitPrice = Number($("#L_PRICEPH").val());
	var time = Number($("#L_TIMEPL").val());
	var totalTimes = Number($("#L_COUNTPM").val());

	$("#calc-unit-price").text(formatMoney(unitPrice.toString()));
	$("#calc-time").text(time);
	$("#calc-total-times").text(totalTimes);

	$("#calc-result").text(formatMoney((unitPrice * time * totalTimes).toString()));
	$("#calc-fee").text(formatMoney(unitPrice.toString()));
	
}

</script>
</body>
</html>