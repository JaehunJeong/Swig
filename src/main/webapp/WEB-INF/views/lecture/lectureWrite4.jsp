<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.6.4.js"></script>
<script type="text/javascript">
function lodetailE(){
	
}
function selectCA(){
	var x=document.getElementById("cal").value;
	
	var list1= new Array();
	var list2= new Array();
	var list3= new Array();
	var list4= new Array();
	var list5= new Array();
	var list6= new Array();
	var list7= new Array();
	var list8= new Array();
	var list9= new Array();
	
	$('#cas').empty();
	<c:forEach items="${list1}" var="items">
		list1.push("${items.REGIONS}");
	</c:forEach>
	
	<c:forEach items="${list2}" var="items">
		list2.push("${items.REGIONS}");
	</c:forEach>

	<c:forEach items="${list3}" var="items">
		list3.push("${items.REGIONS}");
	</c:forEach>

	<c:forEach items="${list4}" var="items">
		list4.push("${items.REGIONS}");
	</c:forEach>

	<c:forEach items="${list5}" var="items">
		list5.push("${items.REGIONS}");
	</c:forEach>
	
	<c:forEach items="${list6}" var="items">
		list6.push("${items.REGIONS}");
	</c:forEach>
	
	<c:forEach items="${list7}" var="items">
		list7.push("${items.REGIONS}");
	</c:forEach>
	
	<c:forEach items="${list8}" var="items">
		list8.push("${items.REGIONS}");
	</c:forEach>
	
	<c:forEach items="${list9}" var="items">
		list9.push("${items.REGIONS}");
	</c:forEach>
	
	$('#cas').empty();
	
	if(x=="서울"){
		for(i=0;i<list1.length;i++){
			document.frm.cas.options[i]=new Option(list1[i]);
		}
	}else if(x=="경기"){
		for(i=0;i<list2.length;i++){
			document.frm.cas.options[i]=new Option(list2[i]);
		}
	}else if(x=="인천"){
		for(i=0;i<list3.length;i++){
			document.frm.cas.options[i]=new Option(list3[i]);
		}
	}else if(x=="부산"){
		for(i=0;i<list4.length;i++){
			document.frm.cas.options[i]=new Option(list4[i]);
		}
	}else if(x=="경상,대구,울산"){
		for(i=0;i<list5.length;i++){
			document.frm.cas.options[i]=new Option(list5[i]);
		}
	}else if(x=="대전,충청"){
		for(i=0;i<list6.length;i++){
			document.frm.cas.options[i]=new Option(list6[i]);
		}
	}else if(x=="강원"){
		for(i=0;i<list7.length;i++){
			document.frm.cas.options[i]=new Option(list7[i]);
		}
	}else if(x=="광주,전라,제주"){
		for(i=0;i<list8.length;i++){
			document.frm.cas.options[i]=new Option(list8[i]);
		}
	}else if(x=="온라인"){
		for(i=0;i<list9.length;i++){
			document.frm.cas.options[i]=new Option(list9[i]);
		}
	}
}

</script>
</head>
<body>
<form name="frm">
<ul>
	<label>장소1<br><font size="2px;">(대표)</font></label>
	<li>
	<div class="dropdown">
			<select id="cal" name="cal" onchange="selectCA()">
				<option>수업 개설 지역</option>
				<c:forEach items="${recaGroup}" var="recaGroup" varStatus="status">
				<option>
					${recaGroup.REGIONL}
				</option>
				</c:forEach>
			</select>
			<select name="cas" id="cas">
				<option>카테고리 소분류</option>
			</select>
		</div>
	</li>
	<li>
	
	<select onchange="locationdetail(this.value,1)">
		<option selected="selected" value="">상세위치를 선택하세요.</option>
		<option value="0">협의 후 결정</option>
		<option value="1">직접 입력</option>
	</select>
	
	<div style="display:none;" id="locationdetail1">
		<input id="regionDetail" maxlength="50" name="Region1Location" placeholder="직접 입력(10글자 내)" type="text" value="" class="input_txt03" />
	</div>
	</li>
