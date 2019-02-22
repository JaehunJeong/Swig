<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header_wb.jspf" %>
<script type="text/javascript">
	$(document).ready(function(){
		$("#list").on("click",function(e){
			e.preventDefault();
			fn_openMemberList();
		});
		
		$("#update").on("click",function(e){
			e.preventDefault();
			fn_openMemberUpdate();
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
	function fn_openApproveList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openApproveList'/>");
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
	function fn_openRefundList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openRefundList'/>");
		comSubmit.submit();
	}
	function fn_openMemberUpdate(){
		var M_NO = "${map.M_NO}";
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openUserModify'/>");
		comSubmit.addParam("M_NO",M_NO);
		comSubmit.submit();
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
	                              <div class="col-lg-13">
	                                <div class="card">
	                                    <div class="card-header">
	                                        <strong>회원 상세정보</strong>
	                                    </div>
	                                    <div class="card-body card-block">
	                                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
	                                            <div class="mx-auto d-block">
                                            		<img class="rounded-circle mx-auto d-block" src="images/icon/avatar-01.jpg" alt="Card image cap">
                                            		<h5 class="text-sm-center mt-2 mb-1">Steven Lee</h5>
                                            		<div class="location text-sm-center">
                                                	<i class="fa fa-map-marker"></i> California, United States</div>
                                        		</div>
	                                            
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">StoredProfileImage</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_ORIGINAL_PROFILE_NAME  }</p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Name</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_NAME }</p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Grade</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                	<c:if test ="${map.M_TUTOR eq 0 }">
	                                                    <p class="form-control-static">Member</p>
	                                                    </c:if>
	                                                    <c:if test ="${map.M_TUTOR eq 1 }">
	                                                    <p class="form-control-static">Tutor</p>
	                                                    </c:if>
	                                                    <c:if test ="${map.M_TUTOR eq 2 }">
	                                                    <p class="form-control-static">Tutor</p>
	                                                    </c:if>
	                                                    <c:if test ="${map.M_TUTOR eq 3 }">
	                                                    <p class="form-control-static">Admin</p>
	                                                    </c:if>
	                                                    <c:if test ="${map.M_TUTOR eq 4 }">
	                                                    <p class="form-control-static">Restricted</p>
	                                                    </c:if>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">E-mail</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_EMAIL }</p>
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="password-input" class=" form-control-label">Password</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="password" id="password-input" name="M_PASSWD" value="${map.M_PASSWD }" disabled="" class="form-control">
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Birth</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_BIRTH }</p>
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Phone</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_PHONE }</p>
	                                                </div>
	                                            </div>
	                                           	<div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Job</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_JOB }</p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Sex</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_SEX }</p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">ConnectedSNS</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_SNS }</p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">RegisteredDATE</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">${map.M_REGDATE }</p>
	                                                </div>
	                                            </div>
	                                        </form>
	                                    </div>
	                                    <div class="card-footer">
	                                        <button type="submit" class="btn btn-success btn-sm" id="update">
	                                            <i class="fa fa-eraser"></i> 수정하기
	                                        </button>
	                                        <button type="reset" class="btn btn-info btn-sm" onClick="fn_openMemberList();">
	                                            <i class="fa fa-undo"></i> 목록으로
	                                        </button>	
	                                    </div>
	                                </div>
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