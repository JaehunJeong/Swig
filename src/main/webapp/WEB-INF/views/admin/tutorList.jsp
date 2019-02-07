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
			window.onload=function(){fn_selectTutorList(1);};
		      
			$("#list").on("click",function(e){
				e.preventDefault();
				fn_openMemberList();
			});
			
			$("#tutorList").on("click",function(e){
				e.preventDefault();
				fn_openTutorList();
			});
			
			$("#tutorApplyList").on("click",function(e){
				e.preventDefault();
				fn_openTutorApplyList();
			});
			
			$("#categoryList").on("click",function(e){
				e.preventDefault();
				fn_openCategoryList();
			});
			
			$("#lectureList").on("click",function(e){
				e.preventDefault();
				fn_openLectureList();
			});
			

		});
		function fn_openMemberList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openMemberList'/>");
			comSubmit.submit();
		}
		
		function fn_openTutorList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openTutorList'/>");
			comSubmit.submit();
		}
		
		function fn_openTutorApplyList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openTutorApplyList'/>");
			comSubmit.submit();
		}
		
		function fn_openCategoryList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openCategoryList'/>");
			comSubmit.submit();
		}
		
		function fn_openLectureList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openLectureList'/>");
			comSubmit.submit();
		}
		function fn_openMemberDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='userDetail' />");
            comSubmit.addParam("M_NO", obj.parent().find("#M_NO").val());
            comSubmit.submit();
        }
		function fn_openTutorDetail(obj){
		    var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='adminTutorDetail' />");
		    comSubmit.addParam("T_NO", obj.parent().find("#T_NO").val());
		    comSubmit.submit();
		}
		function fn_openTutorScert(obj){
		    var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='adminTutorScert' />");
		    comSubmit.addParam("T_NO", obj.parent().find("#T_NO").val());
		    comSubmit.submit();
		}
		function fn_openTutorDetail(obj){
		    var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='adminTutorCerti' />");
		    comSubmit.addParam("T_NO", obj.parent().find("#T_NO").val());
		    comSubmit.submit();
		}
		
		function fn_openTutorDelete()
		{
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='adminTutorDelete'/>");
			comSubmit.addParam("T_NO",$("#T_NO").val());
			comSubmit.submit();
		}
		 
		function fn_selectTutorList(pageNo){
		    var comAjax = new ComAjax();
		    comAjax.setUrl("<c:url value='adminTutorList' />");
		    comAjax.setCallback("fn_selectTutorListCallback");
		    comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("T_NO_FE", $("#T_NO_FE").val());
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
                                	
                                    "<a href='#this' name='mno'>" + value.M_NO + "</a>" +
                                    "<input type='hidden' id='M_NO' value=" + value.M_NO + ">" +
                                "</td>" +
                                "<td>" + value.T_NICK + "</td>" +
                                "<td>" + value.T_FINALEDU + "</td>" +
                                "<td>" + value.T_COLLEGE + "</td>" +
                                "<td>" + value.T_DEPT + "</td>" +
                                "<td>" + value.T_QUALIFICATION + "</td>" +
                                "<td>"+
                                	"<button type='button' class='btn btn-link' onClick='fn_openTutorDetail();'>Detail</button>"+
                                	"<input type='hidden' id='T_NO' value=" + value.T_NO + ">" +
                           		"</td>"+
                                "<td>"+
                                	"<a href='#this' class='btn' name='tutorDelete' id='tutorDelete'>삭제하기</a>"+
                                "</td>"+
                            "</tr>";
                });
                body.append(str);
                 
                $("a[name='mno']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openMemberDetail($(this));
                });
                $("a[name='scert']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorDetail($(this));
                });
                $("a[name='c_name']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorDetail($(this));
                });
                $("a[name='tutorDelete']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorDelete($(this));
                });
            }
        }
        
       /*  var model = document.getElementById('largeModal');
		window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        } */
    </script>
</head>
<body>
	<aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="adminForm">
                    <img src="images/icon/logo.png" width ="120" height="100" alt="SWig" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">
                    	<li >
                            <a href="#this" id="list">
                                <i class="fas fa-users"></i>Member</a>
                        </li>
                        <li class="has-sub active">
                        	<a class="js-arrow" href="openMemberList">
                        		<i class ="fas fa-male"></i>Tutor
                        	</a>
                        	<ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li class="active">
                                    <a href="#this" id="tutorList">Tutor List</a>
                                </li>
                                <li>
                                    <a href="#this" id="tutorApplyList">Apply List</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#this" id="categoryList">
                                <i class="fas fa-th-large"></i>Category</a>
                        </li>
                        <li>
                            <a href="#this" id="lectureList">
                                <i class="far fa-pencil"></i>Lecture</a>
                        </li> 
                    </ul>
                </nav>
            </div>
        </aside>
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                
            </header>
            <!-- END HEADER DESKTOP-->
			<!-- modal large -->
								<div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="largeModalLabel">Images</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<p>
													 <img src="images/icon/logo.png"  /> <!--width ="800" height="800"  -->
												</p>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">Reject</button>
												<button type="button" class="btn btn-primary">Confirm</button>
											</div>
										</div>
									</div>
								</div>
								<!-- end modal large -->
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid"> 
                        <div class="row m-t-30">
                            <div class="col-md-12">   
                                <!-- DATA TABLE-->
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-data3">
                                        <thead>
											<tr>
												<th>튜터번호</th>
												<th>회원번호</th>
												<th>닉네임</th>
												<th>인증</th>
												<th>학교</th>
												<th>학과</th>
												<th>상태</th>
												<th>증명서 조회</th>
												<th>튜터취소</th>
											</tr>
                                        </thead>
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                    <div id="PAGE_NAVI"></div>
									<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
									<br />
                                </div>
                                <!-- END DATA TABLE-->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


<%@ include file="/WEB-INF/include/include-body.jspf" %>

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
	
	
