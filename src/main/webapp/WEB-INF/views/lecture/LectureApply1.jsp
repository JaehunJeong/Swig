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

<form name="frm" action="LectureApplyInsert1" method="POST">
	<div id="Applylocation">
		<h5>위치</h5>
		<c:choose>
		<c:when test="${fn:length(map1) > 0}">
		<c:forEach items="${map1}" var="map1">
				<input type="button" id="location" value="${map1.LL_LOCATION}">
		</c:forEach>
		</c:when>
		</c:choose>
	</div>
	
	<div id="Applydate">
		<h5>요일</h5>
		<c:choose>
		<c:when test="${fn:length(map2) > 0}">
		<c:forEach items="${map2}" var="map2">
				<input type="button" id="location" value="${map1.LL_DATE}">
		</c:forEach>
		</c:when>
		</c:choose>
	</div>
	
	<div id="Applytime">
		<h5>시간</h5>
		<c:choose>
		<c:when test="${fn:length(map3) > 0}">
		<c:forEach items="${map3}" var="map3">
				<select>
					<option>
						${map3.LT_TIME}
					</option>
					<option>
						${map3.LT_TIME2}
					</option>
				</select>
		</c:forEach>
		</c:when>
		</c:choose>
	</div>
	
	<div id="DetailAddcost">
		<h5>장소</h5>
		<c:choose>
		<c:when test="${fn:length(map1) > 0}">			
				<input type="text" id="detail" value="${map1.LL_DETAIL}">
				<c:if test="${map1.LL_DETAIL==''}">
					협의 후 결정
				</c:if>
		</c:when>
		</c:choose>
		
		<h5>추가비용</h5>
		<c:choose>
		<c:when test="${fn:length(map1) > 0}">			
				<input type="text" id="cost" value="${map1.LL_ADDCOST}">
				<c:if test="${map1.LL_ADDCOST==''}">
					없음
				</c:if>
		</c:when>
		</c:choose>
	</div>
	<div class="apply_button"><div class="btn_red" onclick="send();">다음</div></div>
</form>

<script>
function setMode()
{
	if (($('location').val()==''))
	{
		alert('첫 수업 일자를 선택해주세요');
	}
	else{
		$('#frm').submit();
	}
}
</script>
</body>
</html>