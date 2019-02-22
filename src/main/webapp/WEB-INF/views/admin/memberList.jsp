<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<%@ include file="/WEB-INF/include/include-header_wb.jspf" %>
<script type="text/javascript">
        $(document).ready(function(){
        	window.onload=function(){fn_selectMemberList(1);};
              
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
         
        function fn_selectMemberList(pageNo){
            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='allUserList' />");
            comAjax.setCallback("fn_selectMemberListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			//comAjax.addParam("M_NO_FE", $("#M_NO_FE").val());
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
                                "<td>" + value.M_NO + "</td>" +
                                "<td class='title'>" +
                                    "<a href='#this' name='name'>" + value.M_NAME + "</a>" +
                                    "<input type='hidden' id='M_NO' value=" + value.M_NO + ">" +
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
                    	<li class="active">
                            <a href="#this" id="list">
                                <i class="fas fa-users"></i>Member</a>
                        </li>
                        <li class="has-sub">
                        	<a class="js-arrow" href="openMemberList">
                        		<i class ="fas fa-male"></i>Tutor
                        	</a>
                        	<ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li>
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
        <!-- PAGE CONTAINER-->
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
                                                <th>회원 번호</th>
												<th>회원 이름</th>
												<th>회원 메일</th>
												<th>회원 생년월일</th>
												<th>회원 핸드폰</th>
												<th>회원 직업</th>
												<th>성별</th>
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


<%@ include file="/WEB-INF/include/include-body_wb.jspf" %>

</body>
</html>