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

<div name="category">

	
	<div id="CA_LSECTION">
	<form name="category" id="category" method="post">
    <div name="cate1" onclick="selectcate1()"> <!-- onmouseover="SelectCa_Ssection('CA_SSECTION-1')" -->컴퓨터</div>
	<div name="cate2" onclick="selectcate2()"><!--  onmouseover="SelectCa_Ssection('CA_SSECTION-2')"> -->외국어</div>
	<div name="cate3" onclick="selectcate3()"><!--  onmouseover="SelectCa_Ssection('CA_SSECTION-3')"> -->라이프스타일</div>
	<div name="cate4" onclick="selectcate4()"><!-- < onmouseover="SelectCa_Ssection('CA_SSECTION-4')"> -->기타</div>
	</form>
	</div>

	
<div  id="CA_SSECTION" style="display:none;">
<div name="CA_SSECTION-1">
	
	<ul>
		<li>
			<a href="/cate1/CA_SSECTION1"><span>실무역량</span></a>
		</li>
		<li>
			<a href="/cate1/CA_SSECTION2"><span>디자인툴</span></a>
		</li>
		<li>
			<a href="/cate1/CA_SSECTION3"><span>프로그래밍</span></a>
		</li>
	</ul>
</div>
<div name="CA_SSECTION-2">
	<ul>
		<li>
			<a href="/cate2/CA_SSECTION1"><span>영어</span></a>
		</li>
		<li>
			<a href="/cate2/CA_SSECTION2"><span>중국어</span></a>
		</li>
		<li>
			<a href="/cate2/CA_SSECTION3"><span>일본어</span></a>
		</li>
	</ul>
</div>
<div name="CA_SSECTION-3">
	<ul>
		<li>
			<a href="/cate3/CA_SSECTION1"><span>운동</span></a>
		</li>
		<li>
			<a href="/cate3/CA_SSECTION2"><span>음악</span></a>
		</li>
		<li>
			<a href="/cate3/CA_SSECTION3"><span>뷰티</span></a>
		</li>
	</ul>
</div>
<div name="CA_SSECTION-4">
	<ul>
		<li>
			<a href="/cate4/CA_SSECTION1"><span>여행</span></a>
		</li>
		<li>
			<a href="/cate4/CA_SSECTION2"><span>자격증</span></a>
		</li>
		<li>
			<a href="/cate4/CA_SSECTION3"><span>교양</span></a>
		</li>
	</ul>
</div>
</div>
</div>

<div name="list">
	<table>
	<c:choose>
		<c:when test="${fn:length(lseclist1) > 0}">
			<c:forEach items="${lseclist1}" var="lseclist1">
				<thead>
				</thead>
				<tbody>
				
				</tbody>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td>개설된 강의가 없습니다.</td>
			</tr>
		</c:otherwise>
	</c:choose>
	</table>	
	
	<div id="PAGE_NAVI"></div>
	<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
	
</div>

<script>

$('#CA_LSECTION').mouseover(function(){
	$('#CA_SSECTION').show();
});

$('#CA_LSECTION').mouseout(function(){
	$('#CA_SSECTION').hide();
});

function selectcate1(){
	var form = document.category;
	form.action="<c:url value='/cate1' />";
	form.submit();
}

function selectcate2(){
	var form = document.category;
	form.action="<c:url value='/cate2' />";
	form.submit();   
}

function selectcate3(){
	var form = document.category;
	form.action="<c:url value='/cate3' />";
	form.submit();   
}

function selectcate4(){
	var form = document.category;
	form.action="<c:url value='/cate4' />";
	form.submit();   
}


function fn_selectLectureList(pageNo){
	 var comAjax = new ComAjax();
    comAjax.setUrl("<c:url value='/selectLectureList' />");
    comAjax.setCallback("fn_selectLectureListCallback");
    comAjax.addParam("PAGE_INDEX",pageNo);
    comAjax.addParam("PAGE_ROW", 15);
    comAjax.ajax();
}

function fn_selectLectureListCallback(data){
   var total = data.TOTAL;
   var body = $("table>tbody");
   body.empty();
   if(total == 0){
       var str = "<tr>" +
                       "<td colspan='4'>조회된 결과가 없습니다.</td>" +
                   "</tr>";
       body.append(str);
   }
   else{
       var params = {
           divId : "PAGE_NAVI",
           pageIndex : "PAGE_INDEX",
           totalCount : total,
           eventName : "fn_selectLectureList"
       };
       gfn_renderPaging(params);
        
       var str = "";
       $.each(data.list, function(key, value){
           str += "<tr>" +
                       "<td class='subject'>" +
                           "<a href='#this' name='name'>" + value.L_SUBJECT + "</a>" +
                           "<input type='hidden' id='L_NO' value=" + value.L_NO + ">" +
                       "</td>" +
                   "</tr>";
       });
       body.append(str);
        
       $("a[name='name']").on("click", function(e){ //제목
           e.preventDefault();
           fn_openLectureDetail($(this));
       });
   }
}
</script>
</body>
</html>