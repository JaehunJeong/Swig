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
			fn_openMemberList();
		});
		
		$("#update").on("click",function(e){
			e.preventDefault();
			fn_openMemberUpdate();
		});
	});
	function fn_openMemberList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openMemberList'/>");
		comSubmit.submit();
	}
	function fn_openMemberUpdate(){
		var M_NO = "${map.M_NO}";
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openUserModify'/>");
		comSubmit.addParam("M_NO",M_NO);
		comSubmit.submit();
	} 
	</script>
</head>
<body>
	<table>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>메일</td>
				<td>비밀번호</td>
				<td>생년월일</td>
				<td>핸드폰</td>
				<td>직업</td>
				<td>튜터</td>
				<td>쿠폰</td>
				<td>성별</td>
				<td>소셜인증</td>
				<td>폰인증</td>
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