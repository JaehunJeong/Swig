<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header_wb.jspf" %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#listlecture").on("click",function(e){
			e.preventDefault();
			fn_openLectureList();
		});
		
		$("#update").on("click",function(e){
			e.preventDefault();
			fn_openLectureUpdate();
		});
		$("#list").on("click",function(e){
			e.preventDefault();
			fn_openMemberList();
		});
		
		$("#tutorList").on("click",function(e){
			e.preventDefault();
			fn_openTutorList();
		});
		
		$("#tutorApplyList").on("click",function(e){
			e.preventDefault();
			fn_openTutorApplyList();
		});
		
		$("#categoryList").on("click",function(e){
			e.preventDefault();
			fn_openCategoryList();
		});
		
		$("#lectureList").on("click",function(e){
			e.preventDefault();
			fn_openLectureList();
		});
		$("#lectureSellingList").on("click",function(e){
			e.preventDefault();
			fn_openLecturenSellingList();
		});
		$("#lectureDeleteList").on("click",function(e){
			e.preventDefault();
			fn_openLectureDeleteList();
		});
		$("#lectureSoldoutList").on("click",function(e){
			e.preventDefault();
			fn_openLectureSoldoutList();
		});
		$("#approveList").on("click",function(e){
			e.preventDefault();
			fn_openApproveList();
		});
		
		$("#refundList").on("click",function(e){
			e.preventDefault();
			fn_openRefundList();
		});
	});
	function fn_openMemberList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openMemberList'/>");
		comSubmit.submit();
	}
	
	function fn_openTutorList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openTutorList'/>");
		comSubmit.submit();
	}
	
	function fn_openTutorApplyList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openTutorApplyList'/>");
		comSubmit.submit();
	}
	
	function fn_openCategoryList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openCategoryList'/>");
		comSubmit.submit();
	}
	
	function fn_openLectureList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openLectureList'/>");
		comSubmit.submit();
	}
	function fn_openLecturenSellingList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openLectureSellingList'/>");
		comSubmit.submit();
	}
	function fn_openLectureDeleteList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openLectureDeletedList'/>");
		comSubmit.submit();
	}
	function fn_openLectureSoldoutList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openLectureSoldoutList'/>");
		comSubmit.submit();
	}
	function fn_openApproveList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openApproveList'/>");
		comSubmit.submit();
	}
	
	function fn_openRefundList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openRefundList'/>");
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
	
	<a href="#this" class="btn" id="listlecture">목록으로</a>
	<%@ include file="/WEB-INF/include/include-body_wb.jspf" %>
	
</body>
</html>