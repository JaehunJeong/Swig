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
<div class="list">
	<table>
	<c:choose>
		<c:when test="${fn:length(list) > 0}">
			<c:forEach items="${list}" var="row">
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
<ul>
</ul>

</div>

<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
$(document).ready(function(){
	window.onload=function(){fn_selectLectureList(1);};
	
	
});

function fn_openLectureDetail(obj){
	var comSubmit = new ComSubmit();
	 comSubmit.setUrl("<c:url value='/LectureDetail' />");
     comSubmit.addParam("L_NO", obj.parent().find("#L_NO").val());
     
     comSubmit.submit();
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
