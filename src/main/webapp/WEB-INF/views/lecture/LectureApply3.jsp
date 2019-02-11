<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<title>Insert title here</title>
</head>
<body>
<form name="frm" action="LectureApplyInsert1" method="post">
<div id="Level">
	<b>자신의 레벨을 알려주세요</b>
	<input type="checkbox" name="level" id="level1" onclick="checkLevel(1)" value="입문자"/>
	<input type="checkbox" name="level" id="level2" onclick="checkLevel(2)" value="초/중급자"/>
	<input type="checkbox" name="level" id="level3" onclick="checkLevel(3)" value="상급자"/>
</div>
<div id="Carrer">
	<b>경력을 개월로 적어주세요.</b>
	<input type="text" placeholder="개월수" name="Comment" value="" style="padding:7px;">개월
</div>
<div id="Comment">
	<b>튜터에게 전하는 말</b>
	<textarea rows="5" placeholder="튜터님에게 회원님에 대해 알려주세요.
	수업을 듣는 목적은 무엇인가요?
	튜터님의 어떤 점이 마음에 들어 신청하셨나요?" id="COMMENT" name="COMMENT" />
</div>
<div class="apply_button"><div class="btn_red" onclick="send();">다음</div></div>
</form>

<script>
function checkLevel(num){
	var checkLevel=document.getElementById('Level'+num);
	if(level == 1){
		document.getElementById('Level1').style.display="block";
		document.getElementById('Level2').style.display="none";
		document.getElementById('Level3').style.display="none";
	} else if(level == 2){
		document.getElementById('Level1').style.display="none";
		document.getElementById('Level2').style.display="block";
		document.getElementById('Level3').style.display="none";
	} else if(level == 3){
		document.getElementById('Level1').style.display="none";
		document.getElementById('Level2').style.display="none";
		document.getElementById('Level3').style.display="block";
	}
}

function send(){
	if($('#COMMENT').val() = '' ){
		alert('메시지를 입력하세요');
		${'#COMMENT').focus(); 
		return false;}
	}
	
	document.form.submit();
}
</script>

</body>
</html>