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
<div class="row">
						<div class="col-md-4 animate-box" data-animate-effect="fadeInLeft">
							<h2 class="colorlib-heading">Review</h2>
							<h3>평점 : ${LR_TOTALSCORE}
							<span class="star-input"><span class="input">
							<img src="resources/images/star.png">
							<img src="resources/images/star.png">
							<img src="resources/images/star.png">
							<img src="resources/images/star.png">
							<img src="resources/images/star.png">
							</span></span>
							</h3>
							<div style="border: 1px solid; width: 600px; padding: 5px">
    							<form name="review_form" id="review_form" action="<c:url value='/LectureDetail/insertReview' />" method="post">
        						<input type="hidden" name="L_NO" value="<c:out value="${map.L_NO}"/>"> 
        						<input type="hidden" name="M_NO" value="<c:out value="${session_member_no}"/>">
        						<c:if  test = "${fn:length(check) == 0}">
        						<span class="LR_SCORE1">
  								<span class="input">
    								<input type="radio" name="LR_SCORE1" id="p1" value="1"><label for="p1">1</label>
    								<input type="radio" name="LR_SCORE1" id="p2" value="2"><label for="p2">2</label>
    								<input type="radio" name="LR_SCORE1" id="p3" value="3"><label for="p3">3</label>
    								<input type="radio" name="LR_SCORE1" id="p4" value="4"><label for="p4">4</label>
    								<input type="radio" name="LR_SCORE1" id="p5" value="5"><label for="p5">5</label>
  								</span>
  									<output for="LR_SCORE1"><b>0</b>점</output>
								</span>
								<span class="LR_SCORE2">
  								<span class="input">
    								<input type="radio" name="LR_SCORE2" id="p1" value="1"><label for="p1">1</label>
    								<input type="radio" name="LR_SCORE2" id="p2" value="2"><label for="p2">2</label>
    								<input type="radio" name="LR_SCORE2" id="p3" value="3"><label for="p3">3</label>
    								<input type="radio" name="LR_SCORE2" id="p4" value="4"><label for="p4">4</label>
    								<input type="radio" name="LR_SCORE2" id="p5" value="5"><label for="p5">5</label>
  								</span>
  									<output for="LR_SCORE2"><b>0</b>점</output>
								</span><span class="LR_SCORE3">
  								<span class="input">
    								<input type="radio" name="LR_SCORE3" id="p1" value="1"><label for="p1">1</label>
    								<input type="radio" name="LR_SCORE3" id="p2" value="2"><label for="p2">2</label>
    								<input type="radio" name="LR_SCORE3" id="p3" value="3"><label for="p3">3</label>
    								<input type="radio" name="LR_SCORE3" id="p4" value="4"><label for="p4">4</label>
    								<input type="radio" name="LR_SCORE3" id="p5" value="5"><label for="p5">5</label>
  								</span>
  									<output for="LR_SCORE3"><b>0</b>점</output>
								</span><span class="LR_SCORE4">
  								<span class="input">
    								<input type="radio" name="LR_SCORE4" id="p1" value="1"><label for="p1">1</label>
    								<input type="radio" name="LR_SCORE4" id="p2" value="2"><label for="p2">2</label>
    								<input type="radio" name="LR_SCORE4" id="p3" value="3"><label for="p3">3</label>
    								<input type="radio" name="LR_SCORE4" id="p4" value="4"><label for="p4">4</label>
    								<input type="radio" name="LR_SCORE4" id="p5" value="5"><label for="p5">5</label>
  								</span>
  									<output for="LR_SCORE4"><b>0</b>점</output>
								</span><span class="LR_SCORE5">
  								<span class="input">
    								<input type="radio" name="LR_SCORE5" id="p1" value="1"><label for="p1">1</label>
    								<input type="radio" name="LR_SCORE5" id="p2" value="2"><label for="p2">2</label>
    								<input type="radio" name="LR_SCORE5" id="p3" value="3"><label for="p3">3</label>
    								<input type="radio" name="LR_SCORE5" id="p4" value="4"><label for="p4">4</label>
    								<input type="radio" name="LR_SCORE5" id="p5" value="5"><label for="p5">5</label>
  								</span>
  									<output for="LR_SCORE5"><b>0</b>점</output>
								</span>
				
        						</c:if>
        						<textarea name="LR_COMMENT" id="LR_COMMENT" rows="3" cols="60" maxlength="500" placeholder="후기를 달아주세요."></textarea>
        						<a href="#" onclick="fn_insertReview()">저장</a>
    							</form>
							</div>

							<c:forEach var="reviewlist" items="${list}" varStatus="status">
							<fmt:parseNumber var = "blank" type = "number"/>
    						<div style="border: 1px solid gray; width: 600px; padding: 5px; margin-top: 5px; margin-left: <c:out value="${20*blank}"/>px; display: inline-block">
        						<c:choose>
        							<c:if test="${session_member_no == LECTURE_REVIEW.M_NO}">
        								<a href="#" onclick="fn_deleteReview('<c:out value="${LECTURE_REVIEW.M_NO}"/>')">삭제</a>
        							</c:if>
        							<c:otherwise>
	        							<c:out value="${LECTURE_REVIEW.M_NO}"/> <c:out value="${LECTURE_REVIEW.LR_REGDATE}"/>
	        							<c:if test="${session_m_id == reviewlist.M_ID}">
        									<a href="#" onclick="fn_deleteReview('<c:out value="${LECTURE_REVIEW.LR_NO}"/>','<c:out value="${LECTURE_REVIEW.LR_SCORE1}"/>',
        									'<c:out value="${LECTURE_REVIEW.LR_SCORE2}"/>','<c:out value="${LECTURE_REVIEW.LR_SCORE3}"/>','<c:out value="${LECTURE_REVIEW.LR_SCORE4}"/>','<c:out value="${LECTURE_REVIEW.LR_SCORE5}"/>')">삭제</a>
        									<a href="#" onclick="fn_reviewUpdate('<c:out value="${LECTURE_REVIEW.LR_NO}"/>')">수정</a>
        								</c:if>
        									<a href="#" onclick="fn_reviewReply('<c:out value="${LECTURE_REVIEW.LR_NO}"/>')">댓글</a>
        								<br/>
        								<div id="review<c:out value="${LECTURE_REVIEW.LR_NO}"/>">	
        									<c:out value="${LECTURE_REVIEW.LR_COMMENT}"/>
        								</div>
        							</c:otherwise>
        						</c:choose>
    						</div>
							</c:forEach>

							<div id="reviewDiv" style="width: 99%; display:none">
    							<form name="form2" id="form2" action="<c:url value='/LectureDetail/insertReview' />" method="post">
    							    <input type="hidden" name="L_NO" id="L_NO">
        							<input type="hidden" name="LR_SCORE1" id="LRSOCRE1">
        							<input type="hidden" name="LR_SCORE2" id="LRSOCRE2">
        							<input type="hidden" name="LR_SCORE3" id="LRSOCRE3">
        							<input type="hidden" name="LR_SCORE4" id="LRSOCRE4">
        							<input type="hidden" name="LR_SCORE5" id="LRSOCRE5">
        							<input type="hidden" name="LR_NO" id="LR_NO"> 
        							<input type="hidden" name="M_NO" value="<c:out value="${session_member_no}"/>">
        							<textarea name="LR_COMMENT" rows="3" cols="60" maxlength="500"></textarea>
        							<a href="#" onclick="fn_reviewUpdateSave()">저장</a>
        							<a href="#" onclick="fn_reviewUpdateCancel()">취소</a>
    							</form>
							</div>

							
						</div>
					</div>

</body>
</html>