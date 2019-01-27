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

<div id="container_detail">
<input type="hidden" id="MEMBER.M_NO" value="">
<input type="hidden" id="tutorImage">
<input type="hidden" id="TUTOR.M_NO" value="">
<input type="hidden" id="R_RESULT" value="">

<%-- <div class="class_img">
	<iframe width="840" height="540" src="/lecture/LectureDetail/?L_no='${L_OPEN.L_NO}'" frameborder="0"></iframe>
</div> 생각해야함...--%>
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
			<c:out value="${L_OPEN.L_DESCRIBE_T}"/>
		</div>
	</div>
	
	<div class="class_detail detail_sec_bor" id="Introduction">
		<div class="section01">
			<h1>수업소개</h1>
			<div class="d_info04">
			<c:out value="${L_OPEN.L_DESCIRBE_L}"/>
			</div>
		</div>
	</div>

	<div class="class_detail detail_sec_bor">
		<div class="section01">
			<h1 class="mt50">수업대상</h1>
			<ul class="d_info03">
			<c:out value="${L_OPEN.L_DESCRIBE_TARGET}"/>
			</ul>
		</div>
	</div>

	<div class="class_detail detail_sec_bor">
		<div class="section01">
			<h1>커리큘럼</h1>
			<div class="curriculum_cont">
				<h2>강의계획</h2>
			<dl class="step_cont">
			<c:out value="${L_OPEN.L_CURRI_TEXT}"/>
			</dl>
			</div>
		</div>
	</div>
	
	<div class="class_detail detail_sec_bor" id="review">
		<div class="section01">
			<h1>리뷰</h1>
			<c:choose>
				<c:when test="${LECTURE_REVIEW.LR_TOTALSCORE == ''}">
				 <td>평점 : ${LECTURE_REVIEW.LR_TOTALSCORE} 점</td><img src="resources/images/star.png">
				
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
				 </c:when>
				 <c:otherwise>
				 	리뷰가 준비중입니다!
				 </c:otherwise>
				</c:choose>
			</div>
		</div>
			
					
	<div class="btn_st" id="btn-write-review">
		<a class="addbtn" onclick="addReview()">리뷰쓰기</a>
	</div>
	
	<div id="popup-write-review" class="popup popup-write-review" data-hide="popup-write-review">
	<form name="review_form" id="review_form" action="/insertReview" method="POST" class="popup-content" id="frm-write-review">
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
			<a href="" onclick="fn_insertReview()">리뷰 올리기</a>
		</div>
		<table>
			<tbody>
		<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach items="${list }" var="row" varStatus="status">
							<tr>
								<td>${row.M_NAME}</td>
								<td>${row.LR_COMMENT}</td>
								<td>${row.LR_REGDATE}</td>
							</tr>
							<c:if test="${session_member_no == LECTURE_REVIEW.M_NO}">
								<a href="" onclick="fn_deleteReview('<c:out value="${LECTURE_REVIEW.LR.NO}"/>')">삭제</a>
								<a href="" onclick="fn_reviewUpdate('<c:out value="${LECTURE_REVIEW.LR.NO}"/>')">수정</a>
						</c:if>
						</c:forEach>
					</c:when>
				</c:choose>
			</tbody>
		</table>
		<div id="PAGE_NAVI"></div>
		<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
		
		<%-- <c:forEach var="reviewlist" items="${list}" varStatus="status">
			<fmt:parseNumber var="blank" type="number" value="${LECTURE_REVIEW.LR_NO}"/>
			<div class="review">
				<c:out value="${LECTURE_REVIEW.M_NO}"/> <c:out value="${LECTURE_REVIEW.LR_REGDATE}"/>
				<c:if test="${session_member_no == LECTURE_REVIEW.M_NO}">
					<a href="" onclick="fn_deleteReview('<c:out value="${LECTURE_REVIEW.LR.NO}"/>')">삭제</a>
					<a href="" onclick="fn_reviewUpdate('<c:out value="${LECTURE_REVIEW.LR.NO}"/>')">수정</a>
				</c:if>
				<br/>
				<div id="review<c:out value="${LECTURE_REVIEW.LR_NO}"/>">
					<c:out value="${LECTURE_REVIEW.LR_COMMENT}"/>
				</div>
			</div>
			</c:forEach> --%>
		</form>
		</div>
	</div>
	</div>
		<div class="class_detail detail_sec_bor" id="qna">
		<div class="section01">
			<h1>실시간 톡</h1>
		</div>
	</div>
	
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
$(document).ready(function(){
	fn.selectReview(1);
});

$('#btn-write-review').click(function () {			
	M_NO = document.getElementById('MEMBER.M_NO').value;
	R_RESULT= document.getElementById('R_RESULT').value;
	
	if (M_NO == '') {
		alert('로그인이 필요합니다');
		$('#login-popup').show();
	}
	else {
		$.post('./insertReview', {}, function (R_RESULT) {
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

function fn_selectReviewList(pageNo)
{
	var comAjax = new ComAjax();
	comAjax.setUrl("<c:url value='/selectReviewList'/>")
	comAjax.setCallback("fn_selectReviewListCallback");
	comAjax.addParam("PAGE_INDEX",pageNo);
	comAjax.addParam("PAGE_ROW",15);
	comAjax.ajax();
}

function fn_selectReviewListCallback(data){
	var total = data.TOTAL;
	var body = $("table>tbody");
	body.empty();
	if(total == 0) {
		var str = "";
		body.append(str);
	} else{
		var params = {
				divId : "PAGE_NAVI",
				pageIndex : "PAGE_INDEX",
				totalCount : total,
				eventName : "fn_selectReviewList"
		};
		gfn_renderPaging(params);
		
		var str = "";
		$.each(data.list, function(key, value){
			str += "<tr>" + "<td>" + value.M_NAME + "</td>" + 
			        		"<td>" + value.LR_COMMENT + "</td>" +
			        		"<td>" + value.LR_REGDATE + "</td>" +
			       "</tr>";
		});
		body.append(str);
		
	}
}

function addReview()
{						
	M_NO = document.getElementById('MEMBER.M_NO').value;
	if(M_NO!=''){
	document.getElementById('popup-write-review').style.display = "block";
	document.getElementById('addReview').style.display = "none";
	}
}

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

<!-- 부트스트랩을 사용해야 별점체크가 가능하다 -->