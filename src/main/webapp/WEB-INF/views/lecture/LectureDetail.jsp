<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<title>Insert title here</title>
</head>
<body>


<!-- 상단에 이미지 삽입 -->
<div class="class_img">
	<iframe width="840" height="540" src="/Tutor/~~" frameborder="0"></iframe>	
</div>

<div class="class_d_wrap">
<!-- 튜터정보,수업소개,리뷰,실시간톡 에 대한 상단 네비 -->
	<div id="class_navi">
		<ul>
			<li><a href="#tutorinfo" id="tli">튜터</a></li>
			<li><a href="#Introduction" id="ili">수업소개</a></li>
			<li><a href="#review" id="rli">리뷰</a>
			<li><a href="#qna" id="qli">실시간톡</a>
		</ul>
	</div>


	<div class="class_detail detail_sec_bor" id="tutorinfo">
		<div class="section01" id="tutor">
			<h1>튜터정보</h1>
		</div>
		<div class=d_info04>
			<td>${L_OPEN.L_DESCRIBE_T}</td>
		</div>
	</div>
	
	<div class="class_detail detail_sec_bor" id="Introduction">
		<div class="section01">
			<h1>수업소개</h1>
			<div class="d_info04">
			<td>${L_OPEN.L_DESCIRBE_L}</td>
			</div>
		</div>
	</div>
	
	<div class="class_detail detail_sec_bor">
		<div class="section01">
			<h1 class="mt50">수업대상</h1>
			<ul class="d_info03">
			<td>${L_OPEN.L_DESCRIBE_TARGET}</td>
			</ul>
		</div>
	</div>
	
	<div class="class_detail detail_sec_bor">
		<div class="section01">
			<h1>커리큘럼</h1>
			<div class="curriculum_cont">
				<h2>강의계획</h2>
			<dl class="step_cont">
			<td>${L_OPEN.L_CURRI_TEXT}</td>
			</dl>
			</div>
		</div>
	</div>
	
	<div class="class_detail detail_sec_bor" id="review">
		<div class="section01">
			<h1>리뷰</h1>
			<a class="btn_st" id="btn-write-review">리뷰쓰기</a>
			<img src="/resources/images/">
			</div>
			
			<div class="review_count01">
				<ul>
					<li>커리큘럼
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
					</li>
					<li>전달력
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
					</li>
					<li>준비성
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
					</li>
					<li>친절도
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
					</li>
					<li>시간준수
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
						<img src="/resources/images/">
					</li>
				</ul>
			</div>
			
			<c:forEach var="reviewlist" items="${list}" varStatus="status">
			<fmt:parseNumber var="blank" type="number" value="${LECTURE_REVIEW.LR_NO}"/>
			<div class="review">
				<c:out value="${LECTURE_REVIEW.M_NO}"/> <c:out value="${LECTURE_REVIEW.LR_REGDATE}"/>
				<c:if test="${session_m_no == LECTURE_REVIEW.M_NO}">
					<a href="#" onclick="fn_deleteReview('<c:out value="${LECTURE_REVIEW.LR.NO}"/>')">삭제</a>
					<a href="#" onclick="fn_reviewUpdate('<c:out value="${LECTURE_REVIEW.LR.NO}"/>')">수정</a>
				</c:if>
				<br/>
				<div id="review<c:out value="${LECTURE_REVIEW.LR_NO}"/>">
					<c:out value="${LECTURE_REVIEW.LR_COMMENT}"/>
				</div>
			</div>
			</c:forEach>

		</div>
	</div>

	<div class="class_detail detail_sec_bor" id="qna">
		<div class="section01">
			<h1>실시간 톡</h1>
			
		</div>
	</div>
	
	
	
	
	
<script>

$('#btn-write-review').click(function () {			
	M_NO = document.getElementById('M_NO').value;
	R_REQUEST= document.getElementById('R_REQUEST').value;
	
	if (M_NO == '') {
		alert('로그인이 필요합니다');
		$('#login-popup').show();
	}
	else {
		$.post('/insertReview', {}, function (R_REQUEST) {
			if (res=='Y') {
				$('#popup-write-review').show();
			} else {				
				alert('수업을 수강한 아이디만 리뷰를 작성할 수 있습니다. 아이디를 확인해주세요!');
			}
		});		
	}
});		

</script>
	
</body>
