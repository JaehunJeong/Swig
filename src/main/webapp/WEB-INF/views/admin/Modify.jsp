<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script type="text/javascript">
        $(document).ready(function(){
        	document.getElementById('Category').style.display="none";
			document.getElementById('Category2').style.display="none";
			document.getElementById('Category3').style.display="none";
			document.getElementById('Category4').style.display="none";
			document.getElementById('Category5').style.display="none";
			document.getElementById('Category6').style.display="none";
			document.getElementById('Category7').style.display="none";
			document.getElementById('Category8').style.display="none";	
        	//window.onload=function(){fn_selectMemberList(1);};
            /* document.getElementById('radio1').style.display="none";
    		document.getElementById('radio2').style.display="none";
    		document.getElementById('radio3').style.display="none";
    		document.getElementById('radio4').style.display="none";
    		document.getElementById('radio5').style.display="none";
    		document.getElementById('radio6').style.display="none";
    		document.getElementById('radio7').style.display="none";
    		document.getElementById('radio8').style.display="none";	   */
        	$("#add1").on("click",function(e){
    			e.preventDefault();
    			fn_TutorInsert1();
    			
    		});
        	$("#add2").on("click",function(e){
    			e.preventDefault();
    			fn_TutorInsert2();
    			
    		});
        	$("#add3").on("click",function(e){
    			e.preventDefault();
    			fn_TutorInsert3();
    			
    		});
        	$("#add4").on("click",function(e){
    			e.preventDefault();
    			fn_TutorInsert4();
    			
    		});
        	$("#add5").on("click",function(e){
    			e.preventDefault();
    			fn_TutorInsert5();
    			
    		});
        	$("#add6").on("click",function(e){
    			e.preventDefault();
    			fn_TutorInsert6();
    			
    		});
        	$("#add7").on("click",function(e){
    			e.preventDefault();
    			fn_TutorInsert7();
    			
    		});
        	$("#add8").on("click",function(e){
    			e.preventDefault();
    			fn_TutorInsert8();
    			
    		});
        	
        });
        
        function fn_TutorInsert1(){
        	var params = $("#frm1").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='modifyCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function fn_TutorInsert2(){
        	var params = $("#frm2").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='modifyCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function fn_TutorInsert3(){
        	var params = $("#frm3").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='modifyCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function fn_TutorInsert4(){
        	var params = $("#frm4").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='modifyCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function fn_TutorInsert5(){
        	var params = $("#frm5").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='modifyCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function fn_TutorInsert6(){
        	var params = $("#frm6").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='modifyCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function fn_TutorInsert7(){
        	var params = $("#frm7").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='modifyCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function fn_TutorInsert8(){
        	var params = $("#frm8").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='modifyCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function chkRadio(val){
        	if(val == 1)
    		{
    			document.getElementById('radio1').style.display="block";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="none";
    			document.getElementById('radio5').style.display="none";
    			document.getElementById('radio6').style.display="none";
    			document.getElementById('radio7').style.display="none";
    			document.getElementById('radio8').style.display="none";		
    		}
    		else if(val==2)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="block";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="none";
    			document.getElementById('radio5').style.display="none";
    			document.getElementById('radio6').style.display="none";
    			document.getElementById('radio7').style.display="none";
    			document.getElementById('radio8').style.display="none";	
    		}
    		else if(val==3)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="block";
    			document.getElementById('radio4').style.display="none";
    			document.getElementById('radio5').style.display="none";
    			document.getElementById('radio6').style.display="none";
    			document.getElementById('radio7').style.display="none";
    			document.getElementById('radio8').style.display="none";		
    		}
    		else if(val==4)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="block";
    			document.getElementById('radio5').style.display="none";
    			document.getElementById('radio6').style.display="none";
    			document.getElementById('radio7').style.display="none";
    			document.getElementById('radio8').style.display="none";	
    		}
    		else if(val==5)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="none";
    			document.getElementById('radio5').style.display="block";
    			document.getElementById('radio6').style.display="none";
    			document.getElementById('radio7').style.display="none";
    			document.getElementById('radio8').style.display="none";	
    		}
    		else if(val==6)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="none";
    			document.getElementById('radio5').style.display="none";
    			document.getElementById('radio6').style.display="block";
    			document.getElementById('radio7').style.display="none";
    			document.getElementById('radio8').style.display="none";	
    		}
    		else if(val==7)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="none";
    			document.getElementById('radio5').style.display="none";
    			document.getElementById('radio6').style.display="none";
    			document.getElementById('radio7').style.display="block";
    			document.getElementById('radio8').style.display="none";	
    		}
    		else if(val==8)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="none";
    			document.getElementById('radio5').style.display="none";
    			document.getElementById('radio6').style.display="none";
    			document.getElementById('radio7').style.display="none";
    			document.getElementById('radio8').style.display="block";	
    		}
        	
        }
        function checkLayer(val){
	        	if(val == 1)
	    		{
	    			document.getElementById('Category').style.display="block";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="none";
	    			document.getElementById('Category5').style.display="none";
	    			document.getElementById('Category6').style.display="none";
	    			document.getElementById('Category7').style.display="none";
	    			document.getElementById('Category8').style.display="none";
	    			
	    			
	    		}
	    		else if(val==2)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="block";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="none";
	    			document.getElementById('Category5').style.display="none";
	    			document.getElementById('Category6').style.display="none";
	    			document.getElementById('Category7').style.display="none";
	    			document.getElementById('Category8').style.display="none";	
	    		}
	    		else if(val==3)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="block";
	    			document.getElementById('Category4').style.display="none";
	    			document.getElementById('Category5').style.display="none";
	    			document.getElementById('Category6').style.display="none";
	    			document.getElementById('Category7').style.display="none";
	    			document.getElementById('Category8').style.display="none";	
	    		}
	    		else if(val==4)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="block";
	    			document.getElementById('Category5').style.display="none";
	    			document.getElementById('Category6').style.display="none";
	    			document.getElementById('Category7').style.display="none";
	    			document.getElementById('Category8').style.display="none";	
	    		}
	    		else if(val==5)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="none";
	    			document.getElementById('Category5').style.display="block";
	    			document.getElementById('Category6').style.display="none";
	    			document.getElementById('Category7').style.display="none";
	    			document.getElementById('Category8').style.display="none";	
	    		}
	    		else if(val==6)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="none";
	    			document.getElementById('Category5').style.display="none";
	    			document.getElementById('Category6').style.display="block";
	    			document.getElementById('Category7').style.display="none";
	    			document.getElementById('Category8').style.display="none";	
	    		}
	    		else if(val==7)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="none";
	    			document.getElementById('Category5').style.display="none";
	    			document.getElementById('Category6').style.display="none";
	    			document.getElementById('Category7').style.display="block";
	    			document.getElementById('Category8').style.display="none";	
	    		}
	    		else if(val==8)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="none";
	    			document.getElementById('Category5').style.display="none";
	    			document.getElementById('Category6').style.display="none";
	    			document.getElementById('Category7').style.display="none";
	    			document.getElementById('Category8').style.display="block";	
	    		}

        	}
