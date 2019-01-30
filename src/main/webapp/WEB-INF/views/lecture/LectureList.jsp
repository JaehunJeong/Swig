<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/LectureDetail.css'/>"/>
<title>Insert title here</title>
</head>
<body>

<div class="category">

	<div class="CA_LSECTION">
	<div class="cate1" onclick="location.href='/cate1'" onmouseover="SelectCa_Ssection('CA_SSECTION-1')">컴퓨터</div>
	<div class="cate2" onclick="location.href='/cate2'" onmouseover="SelectCa_Ssection('CA_SSECTION-2')">외국어</div>
	<div class="cate3" onclick="location.href='/cate1'" onmouseover="SelectCa_Ssection('CA_SSECTION-3')">라이프스타일</div>
	<div class="cate4" onclick="location.href='/cate1'" onmouseover="SelectCa_Ssection('CA_SSECTION-4')">기타</div>
	</div>

	<div class="CA_SSECTION-1">
<div class="CA_SSECTION-1">
	<ul>
		<li>
			<a href="/cate1/CA_SSECTION1"><span>실무역량</span>	</a>
		</li>
		<li>
			<a href="/cate1/CA_SSECTION2"><span>디자인툴</span></a>
		</li>
		<li>
			<a href="/cate1/CA_SSECTION3"><span>프로그래밍</span></a>
		</li>
	</ul>
</div>
<div class="CA_SSECTION-2">
	<ul>
	
		<li>
			<a href="/cate2/CA_SSECTION1"><span>영어</span></a>
		</li>
		<li>
			<a href="/cate2/CA_SSECTION2"><span>중국어</span></a>
		</li>
		<li>
			<a href="/cate2/CA_SSECTION3"><span>일본어</span></a>
		</li>
	</ul>
</div>
<div class="CA_SSECTION-3">
	<ul>
		<li>
			<a href="/cate3/CA_SSECTION1"><span>운동</span></a>
		</li>
		<li>
			<a href="/cate3/CA_SSECTION2"><span>음악</span></a>
		</li>
		<li>
			<a href="/cate3/CA_SSECTION3"><span>뷰티</span></a>
		</li>
	</ul>
</div>
<div class="CA_SSECTION-4">
	<ul>
		<li>
			<a href="/cate4/CA_SSECTION1"><span>여행</span></a>
		</li>
		<li>
			<a href="/cate4/CA_SSECTION2"><span>자격증</span></a>
		</li>
		<li>
			<a href="/cate4/CA_SSECTION3"><span>교양</span></a>
		</li>
	</ul>
</div>
</div>
</div>

<script>
function SelectCa_Ssection(CA_SSECTION){
	var i = 0;
	for(i=1; i<4; i++){
		document.getElementById("CA_SSECTION-"+i).style.display="none";
	}
}
</script>
</body>
</html>