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
	
	</script>
</head>
<body>
	<br>
	
	<div>
		<ul>
			<li>
				<a href="#this" class="btn" id="list">멤버 리스트</a>
			</li>
			<li>
				<a href="#this" class="btn" id="tutorList">튜터 리스트</a>
			</li>
			<li>
				<a href="#this" class="btn" id="tutorApplyList">튜터 신청 대기자 리스트</a>
			</li>
			<li>
				<a href="#this" class="btn" id="categoryList">카테고리 관리</a>
			</li>
			<li>
				<a href="#this" class="btn" id="lectureList">등록된 강의 관리</a>
			</li>
		</ul>
	</div>
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
</body>
</html>