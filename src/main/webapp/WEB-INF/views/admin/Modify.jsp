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
        function chkRadio(val){
        	if(val == 1)
    		{
    			document.getElementById('radio1').style.display="block";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="none";
    		}
    		else if(val==2)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="block";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="none";
    		}
    		else if(val==3)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="block";
    			document.getElementById('radio4').style.display="none";
    		}
    		else if(val==4)
    		{
    			document.getElementById('radio1').style.display="none";
    			document.getElementById('radio2').style.display="none";
    			document.getElementById('radio3').style.display="none";
    			document.getElementById('radio4').style.display="block";
    		}
        	
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
</script>
</head>
<body>

				<c:choose>
			 			<c:when test="${map9.CA_LSECTION eq '컴퓨터' }">
			 				
							<div id="selectCA_NO" class="form-check-inline form-check">
								<div id="radio1" style="display:none">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  class="form-check-input" onclick="checkLayer(1);" />컴퓨터
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(2);"/>외국어
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(3);"/>라이프스타일
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(4);"/>기타
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '외국어' }">
							<div id="selectCA_NO" class="form-check-inline form-check">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1" class="form-check-input"  onclick="checkLayer(1);" />컴퓨터
								</div>
								<div id="radio2" style="display:none">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(2);" />외국어
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(3);"/>라이프스타일
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(4);"/>기타
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '라이프스타일' }">
							<div id="selectCA_NO" class="form-check-inline form-check">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1" class="form-check-input"  onclick="checkLayer(1);" />컴퓨터
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(2);" />외국어
								</div>
								<div id="radio3" style="display:none">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(3);" />라이프스타일
								</div>
								<div id="radio4">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(4);"/>기타
								</div>
							</div>
						</c:when>
						<c:when test="${map9.CA_LSECTION eq '기타' }">
							<div id="selectCA_NO" class="form-check-inline form-check">
								<div id="radio1">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1" class="form-check-input" onclick="checkLayer(1);" />컴퓨터
								</div>
								<div id="radio2">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(2);"/>외국어
								</div>
								<div id="radio3">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(3);"/>라이프스타일
								</div>
								<div id="radio4" style	="display:none">
								<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0"  class="form-check-input" onclick="checkLayer(4);"  />기타
								</div>
							</div>
						</c:when>
					</c:choose> 
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
                                          <input id="CA_SSECION" name="CA_SSECTION" type="tel" class="form-control cc-number identified visa" value="${map9.CA_SSECTION }" >
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
                                   <form id="frm2">
                                       <div class="form-group">
                                          <label for="cc-payment" class="control-label mb-1">Category Number</label>
                                          <input id="CA_NO" name="CA_NO" type="text" class="form-control" aria-required="true" aria-invalid="false" value="${map2 }">
                                       </div>
                                       <div class="form-group has-success">
                                          <label for="cc-name" class="control-label mb-1">Large Section</label>
                                          <input id="CA_LSECTION" name="CA_LSECTION" type="text" class="form-control cc-name valid" value="컴퓨터" >
                                          <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                       </div>
                                       <div class="form-group">
                                          <label for="cc-number" class="control-label mb-1">Small Section</label>
                                          <input id="CA_SSECION" name="CA_SSECTION" type="tel" class="form-control cc-number identified visa" value="${map9.CA_SSECTION }" >
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
                                   <form id="frm3">
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
                                          <input id="CA_SSECION" name="CA_SSECTION" type="tel" class="form-control cc-number identified visa" value="${map9.CA_SSECTION }" >
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
                                   <form id="frm4">
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
                                          <input id="CA_SSECION" name="CA_SSECTION" type="tel" class="form-control cc-number identified visa" value="${map9.CA_SSECTION }" >
                                          <span class="help-block" data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                          <input type="hidden" name="CA_IDX" value="${map9.CA_IDX }"/>
                                       </div>
                                    </form>
                                    <a href="#this" class="btn btn-success btn-sm" id="add4">추가하기</a>
                               </div>
                            </div>
                      </div>

					<%-- <div id="Category8">
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
					</div>  --%>


<%@ include file="/WEB-INF/include/include-body_wb.jspf" %>
</body>
</html>