</ul>
	<p class="regintxt01 clearbt">장소 및 기타비용이 있나요?</p>
	<p class="regintxt02"><input type="radio" name="Region1Add" onclick="checkLayer3(2)" value="1" /><label>예, 있습니다.</label></p>
	<p class="regintxt021"><input type="radio" class="innone" name="Region1Add" onclick="checkLayer3(1)" value="0" checked/><label>아니오, 없습니다.</label></p>
	<p class="clearbt" style="display:none;" id="SubPriceLayer1">
		<input data-val="true" data-val-required="1,000" placeholder="ex) 1일 1만원, 1달 1만원, 재료비 1만원" type="text" value="" id="Region1Price" name="Region1Price"/ style="width:300px;"> 
	</p>
	<p class="clearbt"><br><br><br></p>

					<label style="clear:both;">가능 요일별<br>시간대<br>(복수입력)</label>
					<p class="ml10" style=" float:left;  " id="Week1">
						<a class="day_on" onclick="selectWeek(1, this, 1)" id="this11">월</a>
						<a class="day_off" onclick="selectWeek(1, this, 2)" id="this12">화</a>
						<a class="day_off" onclick="selectWeek(1, this, 3)" id="this13">수</a>
						<a class="day_off" onclick="selectWeek(1, this, 4)" id="this14">목</a>
						<a class="day_off" onclick="selectWeek(1, this, 5)" id="this15">금</a>
						<a class="day_off" onclick="selectWeek(1, this, 6)" id="this16">토</a>
						<a class="day_off" onclick="selectWeek(1, this, 7)" id="this17">일</a>
					</p>
					<div class="daytxt">
						<div style="float:left;width:45%;font-size:11px">
							<b id="WeekText1">월요일</b> 가능 시간을 입력해주세요.<br>시간이 없으면 비워두세요. Tip의 그림처럼 입력(예 : 오후7시-9시)
						</div>
						<div style="float:left;width:45%;padding-left:25px;font-size:11px;">
							첫 수업 일을 입력 해 주세요. <br>*일자를 명확히 해주실 경우 <u>신청율이 약 30%</u> 올라갑니다.
						</div>
					</div>
					<div id="Region1Day1" >
						<div class="clearbt">
						<input type="text" placeholder="ex) 오후7시-9시" id="Region1Day11" name="Region1Day11" class="input_txt03" value="" style="padding:7px;"/>
			<ul>
				<li>
					<label>수업 장소<br />코멘트</label>
					<textarea placeholder="신청자 분들이 수업 장소와 시간에 대해 알면 좋은 사항들이 있나요? 간단한 코멘트를 남겨주세요" class="input_txt05" rows="5" cols="40" id="RegionContent" name="RegionContent"></textarea>
					
				</li>
				<br /><br />
				<li>
					<label>신청 학생에게 보낼 메시지<br /><font size="2px;">(필수)</font></label>
					<textarea placeholder="수강생과 수업 연결 시에 메시지가 전달됩니다." class="input_txt05" rows="5" cols="40" id="Message" name="Message"></textarea>
				</li>
		</ul>
</form>
</body>
<script>
function selectWeek(val, obj, num)
{	
	var WeekText = $('#WeekText'+val);
	if(num == 1)
	{
		WeekText.html("월요일");			
	}
	else if(num == 2)
	{
		WeekText.html("화요일");
	}
	else if(num == 3)
	{
		WeekText.html("수요일");
	}
	else if(num == 4)
	{
		WeekText.html("목요일");
	}
	else if(num == 5)
	{
		WeekText.html("금요일");
	}
	else if(num == 6)
	{
		WeekText.html("토요일");
	}
	else if(num == 7)
	{
		WeekText.html("일요일");
	}
	var area = $('#Week'+val);
	area.find('a').removeClass('day_on');
	area.find('a').removeClass('day_use');
	area.find('a').addClass('day_off');

	for(i=1; i<8; i++)
	{				
		document.getElementById('Region'+val+'Day'+i).style.display="none";
		if(document.getElementById('Region'+val+'Day'+i+'1').value !='')
		{
			area = $('#this'+val+i);
			area.addClass('day_use');
		}
	}
	document.getElementById('Region'+val+'Day'+num).style.display="";
		
	if(obj =='this2')
	{
		$('#this2').removeClass('day_off');			
		$('#this2').addClass('day_on');	
	}
	else if (obj =='this3')
	{
		$('#this3').removeClass('day_off');			
		$('#this3').addClass('day_on');	
	}
	else
	{
		$(obj).removeClass('day_off');
		$(obj).removeClass('day_use');
		$(obj).addClass('day_on');	
	}	
	
}

$('#Region1Option').change(function() {
	if ($(this).val() === '2') {
		$('#Region1Location').removeAttr('disabled');
	} else {
		$('#Region1Location').attr('disabled', 'disabled').val('');
	}
});

$('#Region2Option').change(function() {
	if ($(this).val() === '2') {
		$('#Region2Location').removeAttr('disabled');
	} else {
		$('#Region2Location').attr('disabled', 'disabled').val('');
	}
});

$('#Region3Option').change(function() {
	if ($(this).val() === '2') {
		$('#Region3Location').removeAttr('disabled');
	} else {
		$('#Region3Location').attr('disabled', 'disabled').val('');
	}
});

function locationdetail(val,num){
	
	locationLayer =document.getElementById('locationdetail'+num);
	
	if(val == 1)
	{
		locationLayer.style.display="";
	}
	else
	{
		locationLayer.style.display="none";
	}

}

function checkLayer3(val)
{			
	if(val == 1)
	{
		document.getElementById('SubPriceLayer1').style.display="none";
		document.getElementById('SubPriceLayer11').style.display="none";
		document.getElementById('Region1Price').value=""
	}
	else if(val ==2) 
	{
		document.getElementById('SubPriceLayer1').style.display="";
		document.getElementById('SubPriceLayer11').style.display="";
	}
	else if(val ==3) 
	{
		document.getElementById('SubPriceLayer2').style.display="none";
		document.getElementById('SubPriceLayer22').style.display="none";
		document.getElementById('Region2Price').value=""
	}
	else if(val ==4) 
	{
		document.getElementById('SubPriceLayer2').style.display="";
		document.getElementById('SubPriceLayer22').style.display="";
	}
	else if(val ==5) 
	{
		document.getElementById('SubPriceLayer3').style.display="none";
		document.getElementById('SubPriceLayer33').style.display="none";
		document.getElementById('Region3Price').value=""
	}
	else if(val ==6) 
	{
		document.getElementById('SubPriceLayer3').style.display="";
		document.getElementById('SubPriceLayer33').style.display="";
	}
}

</script>
</html>