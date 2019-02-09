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
<form id="frm" name="frm">
<div class="category">
	<div class="category_L">
		<div>
		<c:forEach items="${caGroup}" var="caGroup" varStatus="status">
		<button id="cal" name="cal" onclick="selectCA()">
					${caGroup.CA_LSECTION}
		</button>
		</c:forEach>
		</div>
	</div>
	<div class="category_S">
		<input type="button" name="cas" id="cas" style="width:50pt;height:50pt"/>
	</div>
</div>


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
</form>
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

function selectCA(){
	var x=document.getElementById("cal").value;
	
	var list1= new Array();
	var list2= new Array();
	var list3= new Array();
	var list4= new Array();
	var list5= new Array();
	var list6= new Array();
	var list7= new Array();
	var list8= new Array();
	
	
	<c:forEach items="${list1}" var="items">
		list1.push("${items.CA_SSECTION}");
	</c:forEach>
	
	<c:forEach items="${list2}" var="items">
		list2.push("${items.CA_SSECTION}");
	</c:forEach>

	<c:forEach items="${list3}" var="items">
		list3.push("${items.CA_SSECTION}");
	</c:forEach>

	<c:forEach items="${list4}" var="items">
		list4.push("${items.CA_SSECTION}");
	</c:forEach>

	<c:forEach items="${list5}" var="items">
		list5.push("${items.CA_SSECTION}");
	</c:forEach>
	
	<c:forEach items="${list6}" var="items">
		list6.push("${items.CA_SSECTION}");
	</c:forEach>
	
	<c:forEach items="${list7}" var="items">
		list7.push("${items.CA_SSECTION}");
	</c:forEach>
	
	<c:forEach items="${list8}" var="items">
		list8.push("${items.CA_SSECTION}");
	</c:forEach>
	
	$('#cas').empty();
	
	if(x=="프로그래밍"){
		for(i=0;i<4;i++){
			document.frm.cas.options[i]=new Option(list1[i]);
		}
	}else if(x=="디자인 툴"){
		for(i=0;i<4;i++){
			document.frm.cas.options[i]=new Option(list2[i]);
		}
	}else if(x=="실무역량"){
		for(i=0;i<4;i++){
			document.frm.cas.options[i]=new Option(list3[i]);
		}
	}else if(x=="뷰티"){
		for(i=0;i<4;i++){
			document.frm.cas.options[i]=new Option(list4[i]);
		}
	}else if(x=="외국어"){
		for(i=0;i<4;i++){
			document.frm.cas.options[i]=new Option(list5[i]);
		}
	}else if(x=="음악"){
		for(i=0;i<4;i++){
			document.frm.cas.options[i]=new Option(list6[i]);
		}
	}else if(x=="라이프스타일"){
		for(i=0;i<4;i++){
			document.frm.cas.options[i]=new Option(list7[i]);
		}
	}else if(x=="운동"){
		for(i=0;i<4;i++){
			document.frm.cas.options[i]=new Option(list8[i]);
		}
	}
}
</script>
</body>
</html>
