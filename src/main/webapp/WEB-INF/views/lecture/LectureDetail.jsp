<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<title>Insert title here</title>
</head>
<body>


<div id="container_detail">

<input type="hidden" id="M_NO" value="">
<input type="hidden" id="R_RESULT" value="">

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
			평점 : <img src="resources/images/star.png">
			</div>
			
			<div class="review_count01">
				<ul>
					<li>커리큘럼
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
					</li>
					<li>전달력
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
					</li>
					<li>준비성
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
					</li>
					<li>친절도
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
					</li>
					<li>시간준수
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
						<img src="resources/images/star.png">
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
	
	<div id="popup-write-review" class="popup popup-write-review" data-hide="popup-write-review">
	<form name="review_form" id="review_form" action="./LectureDetail/insertReview" method="POST" class="popup-content" id="frm-write-review">
		<h1>
			튜터의 수업은 어떠셨나요?
		</h1>
		<div class="review-scores row">
			<div class="review-scores-detail review-scores-price" data-animate-effect="fadeInLeft">
				<label>커리큘럼</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="LR_SCORE1" id="LR_SCORE1" value="0" />
				</div>
			</div>
			<div class="review-scores-detail review-scores-quality">
				<label>전달력</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="LR_SCORE2" id="LR_SCORE2" value="0" />
				</div>
			</div>
			<div class="review-scores-detail review-scores-recommend">
				<label>준비성</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="LR_SCORE3" id="LR_SCORE3" value="0" />
				</div>
			</div>
			<div class="review-scores-detail review-scores-tran">
				<label>친절도</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="LR_SCORE4" id="LR_SCORE4" value="0" />
				</div>
			</div>
			<div class="review-scores-detail review-scores-kind">
				<label>시간준수</label>
				<div class="stars">
					<i class="glyphicon glyphicon-star" data-value="1"></i>
					<i class="glyphicon glyphicon-star" data-value="2"></i>
					<i class="glyphicon glyphicon-star" data-value="3"></i>
					<i class="glyphicon glyphicon-star" data-value="4"></i>
					<i class="glyphicon glyphicon-star" data-value="5"></i>
					<input type="hidden" name="LR_SCORE5" id="LR_SCORE5" value="0" />
				</div>
			</div>
		</div>
		<div class="REVIEW_COMMENT">
			<textarea name="LR_COMMENT" id="LR_COMMENT"></textarea>
			<a href="#" onclick="fn_insertReview()">리뷰 올리기</a>
		</div>
	</form>
</div>
	
<script>


$('#btn-write-review').click(function () {			
	M_NO = document.getElementById('M_NO').value;
	R_RESULT= document.getElementById('R_RESULT').value;
	
	if (M_NO == '') {
		alert('로그인이 필요합니다');
		$('#login-popup').show();
	}
	else {
		$.post('./LectureDetail/insertReview', {}, function (R_RESULT) {
			if (R_RESULT=='Y') {
				$('#popup-write-review').show();
			} else {				
				alert('수업을 수강한 아이디만 리뷰를 작성할 수 있습니다. 아이디를 확인해주세요!');
			}
		});		
	}
});		



$('#popup-write-review .stars i').click(function () {
	var val = Number($(this).data('value'));
	var parent = $(this).parent();
	var children = parent.children('i');

	for (var i = 0; i < 5; i++) {
		$(children[i]).removeClass('active');

		if (i < val) {
			$(children[i]).addClass('active');
		}
	}

	$(parent.children('input')).val(val);
});


$('#frm-write-review').submit(function () {
	if (Number($(this).find('[name=LR_SCORE1]').val()) === 0 || Number($(this).find('[name=LR_SCORE2]').val()) === 0 || Number($(this).find('[name=LR_SCORE3]').val()) === 0 || Number($(this).find('[name=LR_SCORE4]').val()) === 0 || Number($(this).find('[name=LR_SCORE5]').val()) === 0) {
		alert('별점은 한 개 이상 주세요');
		return false;
	}

	if (Number($(this).find('[name=LR_COMMENT]').val()) == '')
	{
		alert('리뷰 내용을 등록해주세요!');
		return false;

	}

	return true;
});

function fn_insertReview() {
	if ($.trim($("#LR_COMMENT").val()) == "") {
        alert("내용을 입력해주세요.");
        $("#LR_COMMENT").focus();
        return;
    }
    $("#review_form").submit();  
}

var updateLR_NO = updateLR_CONTENT = null;
function fn_reviewUpdate(LR_NO){
    var form = document.form2;
    var review = document.getElementById("review"+LR_NO);
    var reviewDiv = document.getElementById("reviewDiv");
    reviewDiv.style.display = ""
    if (updateLR_NO) {
        var oldR_NO = document.getElementById("review"+updateLR_NO);
        oldLR_NO.innerText = updateLR_CONTENT;
    } 
    
    form.LR_NO.value=LR_NO;
    form.LR_COMMENT.value = review.innerText;
    review.innerText ="";
    review.appendChild(reviewDiv);
    updateLR_NO = LR_NO;
    updateLR_CONTENT = form.LR_COMMENT.value;
    form.LR_COMMENT.focus();
} 

function fn_reviewUpdateSave(){
    var form = document.form2;
    if (form.LR_COMMENT.value=="") {
        alert("글 내용을 입력해주세요.");
        form.LR_COMMENT.focus();
        return;
    }
    
    form.action="<c:url value='/insertReview' />";
    form.submit();    
} 

function fn_reviewUpdateCancel(){
    var form = document.form2;
    var oldReno = document.getElementById("review"+updateLR_NO);
    oldReno.innerText = updateLR_COMMENT;
    updateLR_NO = updateLR_COMMENT = null;
} 

</script>
</body>
</html>