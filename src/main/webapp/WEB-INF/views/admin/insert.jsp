<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/include/include-header_wb.jspf" %>
<script type="text/javascript">
        $(document).ready(function(){
        	document.getElementById('Category').style.display="none";
			document.getElementById('Category2').style.display="none";
			document.getElementById('Category3').style.display="none";
			document.getElementById('Category4').style.display="none";
			/* document.getElementById('Category5').style.display="none";
			document.getElementById('Category6').style.display="none";
			document.getElementById('Category7').style.display="none";
			document.getElementById('Category8').style.display="none";	 */
        	//window.onload=function(){fn_selectMemberList(1);};
              
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
        	/* $("#add5").on("click",function(e){
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
    			
    		}); */
        	
        });
        
        function fn_TutorInsert1(){
        	/* var comSubmit = new ComSubmit("frm1");
        	comSubmit.setUrl("<c:url value='addCategory'/>");
            comSubmit.submit();
            window.opener.document.location.reload();
            self.close(); */
        	var params = $("#frm1").serialize();
    		$.ajax(
    		{
    			url : "<c:url value='addCategory' />",
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
    			url : "<c:url value='addCategory' />",
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
    			url : "<c:url value='addCategory' />",
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
    			url : "<c:url value='addCategory' />",
    			data : params,
    			success : function(data)
    					{	
    						window.opener.document.location.reload();
    						window.close();
    					}
    		});
        } 
        function checkLayer(val){
	        	if(val == 1)
	    		{
	    			document.getElementById('Category').style.display="block";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="none";
	    			
	    		}
	    		else if(val==2)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="block";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="none";
	    		}
	    		else if(val==3)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="block";
	    			document.getElementById('Category4').style.display="none";
	    		}
	    		else if(val==4)
	    		{
	    			document.getElementById('Category').style.display="none";
	    			document.getElementById('Category2').style.display="none";
	    			document.getElementById('Category3').style.display="none";
	    			document.getElementById('Category4').style.display="block";
	    		}
        	}
        /* $(document).ready(function() {
            $("#insert").on("click", function(e) { //등록
               e.preventDefault();
            	var CA_NO = $("#CA_NO").val();
            	var CA_LSECTION = $("#CA_LSECTION").val();
            	var CA_SSECTION = $("#CA_SSECTION").val();
            	$.ajax({
            		async:true,
        			type:'POST', 
        			data : {"CA_NO":CA_NO,"CA_LSECTION":CA_LSECTION,"CA_SSECTION" :CA_SSECTION},
        			url:'addCategory',
        			dataType : "json",
        			success : function(data){
        				if(data.cnt == 0){
        					if($('#r_comment').val()==""){
        						alert("신고할 내용을 입력해주세요");
        						$("#r_comment").focus();
        					}else{
        						alert("신고가 완료되었습니다 :3");
        						fn_insertReport();
        					}
        				}else{
        					alert("이미 신고한 모임과 주최자 입니다.");
        				}
        				
        			},
        			error : function(error){
        				alert("error: " + error)
        			}
            	})	
            
        	});
        }); */
