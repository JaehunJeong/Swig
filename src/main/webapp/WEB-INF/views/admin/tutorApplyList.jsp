<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>튜터번호</th>
			<th>회원번호</th>
			<th>학력/신분증인증</th>
			<th>학교</th>
			<th>학과</th>
			<th>재학상태</th>
			<th>재학증명서</th>
			<th>자격증 이름</th>
			<th>대기상태(Pending or Denied)</th>
		</tr>
	<thead>
	<tbody>
	</tbody>
</table>
<div id="PAGE_NAVI"></div>
<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
<br />
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
		$(document).ready(function(){
			window.onload=function(){fn_selectTutorList(1);};
		});
		 
		function fn_openTutorDetail(obj){
		    var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='adminMemberDetail' />");
		    comSubmit.addParam("M_NO", obj.parent().find("#M_NO").val());
		    comSubmit.submit();
		}
		function fn_openTutorScert(obj){
		    var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='adminTutorScert' />");
		    comSubmit.addParam("T_NO", obj.parent().find("#T_NO").val());
		    comSubmit.submit();
		}
		function fn_openTutorPermit(obj){
		    var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='tutorApplyPermit' />");
		    comSubmit.addParam("T_NO",$("#T_NO").val());
		    comSubmit.submit();
		}
		
		function fn_openTutorDeny()
		{
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='tutorApplyDeny'/>");
			comSubmit.addParam("T_NO",$("#T_NO").val());
			comSubmit.submit();
		}
		 
		function fn_selectTutorList(pageNo){
		    var comAjax = new ComAjax();
		    comAjax.setUrl("<c:url value='adminTutorList' />");
		    comAjax.setCallback("fn_selectTutorListCallback");
		    comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("M_NO_FE", $("#M_NO_FE").val());
		    comAjax.ajax();
		}
        
         
        function fn_selectTutorListCallback(data){
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
                    eventName : "fn_selectTutorList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.list, function(key, value){
                    str += "<tr>" +
                                "<td>" + value.T_NO + "</td>" +
                                "<td class='title'>" +
                                    "<a href='#this' name='name'>" + value.M_NAME + "</a>" +
                                    "<input type='text' id='M_NO' value=" + value.M_NO + ">" +
                                "</td>" +
                                "<td>" + value.T_NICK + "</td>" +
                                "<td>" + value.T_FINALEDU + "</td>" +
                                "<td>" + value.T_COLLEGE + "</td>" +
                                "<td>" + value.T_DEPT + "</td>" +
                                "<td>" + value.T_QUALIFICATION + "</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='scert'>" + value.T_SCERT + "</a>" +
                                	"<input type='text' id='T_NO' value=" + value.T_NO + ">" +
                            	"</td>" +
                            	"<td class='title'>" +
                                	"<a href='#this' name='c_name'>" + value.T_C_NAME + "</a>" +
                                	"<input type='text' id='T_NO' value=" + value.T_NO + ">" +
                            	"</td>" +
                                "<td>" + value.T_PASS + "</td>" +
                                "<td>"+
                                	"<a href='#this' class='btn' name='tutorPermit' id='tutorPermit'>신청 수락</a>"+
                                "</td>"+
                                "<td>"+
                            		"<a href='#this' class='btn' name='tutorDeny' id='tutorDeny'>신청 거절</a>"+
                            	"</td>"+
                            "</tr>";
                });
                body.append(str);
                 
                $("a[name='name']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorDetail($(this));
                });
                $("a[name='scert']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorDetail($(this));
                });
                $("a[name='tutorPermit']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorPermit($(this));
                });
                $("a[name='tutorDeny']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorDeny($(this));
                });
            }
        }
    </script>
</body>
</html>
		<%-- <tr>
			<td>${map.T_NO }</td>
			<td>${map.M_NO }</td>
			<td>${map.T_NICK }</td>
			<td>${map.T_FINALEDU }</td>
			<td>${map.T_COLLEGE }</td>
			<td>${map.T_DEPT }</td>
			<td>${map.T_QUALIFICATION }</td>
			<td>${map.T_SCERT }</td>
			<td>${map.T_C_NAME}</td>
			<td>${map.T_NO }</td>
		</tr> --%>
	
	
