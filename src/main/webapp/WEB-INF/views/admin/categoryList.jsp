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
			<th>카테고리번호</th>
			<th>대분류</th>
			<th>소분류</th>
		</tr>
	</thead>
	<tbody>
	
	
	</tbody>
</table>
<div id ="div_list"></div>
<a href="#this" class="btn" id="add">추가하기</a>
<div id="PAGE_NAVI"></div>
<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
<br />
<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
        $(document).ready(function(){
        	window.onload=function(){fn_selectCategoryList(1);};
        	//var w = window.open("about:blank","_blank",'popup','width=340,height=420,scrollbars=yes');
        	$("#add").on("click",function(e){
    			e.preventDefault();
				
    			fn_openTutorInsert();
    		});
    		
    		
        });
        function fn_openTutorInsert(obj){
        	//var comSubmit = new ComSubmit();
    		window.open('<c:url value="openAddCategory"/>','popup','width=340,height=420,scrollbars=yes');
        	//comSubmit.setUrl("<c:url value='openAddCategory'/>");
    		//comSubmit.submit();
        } 
        function fn_openCategoryModify(val){
        	//var val =$("#CA_IDX").val();
        	var url = "openModifyCategory?CA_IDX="+val;
        	
        	window.open(url,'popupView','몰라');
        	
        }
        /* function fn_openCategoryModify(){
        	//var comSubmit = new ComSubmit();
        	//comSubmit.setUrl("<c:url value='openModifyCategory'/>");
        	//comSubmit.addParam("CA_IDX",$("#CA_IDX").val());
        	
        	//comSubmit.submit();
        	//window.open('<c:url value="openModifyCategory/?CA_IDX="/>','popup','width=340,height=420,scrollbars=yes');
        	/* var CA_IDX = $("#CA_IDX").val();
        	
        	$.ajax({
        		url : "<c:url value='openModifyCategory'/>",
        		type : 'GET',
        		data : CA_IDX,
        		success : function(data){
        			w.location.href="<c:url value='openModifyCategory'/>";
        		}
        		//error: function(xhr, status, error) {alert(error);}
        		/* function(data){
        			//window.open('<c:url value="openModifyCategory"/>','popup','width=340,height=420,scrollbars=yes');
        			eventSuccess
        		} 
        	}); //
        	//var CA_IDX = $("#CA_IDX").val();
        	//var s =document.getElementByID('CA_IDX').value;
        	//var val =  $("#CA_IDX").val();
        	var url = "openModifyCategory?CA_IDX="+val;
        	//var encode = encodeURI(url);
        	window.open(url,'popupView','몰라');
        	
        } */
        
        function fn_openCategoryDelete(obj){
        	var comSubmit = new ComSubmit();
    		comSubmit.setUrl("<c:url value='deleteCategory'/>");
    		//comSubmit.addParam("CA_NO",$("#CA_NO").val());
    		comSubmit.addParam("CA_IDX",$("#CA_IDX").val());
    		comSubmit.submit();
        }
         
        function fn_selectCategoryList(pageNo){
            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='categoryList' />");
            comAjax.setCallback("fn_selectCategoryListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
        
         
        function fn_selectCategoryListCallback(data){
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
                    eventName : "fn_selectCategoryList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.categoryList, function(key, value){
                    str += "<tr>" +
                                "<td>" + value.CA_NO + "</td>" +
                                "<td>" + value.CA_LSECTION + "</td>" +
                                "<td>" + value.CA_SSECTION + "</td>" +
                                "<td>" +
                                "<a href='#this' name='delete'>비활성화 시키기</a>" +
                                //"<input type='text' id='CA_IDX' name='CA_IDX' value=" + value.CA_IDX + ">" +
                                "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
                                //"<a href='#this' name='update'><input type='text' id='"+key+"' value='"+value.CA_IDX+"'/>"+key+"카테고리 이동하기</a>" +
                                //"<a href='#this' name='update'><input type='text' id='CA_IDX' value='"+value.CA_IDX+"'/>카테고리 이동하기</a>" +
                                "<input type='text' id='CA_IDX' value='"+value.CA_IDX+"'/>" +
                                "<input type='button' id='btn' value='카테고리 이동하기' onclick='fn_openCategoryModify("+value.CA_IDX+");'/>"
                            "</td>" +
                            "</tr>";
                });
                body.append(str);
                 
               $("a[name='delete']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openCategoryDelete($(this));
                });
                
                
               
            }
        }
        
    </script>
</body>
</html>