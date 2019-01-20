<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script type="text/javascript">
	var gfv_count = '${fn:length(list)+1}';

	$(document).ready(function(){ //목록 버튼
		$("#list").on("click",function(e){
			e.preventDefault();
			fn_openMemberList();
		});
		
		$("#update").on("click",function(e){//저장하기
			e.preventDefault();
			fn_MemberUpdate();
		});
		$("#delete").on("click",function(e){
			e.preventDefault();
			fn_deleteMemberList();
		});
	});
	function fn_openMemberList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openMemberList'/>");
		comSubmit.submit();
	}
	function fn_MemberUpdate(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='userModify'/>");
		comSubmit.addParam("M_NO",$("#M_NO").val());
		comSubmit.addParam("M_PASSWD",$("#M_PASSWD").val());
		comSubmit.addParam("M_JOB",$("#M_JOB").val());

		comSubmit.submit();
	} 
	function fn_deleteMemberList()
	{
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='dropUser'/>");
		comSubmit.addParam("M_NO",$("#M_NO").val());
		comSubmit.submit();
	}
	</script>
</head>
<body>
	<table>				
			<tr>
				<td>번호</td>
				<td>
				${map.M_NO }
				<input type="hidden" id="M_NO" name="M_NO" value="${map.M_NO }"	>
				</td>
			<tr>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" id="M_NAME" name="M_NAME" class="" value="${map.M_NAME }"/>
				</td>
			</tr>
			<tr>				
				<td>메일</td>				
				<td>${map.M_EMAIL }</td>
			</tr>
			<tr>
				<td>비밀번호</td>				
				<td>
					<input type="password" id="M_PASSWD" name="M_PASSWD" class="" value="${map.M_PASSWD }"/>
				</td>
			</tr>
			<tr>
				<td>생년월일</td>				
				<td>${map.M_BIRTH }</td>
			</tr>
			<tr>
				<td>핸드폰</td>				
				<td>${map.M_PHONE }</td>
			</tr>
			<tr>
				<td>직업</td>					
				<td>
					<input type="text" id="M_JOB" name="M_JOB" class="" value="${map.M_JOB }"/>
				</td>
			</tr>
			<tr>
				<td>튜터</td>				
				<td>${map.M_TUTOR }</td>
			</tr>
			<tr>
				<td>쿠폰</td>		
				<td>${map.C_NO }</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>${map.M_SEX }</td>
			</tr>
			<tr>
				<td>소셜인증</td>
				<td>${map.M_SNS }</td>
			</tr>
			<tr>
				<td>폰인증</td>
				<td>${map.M_PHONEC }</td>
			</tr>
	</table>
	<br/>
	
	<a href="#this" class="btn" id="list">목록으로</a>
	<a href="#this" class="btn" id="update">저장하기</a>
	<a href="#this" class="btn" id="delete">삭제하기</a>
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	
</body>
</html>