</script>
</head>
<body>



					<div id="selectCA_NO" class="form-check-inline form-check">
						<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1" class="form-check-input" onclick="checkLayer(1);"/>컴퓨터
						<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(2);"/>외국어
						<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(3);"/>라이프스타일
						<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(4);"/>기타				
					</div>
					<div class="col-lg-6" id="Category">
                         <div class="card">
                              <div class="card-header">Move Category</div>
                              <div class="card-body">
                                   <div class="card-title">
                                        <h3 class="text-center title-2">Category</h3>
                                   </div>
                                   <hr>
                                   <form id="frm1">
                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Category Number</label>
                                          <input id="CA_NO" name="CA_NO" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${map1 }">
                                       </div>
                                       <div class="form-group has-success">
                                          <label for="cc-name" class="control-label mb-1">Large Section</label>
                                          <input id="CA_LSECTION" name="CA_LSECTION" type="text" class="form-control cc-name valid" value="컴퓨터" >
                                          <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                       </div>
                                       <div class="form-group">
                                          <label for="cc-number" class="control-label mb-1">Small Section</label>
                                          <input id="CA_SSECION" name="CA_SSECTION" type="tel" class="form-control cc-number identified visa" placeholder="카테고리를 입력해 주세요" value="" >
                                          <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                          <input type="hidden" name="CA_IDX" value="${map9.CA_IDX }"/>
                                       </div>
                                    </form>
                                    <a href="#this" class="btn btn-success btn-sm" id="add1">추가하기</a>
                               </div>
                            </div>
                      </div>
					<div class="col-lg-6" id="Category2">
                         <div class="card">
                              <div class="card-header">Move Category</div>
                              <div class="card-body">
                                   <div class="card-title">
                                        <h3 class="text-center title-2">Category</h3>
                                   </div>
                                   <hr>
                                   <form id="frm1">
                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Category Number</label>
                                          <input id="CA_NO" name="CA_NO" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${map1 }">
                                       </div>
                                       <div class="form-group has-success">
                                          <label for="cc-name" class="control-label mb-1">Large Section</label>
                                          <input id="CA_LSECTION" name="CA_LSECTION" type="text" class="form-control cc-name valid" value="외국어" >
                                          <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                       </div>
                                       <div class="form-group">
                                          <label for="cc-number" class="control-label mb-1">Small Section</label>
                                          <input id="CA_SSECION" name="CA_SSECTION" type="tel" class="form-control cc-number identified visa" placeholder="카테고리를 입력해 주세요" value="" >
                                          <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                          <input type="hidden" name="CA_IDX" value="${map9.CA_IDX }"/>
                                       </div>
                                    </form>
                                    <a href="#this" class="btn btn-success btn-sm" id="add2">추가하기</a>
                               </div>
                            </div>
                      </div>
					<div class="col-lg-6" id="Category3">
                         <div class="card">
                              <div class="card-header">Move Category</div>
                              <div class="card-body">
                                   <div class="card-title">
                                        <h3 class="text-center title-2">Category</h3>
                                   </div>
                                   <hr>
                                   <form id="frm1">
                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Category Number</label>
                                          <input id="CA_NO" name="CA_NO" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${map3 }">
                                       </div>
                                       <div class="form-group has-success">
                                          <label for="cc-name" class="control-label mb-1">Large Section</label>
                                          <input id="CA_LSECTION" name="CA_LSECTION" type="text" class="form-control cc-name valid" value="라이프스타일" >
                                          <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                       </div>
                                       <div class="form-group">
                                          <label for="cc-number" class="control-label mb-1">Small Section</label>
                                          <input id="CA_SSECION" name="CA_SSECTION" type="tel" class="form-control cc-number identified visa" placeholder="카테고리를 입력해 주세요" value="" >
                                          <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                          <input type="hidden" name="CA_IDX" value="${map9.CA_IDX }"/>
                                       </div>
                                    </form>
                                    <a href="#this" class="btn btn-success btn-sm" id="add3">추가하기</a>
                               </div>
                            </div>
                      </div>
					<div class="col-lg-6" id="Category4">
                         <div class="card">
                              <div class="card-header">Move Category</div>
                              <div class="card-body">
                                   <div class="card-title">
                                        <h3 class="text-center title-2">Category</h3>
                                   </div>
                                   <hr>
                                   <form id="frm1">
                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Category Number</label>
                                          <input id="CA_NO" name="CA_NO" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${map4 }">
                                       </div>
                                       <div class="form-group has-success">
                                          <label for="cc-name" class="control-label mb-1">Large Section</label>
                                          <input id="CA_LSECTION" name="CA_LSECTION" type="text" class="form-control cc-name valid" value="기타" >
                                          <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                       </div>
                                       <div class="form-group">
                                          <label for="cc-number" class="control-label mb-1">Small Section</label>
                                          <input id="CA_SSECION" name="CA_SSECTION" type="tel" class="form-control cc-number identified visa" placeholder="카테고리를 입력해 주세요" value="" >
                                          <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                          <input type="hidden" name="CA_IDX" value="${map9.CA_IDX }"/>
                                       </div>
                                    </form>
                                    <a href="#this" class="btn btn-success btn-sm" id="add4">추가하기</a>
                               </div>
                            </div>
                      </div>
					
<%@ include file="/WEB-INF/include/include-body_wb.jspf" %>
</body>
</html>