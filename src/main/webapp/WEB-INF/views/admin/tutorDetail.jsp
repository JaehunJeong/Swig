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
	function fn_permitId(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='permitId'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_rejectId(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='rejectId'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_permitCol(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='permitCol'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_rejectCol(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='rejectCol'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_permitCerti1(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='permitCerti1'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_rejectCerti1(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='rejectCerti1'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_permitCerti2(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='permitCerti2'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_rejectCerti2(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='rejectCerti2'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_permitCerti3(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='permitCerti3'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_rejectCerti3(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='rejectCerti3'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_permitCerti4(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='permitCerti4'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_rejectCerti4(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='rejectCerti4'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_permitCerti5(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='permitCerti5'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
	    comSubmit.submit();
	}
	function fn_rejectCerti5(){
		var comSubmit = new ComSubmit();
		comSubmit.setUrl("<c:url value='rejectCerti5'/>");
		comSubmit.addParam("T_NO",$("#T_NO").val());
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
                    	<li>
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
			<!-- modal large -->
			<div class="modal fade" id="idCard" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">ID Card Images</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
						</div>
						<div class="modal-body">
							<p>
							  <img src="images/icon/${map.TF_IDORIGINFILE }"  />  
							 <!--width ="800" height="800"  -->
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="fn_rejectId();">Reject</button>
							<button type="button" class="btn btn-primary" onclick="fn_permitId();">Confirm</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="college" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">College Images</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
						</div>
						<div class="modal-body">
							<p>
							  <img src="images/icon/${map.TF_SCERTORIGIN }"  /> 
							 <!--width ="800" height="800"  -->
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="fn_rejectCol();">Reject</button>
							<button type="button" class="btn btn-primary" onclick="fn_permitCol();">Confirm</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="certi1" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">Certificate 1 Images</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
						</div>
						<div class="modal-body">
							<p>
							  <img src="images/icon/${map.TF_C_ORIGINFILE1 }"  />  
							 <!--width ="800" height="800"  -->
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal"onclick="fn_rejectCerti1();">Reject</button>
							<button type="button" class="btn btn-primary" onclick="fn_permitCerti1();">Confirm</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="certi2" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">Certificate 2 Images</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
						</div>
						<div class="modal-body">
							<p>
							  <img src="images/icon/${map.TF_C_ORIGINFILE2 }"  /> 
							  <!--width ="800" height="800"  -->
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="fn_rejectCerti2();">Reject</button>
							<button type="button" class="btn btn-primary" onclick="fn_permitCerti2();">Confirm</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="certi3" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">Certificate 3 Images</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
						</div>
						<div class="modal-body">
							<p>
							  <img src="images/icon/${map.TF_C_ORIGINFILE3 }"  /> 
							  <!--width ="800" height="800"  -->
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="fn_rejectCerti3();">Reject</button>
							<button type="button" class="btn btn-primary"onclick="fn_permitCerti3();">Confirm</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="certi4" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">Certificate 4 Images</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
						</div>
						<div class="modal-body">
							<p>
							  <img src="images/icon/${map.TF_C_ORIGINFILE4 }"  /> 
							  <!--width ="800" height="800"  -->
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="fn_rejectCerti4();">Reject</button>
							<button type="button" class="btn btn-primary" onclick="fn_permitCerti4();">Confirm</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="certi5" tabindex="-1" role="dialog" aria-labelledby="largeModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-lg" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="largeModalLabel">Certificate 5 Images</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
						</div>
						<div class="modal-body">
							<p>
							  <img src="images/icon/${map.TF_C_ORIGINFILE5 }"  /> 
							 <!--width ="800" height="800"  -->
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="fn_rejectCerti5();">Reject</button>
							<button type="button" class="btn btn-primary" onclick="fn_permitCerti5();">Confirm</button>
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
	                              <div class="col-lg-13">
	                                <div class="card">
	                                    <div class="card-header">
	                                        <strong>회원 상세정보</strong>
	                                    </div>
	                                    <div class="card-body card-block">
	                                            <div class="mx-auto d-block">
                                            		 <img class="rounded-circle mx-auto d-block" src="images/icon/${map.TF_ORIGINPROFILE }" alt="Card image cap"> 
                                            		<h5 class="text-sm-center mt-2 mb-1">Tutor Profile</h5>
                                           			<input type="hidden" id="T_NO" name="T_NO" value="${map.T_NO }"/>
                                        		</div>
	                                            
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">College or ID Card</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">
	                                                    	<c:choose>
	                                                    		<c:when test ="${map.T_FINALEDU == '신분증인증'}">
	                                                    			<button type="button" class="btn btn-link" data-toggle="modal" data-target="#idCard">
																		${map.T_FINALEDU }
																	</button>
																	<c:choose>
																		<c:when test="${map.TF_IDCHECK == 'Y' }">
																			<span class="badge badge-success">Pass</span>
																		</c:when>
																		<c:otherwise>
																			<span class="badge badge-danger">Reject</span>
																		</c:otherwise>
																	</c:choose>
	                                                    		</c:when>
	                                                    		<c:otherwise>
	                                                    			<button type="button" class="btn btn-link" data-toggle="modal" data-target="#college">
																		${map.T_FINALEDU }
																	</button>
																	<c:choose>
																		<c:when test="${map.TF_SCHECK == 'Y' }">
																			<span class="badge badge-success">Pass</span>
																		</c:when>
																		<c:otherwise>
																			<span class="badge badge-danger">Reject</span>
																		</c:otherwise>
																	</c:choose>
	                                                    		</c:otherwise>
	                                                    	</c:choose>
	                                                    	
	                                                    	
	                                                    </p>
	                                                </div>
	                                            </div>
	                                            
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Certificate 1</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">
	                                                    <button type="button" class="btn btn-link" data-toggle="modal" data-target="#certi1">
																${map.T_CNAME0 }	
														</button>
														<c:choose>
															<c:when test="${map.TF_CCHECK1 == 'Y' }">
																<span class="badge badge-success">Pass</span>
															</c:when>
															<c:otherwise>
																<span class="badge badge-danger">Reject</span>
															</c:otherwise>
														</c:choose>
	                                                    </p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Certificate 2</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">
	                                                    <button type="button" class="btn btn-link" data-toggle="modal" data-target="#certi2">
																${map.T_CNAME1 }
																
														</button>
	                                                    <c:choose>
															<c:when test="${map.TF_CCHECK2 == 'Y' }">
																<span class="badge badge-success">Pass</span>
															</c:when>
															<c:otherwise>
																<span class="badge badge-danger">Reject</span>
															</c:otherwise>
														</c:choose>
	                                                    </p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Certificate 3</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">
	                                                    <button type="button" class="btn btn-link" data-toggle="modal" data-target="#certi3">
																${map.T_CNAME2 }
																
														</button>
	                                                    <c:choose>
															<c:when test="${map.TF_CCHECK3 == 'Y' }">
																<span class="badge badge-success">Pass</span>
															</c:when>
															<c:otherwise>
																<span class="badge badge-danger">Reject</span>
															</c:otherwise>
														</c:choose>
	                                                    </p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Certificate 4</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">
	                                                    <button type="button" class="btn btn-link" data-toggle="modal" data-target="#certi4">
																${map.T_CNAME3 }
																
														</button>
	                                                    <c:choose>
															<c:when test="${map.TF_CCHECK4 == 'Y' }">
																<span class="badge badge-success">Pass</span>
															</c:when>
															<c:otherwise>
																<span class="badge badge-danger">Reject</span>
															</c:otherwise>
														</c:choose>
	                                                    </p>
	                                                </div>
	                                            </div>
	                                            <div class="row form-group">
	                                                <div class="col col-md-3">
	                                                    <label class=" form-control-label">Certificate 5</label>
	                                                </div>
	                                                <div class="col-12 col-md-9">
	                                                    <p class="form-control-static">
	                                                    <button type="button" class="btn btn-link" data-toggle="modal" data-target="#certi5">
																${map.T_CNAME4 }
														</button>
	                                                    <c:choose>
															<c:when test="${map.TF_CCHECK5 == 'Y' }">
																<span class="badge badge-success">Pass</span>
															</c:when>
															<c:otherwise>
																<span class="badge badge-danger">Reject</span>
															</c:otherwise>
														</c:choose>
	                                                    </p>
	                                                </div>
	                                            </div>
	                                    </div>
	                                    <div class="card-footer">
	                                        <button type="reset" class="btn btn-info btn-sm" onClick="fn_openTutorList();">
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