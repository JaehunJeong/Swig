<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>

</head>
<body>
<table>
	<thead>
		<tr>
			<th>강의 번호</th>
			<th>튜터 이름</th>
			<th>수업 제목</th>
			<th>카테고리</th>
			<th>수업 형태</th>
			<th>총 수업 가격</th>
			<th>강의 날짜</th>
			<th>강의 매칭 내역</th>
			<th>강의 상태</th>
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<div id="PAGE_NAVI"></div>
<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
<br />
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
        $(document).ready(function(){
        	window.onload=function(){fn_selectMemberList(1);};
              
            /* $("a[name='name']").on("click", function(e){ //제목
                e.preventDefault();
                fn_openMemberDetail($(this));
            });  */
        });
         
        function fn_openMemberDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='userDetail' />");
            comSubmit.addParam("M_NO", obj.parent().find("#M_NO").val());
            comSubmit.submit();
        }
         
        function fn_selectMemberList(pageNo){
            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='allUserList' />");
            comAjax.setCallback("fn_selectMemberListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("M_NO_FE", $("#M_NO_FE").val());
            comAjax.ajax();
        }
        
         
        function fn_selectMemberListCallback(data){
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
                    eventName : "fn_selectMemberList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.list, function(key, value){
                    str += "<tr>" +
                                "<td>" + value.L_NO + "</td>" +
                                "<td class='title'>" +
                                    "<a href='#this' name='name'>" + value.T_NICK + "</a>" +
                                    "<input type='text' id='T_NO' value=" + value.T_NO + ">" +
                                "</td>" +
                                "<td>" + value.M_EMAIL + "</td>" +
                                "<td>" + value.M_BIRTH + "</td>" +
                                "<td>" + value.M_PHONE + "</td>" +
                                "<td>" + value.M_JOB + "</td>" +
                                "<td>" + value.M_SEX + "</td>" +
                            "</tr>";
                });
                body.append(str);
                 
                $("a[name='name']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openMemberDetail($(this));
                });
            }
        }
    </script>
</body>
</html>