</script>
</head>
<body>
${map1 }${map2 }${map3 }${map4 }${map5 }${map6 }${map7 }${map8 }
				<c:choose>
			 			<c:when test="${map9.CA_LSECTION eq '프로그래밍' }">
							<div id="selectCA_NO">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" style	="display:none"/>프로그래밍
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);"/>디자인툴
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);"/>실무역량
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"/>뷰   티
								</div>
								<div id="radio5">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);"/>외국어
								</div>
								<div id="radio6">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);"/>음악
								</div>
								<div id="radio7">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);"/>라이프스타일
								</div>
								<div id="radio8">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);"/>운   동
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '디자인툴' }">
							<div id="selectCA_NO">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" />프로그래밍
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);" style="display:none"/>디자인 툴
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);"/>실무 역량
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"/>뷰   티
								</div>
								<div id="radio5">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);"/>외국어
								</div>
								<div id="radio6">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);"/>음악
								</div>
								<div id="radio7">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);"/>라이프스타일
								</div>
								<div id="radio8">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);"/>운   동
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '실무역량' }">
							<div id="selectCA_NO">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" />프로그래밍
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);" />디자인 툴
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);" style="display:none"/>실무 역량
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"/>뷰   티
								</div>
								<div id="radio5">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);"/>외국어
								</div>
								<div id="radio6">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);"/>음악
								</div>
								<div id="radio7">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);"/>라이프스타일
								</div>
								<div id="radio8">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);"/>운   동
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '뷰티' }">
							<div id="selectCA_NO">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" />프로그래밍
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);"/>디자인 툴
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);"/>실무 역량
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"  style	="display:none"/>뷰   티
								</div>
								<div id="radio5">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);"/>외국어
								</div>
								<div id="radio6">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);"/>음악
								</div>
								<div id="radio7">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);"/>라이프스타일
								</div>
								<div id="radio8">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);"/>운   동
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '외국어' }">
							<div id="selectCA_NO">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" />프로그래밍
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);"/>디자인 툴
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);"/>실무 역량
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"/>뷰   티
								</div>
								<div id="radio5">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);" style	="display:none"/>외국어
								</div>
								<div id="radio6">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);"/>음악
								</div>
								<div id="radio7">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);"/>라이프스타일
								</div>
								<div id="radio8">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);"/>운   동
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '음악' }">
							<div id="selectCA_NO">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" />프로그래밍
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);" />디자인 툴
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);"/>실무 역량
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"/>뷰   티
								</div>
								<div id="radio5">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);"/>외국어
								</div>
								<div id="radio6">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);" style	="display:none"/>음악
								</div>
								<div id="radio7">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);"/>라이프스타일
								</div>
								<div id="radio8">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);"/>운   동
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '라이프스타일' }">
							<div id="selectCA_NO">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" />프로그래밍
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);"/>디자인 툴
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);"/>실무 역량
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"/>뷰   티
								</div>
								<div id="radio5">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);"/>외국어
								</div>
								<div id="radio6">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);"/>음악
								</div>
								<div id="radio7">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);" style	="display:none"/>라이프스타일
								</div>
								<div id="radio8">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);"/>운   동
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '운동' }">
							<div id="selectCA_NO">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" />프로그래밍
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);" />디자인 툴
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);"/>실무 역량
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"/>뷰   티
								</div>
								<div id="radio5">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);"/>외국어
								</div>
								<div id="radio6">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);"/>음악
								</div>
								<div id="radio7">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);"/>라이프스타일
								</div>
								<div id="radio8">
								<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);" style="display:none"/>운   동
								</div>
							</div>
						</c:when> 
						
					</c:choose> 


					<!-- <div id="selectCA_NO">
						<div id="radio1">
						<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  onclick="checkLayer(1);" >프로그래밍
						</div>
						<div id="radio2">
						<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(2);"/>디자인 툴
						</div>
						<div id="radio3">
						<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(3);"/>실무 역량
						</div>
						<div id="radio4">
						<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" onclick="checkLayer(4);"/>뷰   티
						</div>
						<div id="radio5">
						<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(5);"/>외국어
						</div>
						<div id="radio6">
						<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(6);"/>음악
						</div>
						<div id="radio7">
						<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(7);"/>라이프스타일
						</div>
						<div id="radio8">
						<input id="tmp_tabs_1" name="tmp_tabs_1"type="radio" value="0" onclick="checkLayer(8);"/>운   동
						</div>
					</div> 
					 -->
					<div id="Category">
						<form id="frm1">
						<p>카테고리 번호</p>
						<p><input id="CA_NO" name="CA_NO" type="text"  value="${map1 }" class="input_txt03 clearbt"/></p>
						<p>대 분류</p>
						<p><input id="CA_LSECTION" name="CA_LSECTION" type="text"  value="프로그래밍" class="input_txt03"/></p>
						<p>소 분류</p>
						<p><input id="CA_SSECTION" name="CA_SSECTION" type="text"  value="${map9.CA_SSECTION }" class="input_txt03"/>	</p>
						<p><input type="text" name="CA_IDX" value="${map9.CA_IDX }"/></p>
						</form>
						<a href="#this" class="btn" id="add1">추가하기1</a>
					</div>
					
					<div id="Category2">
						<form id="frm2">
						<p>카테고리 번호</p>
						<p><input id="CA_NO" name="CA_NO" type="text"  value="${map2 }" class="input_txt03 clearbt"/></p>
						<p>대 분류</p>
						<p><input id="CA_LSECTION" name="CA_LSECTION" type="text"  value="디자인 툴" class="input_txt03"/></p>
						<p>소 분류</p>
						<p><input id="CA_SSECTION" name="CA_SSECTION" type="text"  value="${map9.CA_SSECTION }" class="input_txt03"/></p>
						<p><input type="text" name="CA_IDX" value="${map9.CA_IDX }"/></p>	
						</form>
						<a href="#this" class="btn" id="add2">추가하기2</a>
					</div>
					<div id="Category3">
						<form id="frm3">
						<p>카테고리 번호</p>
						<p><input id="CA_NO" name="CA_NO" type="text"  value="${map3}" class="input_txt03 clearbt"/></p>
						<p>대 분류</p>
						<p><input id="CA_LSECTION" name="CA_LSECTION" type="text"  value="실무역량" class="input_txt03"/></p>
						<p>소 분류</p>
						<p><input id="CA_SSECTION" name="CA_SSECTION" type="text"  value="${map9.CA_SSECTION }" class="input_txt03"/></p>
						<p><input type="text" name="CA_IDX" value="${map9.CA_IDX }"/></p>
						</form>
						<a href="#this" class="btn" id="add3">추가하기3</a>
					</div>
					<div id="Category4">
						<form id="frm4">
						<p>카테고리 번호</p>
						<p><input id="CA_NO" name="CA_NO" type="text"  value="${map4 }" class="input_txt03 clearbt"/></p>
						<p>대 분류</p>
						<p><input id="CA_LSECTION" name="CA_LSECTION" type="text"  value="뷰티" class="input_txt03"/></p>
						<p>소 분류</p>
						<p><input id="CA_SSECTION" name="CA_SSECTION" type="text"  value="${map9.CA_SSECTION }" class="input_txt03"/>	</p>
						<p><input type="text" name="CA_IDX" value="${map9.CA_IDX }"/></p>
						</form>
						<a href="#this" class="btn" id="add4">추가하기4</a>
					</div>
					<div id="Category5">
						<form id="frm5">
						<p>카테고리 번호</p>
						<p><input id="CA_NO" name="CA_NO" type="text"  value="${map5 }" class="input_txt03 clearbt"/></p>
						<p>대 분류</p>
						<p><input id="CA_LSECTION" name="CA_LSECTION" type="text"  value="외국어" class="input_txt03"/></p>
						<p>소 분류</p>
						<p><input id="CA_SSECTION" name="CA_SSECTION" type="text"  value="${map9.CA_SSECTION }" class="input_txt03"/>	</p>
						<p><input type="text" name="CA_IDX" value="${map9.CA_IDX }"/></p>
						</form>
						<a href="#this" class="btn" id="add5">추가하기5</a>
					</div>
					<div id="Category6">
						<form id="frm6">
						<p>카테고리 번호</p>
						<p><input id="CA_NO" name="CA_NO" type="text"  value="${map6 }" class="input_txt03 clearbt"/></p>
						<p>대 분류</p>
						<p><input id="CA_LSECTION" name="CA_LSECTION" type="text"  value="음악" class="input_txt03"/></p>
						<p>소 분류</p>
						<p><input id="CA_SSECTION" name="CA_SSECTION" type="text"  value="${map9.CA_SSECTION }" class="input_txt03"/>	</p>
						<p><input type="text" name="CA_IDX" value="${map9.CA_IDX }"/></p>
						</form>
						<a href="#this" class="btn" id="add6">추가하기6</a>
					</div>
					<div id="Category7">
						<form id="frm7">
						<p>카테고리 번호</p>
						<p><input id="CA_NO" name="CA_NO" type="text"  value="${map7 }" class="input_txt03 clearbt"/></p>
						<p>대 분류</p>
						<p><input id="CA_LSECTION" name="CA_LSECTION" type="text"  value="라이프스타일" class="input_txt03"/></p>
						<p>소 분류</p>
						<p><input id="CA_SSECTION" name="CA_SSECTION" type="text"  value="${map9.CA_SSECTION }" class="input_txt03"/>	</p>
						<p><input type="text" name="CA_IDX" value="${map9.CA_IDX }"/></p>
						</form>
						<a href="#this" class="btn" id="add7">추가하기7</a>
					</div>
					<div id="Category8">
						<form id="frm8">
						<p>카테고리 번호</p>
						<p><input id="CA_NO" name="CA_NO" type="text"  value="${map8 }" class="input_txt03 clearbt"/></p>
						<p>대 분류</p>
						<p><input id="CA_LSECTION" name="CA_LSECTION" type="text"  value="운동" class="input_txt03"/></p>
						<p>소 분류</p>
						<p><input id="CA_SSECTION" name="CA_SSECTION" type="text" value="${map9.CA_SSECTION }" class="input_txt03"/>	</p>
						<p><input type="text" name="CA_IDX" value="${map9.CA_IDX }"/></p>
						</form>
						<a href="#this" class="btn" id="add8">추가하기8</a>
					</div>


<%@ include file="/WEB-INF/include/include-body.jspf" %>
</body>
</html>