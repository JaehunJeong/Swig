<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script type="text/javascript">
	var gfv_count = '${fn:length(list)+1}';

	$(document).ready(function(){ //목록 버튼
		$("#list").on("click",function(e){
			e.preventDefault();
			fn_openMemberList();
		});
		
		$("#update").on("click",function(e){//저장하기
			e.preventDefault();
			fn_MemberUpdate();
		});
		$("#delete").on("click",function(e){
			e.preventDefault();
			fn_deleteMemberList();
		});
		$("#reset").on("click",function(e){
			e.preventDefault();
			fn_resetMemberList();
		});
	});
	function fn_resetMemberList(){
		document.getElementById("frm1").reset();
	}
	function fn_openMemberList(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='openMemberList'/>");
		comSubmit.submit();
	}
	function fn_MemberUpdate(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='userModify'/>");
		comSubmit.addParam("M_NO",$("#M_NO").val());
		comSubmit.addParam("M_PASSWD",$("#M_PASSWD").val());
		comSubmit.addParam("M_EMAIL",$("#M_EMAIL").val());
		comSubmit.addParam("M_PHONE",$("#M_PHONE").val());
		comSubmit.addParam("M_JOB",$("#M_JOB").val());
		comSubmit.addParam("M_SEX",$("#M_SEX").val());

		comSubmit.submit();
	} 
	function fn_deleteMemberList()
	{
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='dropUser'/>");
		comSubmit.addParam("M_NO",$("#M_NO").val());
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
	                                        <strong>회원 정보 수정</strong>
	                                    </div>
	                                    <div class="card-body card-block">
	                                        <form id="frm1">
	                                        	<div class="mx-auto d-block">
                                            		<img class="rounded-circle mx-auto d-block" src="images/icon/avatar-01.jpg" alt="Card image cap">
                                            		<h5 class="text-sm-center mt-2 mb-1">Steven Lee</h5>
                                            		<div class="location text-sm-center">
                                                	<i class="fa fa-map-marker"></i> California, United States</div>
                                        		</div>
                                        		<div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="job-input" class=" form-control-label">StoredProfileImage</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" name="text" id="storedfile" name="storedfile" value="${map.M_ORIGINAL_PROFILE_NAME }" disabled="" class="form-control">
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="file-input" class=" form-control-label">Change Profile Image</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="file" id="file-input" name="file-input" class="form-control-file">
	                                                </div>
	                                            </div>
	                                        	<input type="hidden" id="M_NO" name="M_NO" value="${map.M_NO }"/>
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
	                                                    <label for="email-input" class=" form-control-label">E-mail</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" id="M_EMAIL" name="M_EMAIL" value="${map.M_EMAIL }" class="form-control">
	                                                    <small class="form-text text-muted">Enter new E-mail address</small>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="password-input" class=" form-control-label">Password</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="password" id="M_PASSWD" name="M_PASSWD" value="${map.M_PASSWD }"class="form-control">
	                                                    <small class="help-block form-text">Please enter a complex Password</small>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="Disabled Input" class=" form-control-label">Birth</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" id="M_BIRTH" name="M_BIRTH" value="${map.M_BIRTH }" disabled="" class="form-control">
	                                                    <small class="help-block form-text">Please enter a complex password</small>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="phone-input" class=" form-control-label">Phone</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" id="M_PHONE" name="M_PHONE" value="${map.M_PHONE }" class="form-control">
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="job-input" class=" form-control-label">Job</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" name="text" id="M_JOB" name="M_JOB" value="${map.M_JOB }" class="form-control">
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="select" class=" form-control-label">Sex</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <select name="M_SEX" id="M_SEX" class="form-control">
	                                                        <option value="${map.M_SEX }">${map.M_SEX }</option>
	                                                        <option value="남자">남자</option>
	                                                        <option value="여자">여자</option>
	                                                    </select>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="job-input" class=" form-control-label">ConnectedSNS</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" name="text" id="M_SNS" name="M_SNS" value="${map.M_SNS }" class="form-control">
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label for="job-input" class=" form-control-label">Registered DATE</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <input type="text" name="text" id="M_REGDATE" name="M_REGDATE" value="${map.M_REGDATE }" disabled=""class="form-control">
	                                                </div>
	                                            </div>
	                                            
	                                        </form>
	                                    </div>
	                                    <div class="card-footer">
	                                        <button type="submit" class="btn btn-success btn-sm" id="update">
	                                            <i class="fa fa-check"></i> 수정하기
	                                        </button>
	                                        <button type="submit" class="btn btn-danger btn-sm"id="delete">
	                                            <i class="fa fa-times"></i> 삭제하기
	                                        </button>
	                                        <button type="button" value="Reset all fields"class="btn btn-warning btn-sm" id="reset">
	                                            <i class="fa fa-refresh"></i> Reset
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
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
	
</body>
</html>