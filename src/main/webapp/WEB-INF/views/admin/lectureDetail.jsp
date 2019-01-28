<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#list").on("click",function(e){
			e.preventDefault();
			fn_openLectureList();
		});
		
		$("#update").on("click",function(e){
			e.preventDefault();
			fn_openLectureUpdate();
		});
	});
	function fn_openMemberList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openLectureList'/>");
		comSubmit.submit();
	}
	function fn_openMemberUpdate(){
		var M_NO = "${map.M_NO}";
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='lectureModify'/>");
		comSubmit.addParam("M_NO",M_NO);
		comSubmit.submit();
	} 
	</script>
</head>
<body>
	<table>
			<tr>
				<td>강의번호</td>
				<td>회원번호</td>
				<td>수업제목</td>
				<td>카테고리 인덱스</td>
				<td>수업형태</td>
				<td>비디오</td>
				<td>튜터소개</td>
				<td>수업소개</td>
				<td>수업대삭</td>
				<td>커리큘럼소개</td>
				<td>커리큘럼갯수</td>
				<td>시간당가격</td>
				<td>회당 수업시간</td>
				<td>월 기준 수업횟수</td>
				<td>총 수업가격</td>
				<td>조회수</td>
				<td>강의개설날짜</td>
			</tr>
			<tr>
				<td>${map.M_NO }</td>
			<tr>
			<tr>
				<td>${map.M_NAME }</td>
			</tr>
			<tr>
			
				<td>${map.M_EMAIL }</td>
			</tr>
			<tr>
				<td>${map.M_PASSWD }</td>
			</tr>
			<tr>
				<td>${map.M_BIRTH }</td>
			</tr>
			<tr>
				<td>${map.M_PHONE }</td>
			</tr>
			<tr>
				<td>${map.M_JOB }</td>
			</tr>
			<tr>
				<td>${map.M_TUTOR }</td>
			</tr>
			<tr>
				<td>${map.C_NO }</td>
			</tr>
			<tr>
				<td>${map.M_SEX }</td>
			</tr>
			<tr>
				<td>${map.M_SNS }</td>
			</tr>
			<tr>
				<td>${map.M_PHONEC }</td>
			</tr>
	</table>
	<br/>
	
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">수정하기</a>
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	
</body>
</html>