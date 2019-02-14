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
		    //var ch1=${list.TF_CCHECK1};   
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
			$("#lectureSellingList").on("click",function(e){
				e.preventDefault();
				fn_openLecturenSellingList();
			});
			$("#lectureDeleteList").on("click",function(e){
				e.preventDefault();
				fn_openLectureDeleteList();
			});
			$("#lectureSoldoutList").on("click",function(e){
				e.preventDefault();
				fn_openLectureSoldoutList();
			});
			$("#approveList").on("click",function(e){
				e.preventDefault();
				fn_openApproveList();
			});
			
			$("#refundList").on("click",function(e){
				e.preventDefault();
				fn_openRefundList();
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
		function fn_openLecturenSellingList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openLectureSellingList'/>");
			comSubmit.submit();
		}
		function fn_openLectureDeleteList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openLectureDeletedList'/>");
			comSubmit.submit();
		}
		function fn_openLectureSoldoutList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openLectureSoldoutList'/>");
			comSubmit.submit();
		}
		function fn_openApproveList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openApproveList'/>");
			comSubmit.submit();
		}
		
		function fn_openRefundList(){
			var comSubmit = new ComSubmit();
			comSubmit.setUrl("<c:url value='openRefundList'/>");
			comSubmit.submit();
		}
		function fn_openMemberDetail(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='userDetail' />");
            comSubmit.addParam("M_NO", obj.parent().find("#M_NO").val());
            comSubmit.submit();
        }
		
		function fn_openTutorDetail(val){
			var url = "adminTutorDetail?T_NO="+val;
			var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='"+url+"' />");
		    //comSubmit.addParam("T_NO",$("#T_NO").val());
		    comSubmit.submit();
			
		    //lacation.href="url";
		}
		function fn_openTutorScert(obj){
		    var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='adminTutorScert' />");
		    comSubmit.addParam("T_NO", obj.parent().find("#T_NO").val());
		    comSubmit.submit();
		}
		function fn_openTutorCerti(obj){
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
        function fn_calchk(){
        	var count =0;
        	count +=1;
        }
         
        function fn_selectTutorListCallback(data){
            var total = data.TOTAL;
            var body = $("table>tbody");
            body.empty();
            if(total == 0){
                var str = "<tr>" +
                                "<td colspan='9' style='text-align:center'>조회된 결과가 없습니다.</td>" +
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
                                	"<input type='button' class='btn btn-link' value='DETAIL' onclick='fn_openTutorDetail("+value.T_NO+");'/>"+
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
                $("a[name='detail']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorDetail($(this));
                });
                $("a[name='scert']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorScert($(this));
                });
                $("a[name='c_name']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorCerti($(this));
                });
                $("a[name='tutorDelete']").on("click", function(e){ //제목
                    e.preventDefault();
                    fn_openTutorDelete($(this));
                });
                
                
            }
        }
        
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
                        <li class="has-sub">
                        	<a class="js-arrow" href="#this">
                        		<i class ="fas fa-tags"></i>Lecture
                        	</a>
                        	<ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
                                    <a href="#this" id="lectureList">Pending</a>
                                </li>
                                <li>
                                    <a href="#this" id="lectureSellingList">Selling</a>
                                </li>
                                <li>
                                    <a href="#this" id="lectureDeleteList">Deleted</a>
                                </li>
                                <li>
                                    <a href="#this" id="lectureSoldoutList">Sold Out</a>
                                </li>
                            </ul>
                        </li>  
                        <li class="has-sub">
                        	<a class="js-arrow" href="#this">
                        		<i class ="fas fa-credit-card"></i>Kakao Order Status
                        	</a>
                        	<ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
                                    <a href="#this" id="approveList">Approve</a>
                                </li>
                                <li>
                                    <a href="#this" id="refundList">Refund</a>
                                </li>
                            </ul>
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
		
	
	
