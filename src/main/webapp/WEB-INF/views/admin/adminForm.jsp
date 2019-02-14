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
		
		document.getElementById('febchart').style.display="block";
		document.getElementById('janchart').style.display="none";
		document.getElementById('decchart').style.display="none";
		document.getElementById('novchart').style.display="none";
		document.getElementById('octchart').style.display="none";
		///
		document.getElementById('compercent').style.display="block";
		document.getElementById('langpercent').style.display="block";
		document.getElementById('lifepercent').style.display="block";
		document.getElementById('otherspercent').style.display="block";
		//////
		document.getElementById('jancompercent').style.display="none";
		document.getElementById('janlangpercent').style.display="none";
		document.getElementById('janlifepercent').style.display="none";
		document.getElementById('janotherspercent').style.display="none";
		/////
		document.getElementById('deccompercent').style.display="none";
		document.getElementById('declangpercent').style.display="none";
		document.getElementById('declifepercent').style.display="none";
		document.getElementById('decotherspercent').style.display="none";
		//////
		document.getElementById('novcompercent').style.display="none";
		document.getElementById('novlangpercent').style.display="none";
		document.getElementById('novlifepercent').style.display="none";
		document.getElementById('novotherspercent').style.display="none";
		//////
		document.getElementById('octcompercent').style.display="none";
		document.getElementById('octlangpercent').style.display="none";
		document.getElementById('octlifepercent').style.display="none";
		document.getElementById('octotherspercent').style.display="none";
		
		
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
	function checkLayer(val){
    	if(val == 1)
		{
    		document.getElementById('febchart').style.display="block";
    		document.getElementById('compercent').style.display="block";
    		document.getElementById('langpercent').style.display="block";
    		document.getElementById('lifepercent').style.display="block";
    		document.getElementById('otherspercent').style.display="block";
    		document.getElementById('janchart').style.display="none";
    		document.getElementById('jancompercent').style.display="none";
    		document.getElementById('janlangpercent').style.display="none";
    		document.getElementById('janlifepercent').style.display="none";
    		document.getElementById('janotherspercent').style.display="none";
    		document.getElementById('decchart').style.display="none";
    		document.getElementById('deccompercent').style.display="none";
    		document.getElementById('declangpercent').style.display="none";
    		document.getElementById('declifepercent').style.display="none";
    		document.getElementById('decotherspercent').style.display="none";
    		document.getElementById('novchart').style.display="none";
    		document.getElementById('novcompercent').style.display="none";
    		document.getElementById('novlangpercent').style.display="none";
    		document.getElementById('novlifepercent').style.display="none";
    		document.getElementById('novotherspercent').style.display="none";
    		document.getElementById('octchart').style.display="none";
    		document.getElementById('octcompercent').style.display="none";
    		document.getElementById('octlangpercent').style.display="none";
    		document.getElementById('octlifepercent').style.display="none";
    		document.getElementById('octotherspercent').style.display="none";
			
		}
		else if(val==2)
		{
			document.getElementById('febchart').style.display="none";
    		document.getElementById('compercent').style.display="none";
    		document.getElementById('langpercent').style.display="none";
    		document.getElementById('lifepercent').style.display="none";
    		document.getElementById('otherspercent').style.display="none";
    		document.getElementById('janchart').style.display="block";
    		document.getElementById('jancompercent').style.display="block";
    		document.getElementById('janlangpercent').style.display="block";
    		document.getElementById('janlifepercent').style.display="block";
    		document.getElementById('janotherspercent').style.display="block";
    		document.getElementById('decchart').style.display="none";
    		document.getElementById('deccompercent').style.display="none";
    		document.getElementById('declangpercent').style.display="none";
    		document.getElementById('declifepercent').style.display="none";
    		document.getElementById('decotherspercent').style.display="none";
    		document.getElementById('novchart').style.display="none";
    		document.getElementById('novcompercent').style.display="none";
    		document.getElementById('novlangpercent').style.display="none";
    		document.getElementById('novlifepercent').style.display="none";
    		document.getElementById('novotherspercent').style.display="none";
    		document.getElementById('octchart').style.display="none";
    		document.getElementById('octcompercent').style.display="none";
    		document.getElementById('octlangpercent').style.display="none";
    		document.getElementById('octlifepercent').style.display="none";
    		document.getElementById('octotherspercent').style.display="none";
		}
		else if(val==3)
		{
			document.getElementById('febchart').style.display="none";
    		document.getElementById('compercent').style.display="none";
    		document.getElementById('langpercent').style.display="none";
    		document.getElementById('lifepercent').style.display="none";
    		document.getElementById('otherspercent').style.display="none";
    		document.getElementById('janchart').style.display="none";
    		document.getElementById('jancompercent').style.display="none";
    		document.getElementById('janlangpercent').style.display="none";
    		document.getElementById('janlifepercent').style.display="none";
    		document.getElementById('janotherspercent').style.display="none";
    		document.getElementById('decchart').style.display="block";
    		document.getElementById('deccompercent').style.display="block";
    		document.getElementById('declangpercent').style.display="block";
    		document.getElementById('declifepercent').style.display="block";
    		document.getElementById('decotherspercent').style.display="block";
    		document.getElementById('novchart').style.display="none";
    		document.getElementById('novcompercent').style.display="none";
    		document.getElementById('novlangpercent').style.display="none";
    		document.getElementById('novlifepercent').style.display="none";
    		document.getElementById('novotherspercent').style.display="none";
    		document.getElementById('octchart').style.display="none";
    		document.getElementById('octcompercent').style.display="none";
    		document.getElementById('octlangpercent').style.display="none";
    		document.getElementById('octlifepercent').style.display="none";
    		document.getElementById('octotherspercent').style.display="none";
		}
		else if(val==4)
		{
			document.getElementById('febchart').style.display="none";
    		document.getElementById('compercent').style.display="none";
    		document.getElementById('langpercent').style.display="none";
    		document.getElementById('lifepercent').style.display="none";
    		document.getElementById('otherspercent').style.display="none";
    		document.getElementById('janchart').style.display="none";
    		document.getElementById('jancompercent').style.display="none";
    		document.getElementById('janlangpercent').style.display="none";
    		document.getElementById('janlifepercent').style.display="none";
    		document.getElementById('janotherspercent').style.display="none";
    		document.getElementById('decchart').style.display="none";
    		document.getElementById('deccompercent').style.display="none";
    		document.getElementById('declangpercent').style.display="none";
    		document.getElementById('declifepercent').style.display="none";
    		document.getElementById('decotherspercent').style.display="none";
    		document.getElementById('novchart').style.display="block";
    		document.getElementById('novcompercent').style.display="block";
    		document.getElementById('novlangpercent').style.display="block";
    		document.getElementById('novlifepercent').style.display="block";
    		document.getElementById('novotherspercent').style.display="block";
    		document.getElementById('octchart').style.display="none";
    		document.getElementById('octcompercent').style.display="none";
    		document.getElementById('octlangpercent').style.display="none";
    		document.getElementById('octlifepercent').style.display="none";
    		document.getElementById('octotherspercent').style.display="none";
		}
		else if(val==5)
		{
			document.getElementById('febchart').style.display="none";
    		document.getElementById('compercent').style.display="none";
    		document.getElementById('langpercent').style.display="none";
    		document.getElementById('lifepercent').style.display="none";
    		document.getElementById('otherspercent').style.display="none";
    		document.getElementById('janchart').style.display="none";
    		document.getElementById('jancompercent').style.display="none";
    		document.getElementById('janlangpercent').style.display="none";
    		document.getElementById('janlifepercent').style.display="none";
    		document.getElementById('janotherspercent').style.display="none";
    		document.getElementById('decchart').style.display="none";
    		document.getElementById('deccompercent').style.display="none";
    		document.getElementById('declangpercent').style.display="none";
    		document.getElementById('declifepercent').style.display="none";
    		document.getElementById('decotherspercent').style.display="none";
    		document.getElementById('novchart').style.display="none";
    		document.getElementById('novcompercent').style.display="none";
    		document.getElementById('novlangpercent').style.display="none";
    		document.getElementById('novlifepercent').style.display="none";
    		document.getElementById('novotherspercent').style.display="none";
    		document.getElementById('octchart').style.display="block";
    		document.getElementById('octcompercent').style.display="block";
    		document.getElementById('octlangpercent').style.display="block";
    		document.getElementById('octlifepercent').style.display="block";
    		document.getElementById('octotherspercent').style.display="block";
		}

	}
	</script>
</head>
<body>
	<body class="animsition">
    <div class="page-wrapper">
		
        <!-- MENU SIDEBAR-->
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
                        <li class="has-sub">
                        	<a class="js-arrow" href="#this">
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
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap"> 
                            <div class="header-button">
                                <div class="noti-wrap">
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="images/icon/admin.PNG" alt="ADMIN" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">ADMIN</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="images/icon/admin.PNG" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">ADMIN</a>
                                                    </h5>
                                                    <span class="email">johndoe@example.com</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="#">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
               </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">                   
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            
                                            <div class="text">
                                                <h2 id="maptotal"></h2>
                                                <script>
	                                    		document.getElementById("maptotal").innerHTML = ${map1}+${map2}+${map3}+${map4}+${map5};
	                                            </script>
                                                <span>회원 가입 현황</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-tv-alt-play"></i>
                                            </div>
                                            <div class="text">
                                                <h2 id="lectureTotal"></h2>
                                                <script>
	                                    		document.getElementById("lectureTotal").innerHTML = ${lectureMap1}+${lectureMap2}+${lectureMap3}+${lectureMap4}+${lectureMap5};
	                                            </script>
                                                <span>강의 개설 현황</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-add"></i>
                                            </div>
                                            <div class="text">
                                                <h2 id="tutorTotal"></h2>
                                                <script>
	                                    		document.getElementById("tutorTotal").innerHTML = ${tutorMap1}+${tutorMap2}+${tutorMap3}+${tutorMap4}+${tutorMap5};
	                                            </script>
                                                <span>튜터 신청 현황</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-money-box"></i>
                                            </div>
                                            <div class="text">
                                                <h2 id="costTotal"></h2>
                                                <script>
	                                    		document.getElementById("costTotal").innerHTML = ${costMap1}+${costMap2}+${costMap3}+${costMap4}+${costMap5};
	                                            </script>
                                                <span>결제 승인 현황</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="au-card recent-report">
                                    <div class="au-card-inner">
                                        <h3 class="title-2">Revenue Chart</h3>
                                        <br>
                                        <br>
                                        <div class="chart-info">
                                            <div class="chart-info__left">
                                                <div class="chart-note">
                                                    <span class="dot dot--blue"></span>
                                                    <span>Refund</span>
                                                </div>
                                                <div class="chart-note mr-0">
                                                    <span class="dot dot--green"></span>
                                                    <span>Income</span>
                                                </div>
                                            </div>
                                            <div class="chart-info__right">
                                                <div class="chart-statis">
                                                    <span class="index incre" id="average"></span>
                                                        <script>
                                                        document.getElementById("average").innerHTML += "<i class='zmdi zmdi-long-arrow-up'></i>"
			                                    		document.getElementById("average").innerHTML += (((${costMap2}-((${costMap5}+${costMap4}+${costMap3}+${costMap1}) / 4))/((${costMap5}+${costMap4}+${costMap3}+${costMap1}) / 4)))*100
                                                        document.getElementById("average").innerHTML += "%";
                                                        </script>
                                                    <span class="label">income rate</span>
                                                </div>
                                                <div class="chart-statis mr-0">
                                                    <span class="index decre" id="refund"></span>
                                                        <script>
                                                        document.getElementById("refund").innerHTML += "<i class='zmdi zmdi-long-arrow-down'></i>"
			                                    		document.getElementById("refund").innerHTML += (((${costMap2} - ((${costMap5} + ${costMap4} + ${costMap3} + ${costMap1}) / 4)) / ((${costMap5}+${costMap4}+${costMap3}+${costMap1}) / 4)))*100
                                                        document.getElementById("refund").innerHTML += "%";
                                                        </script>
                                                    <span class="label">refund rate</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="recent-report__chart">
                                            <canvas id="recent-rep-chart"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="au-card chart-percent-card">
                                    <div class="au-card-inner">
                                        <h3 class="title-2 tm-b-5">Monthly Popular Category Chart by %</h3>
                                        <br>
                                        <div id="selectCA_NO" class="form-check-inline form-check">
											<div id="radio1">
											<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1"  class="form-check-input" onclick="checkLayer(1);" checked="checked"/>2월
											</div>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<div id="radio2">
											<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(2);"/>1월
											</div>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<div id="radio3">
											<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(3);"/>12월
											</div>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<div id="radio4">
											<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(4);"/>11월
											</div>
											&nbsp;&nbsp;&nbsp;&nbsp;
											<div id="radio5">
											<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="checkLayer(5);"/>10월
											</div>
										</div>
                                        <div class="row no-gutters">
                                            <div class="col-xl-6">
                                                <div class="chart-note-wrap">
                                                    <div class="chart-note mr-0 d-block">
                                                        <span class="dot dot--blue"></span>
                                                        <span>Computer</span>
                                                        <span class="index decre" id="compercent"></span>
                                                        <span class="index decre" id="jancompercent"></span>
                                                        <span class="index decre" id="deccompercent"></span>
                                                        <span class="index decre" id="novcompercent"></span>
                                                        <span class="index decre" id="octcompercent"></span>
                                                    </div>
                                                    <div class="chart-note mr-0 d-block">
                                                        <span class="dot dot--red"></span>
                                                        <span>Language</span>
                                                        <span class="index decre" id="langpercent"></span>
                                                        <span class="index decre" id="janlangpercent"></span>
                                                        <span class="index decre" id="declangpercent"></span>
                                                        <span class="index decre" id="novlangpercent"></span>
                                                        <span class="index decre" id="octlangpercent"></span>
                                                    </div>
                                                    <div class="chart-note mr-0 d-block">
	                                                    <span class="dot dot--purple"></span>
	                                                    <span>LifeStyle</span>
	                                                    <span class="index decre" id="lifepercent"></span>
	                                                    <span class="index decre" id="janlifepercent"></span>
	                                                    <span class="index decre" id="declifepercent"></span>
	                                                    <span class="index decre" id="novlifepercent"></span>
	                                                    <span class="index decre" id="octlifepercent"></span>
	                                                </div>
	                                                <div class="chart-note mr-0 d-block">
	                                                    <span class="dot dot--green"></span>
	                                                    <span>Others</span>
	                                                    <span class="index decre" id="otherspercent"></span>
	                                                    <span class="index decre" id="janotherspercent"></span>
	                                                    <span class="index decre" id="decotherspercent"></span>
	                                                    <span class="index decre" id="novotherspercent"></span>
	                                                    <span class="index decre" id="octotherspercent"></span>
	                                                    
	                                                </div>
	                                                	
                                                        <script>
                                                        //document.getElementById("percent").innerHTML += "<i class='zmdi zmdi-long-arrow-down'></i>"
			                                    		document.getElementById("compercent").innerHTML += (${caMap1}/${caMap}) * 100 
                                                        document.getElementById("compercent").innerHTML += "%";
                                                        document.getElementById("langpercent").innerHTML += (${caMap2}/${caMap}) * 100 
                                                        document.getElementById("langpercent").innerHTML += "%";
                                                        document.getElementById("lifepercent").innerHTML += (${caMap3}/${caMap}) * 100 
                                                        document.getElementById("lifepercent").innerHTML += "%";
                                                        document.getElementById("otherspercent").innerHTML += (${caMap4}/${caMap}) * 100 
                                                        document.getElementById("otherspercent").innerHTML += "%";
                                                        /////
                                                        document.getElementById("jancompercent").innerHTML += (${caJanMap1}/${caJanMap}) * 100 
                                                        document.getElementById("jancompercent").innerHTML += "%";
                                                        document.getElementById("janlangpercent").innerHTML += (${caJanMap2}/${caJanMap}) * 100 
                                                        document.getElementById("janlangpercent").innerHTML += "%";
                                                        document.getElementById("janlifepercent").innerHTML += (${caJanMap3}/${caJanMap}) * 100 
                                                        document.getElementById("janlifepercent").innerHTML += "%";
                                                        document.getElementById("janotherspercent").innerHTML += (${caJanMap4}/${caJanMap}) * 100 
                                                        document.getElementById("janotherspercent").innerHTML += "%";
                                                        /////
                                                        document.getElementById("deccompercent").innerHTML += (${caDecMap1}/${caDecMap}) * 100 
                                                        document.getElementById("deccompercent").innerHTML += "%";
                                                        document.getElementById("declangpercent").innerHTML += (${caDecMap2}/${caDecMap}) * 100 
                                                        document.getElementById("declangpercent").innerHTML += "%";
                                                        document.getElementById("declifepercent").innerHTML += (${caDecMap3}/${caDecMap}) * 100 
                                                        document.getElementById("declifepercent").innerHTML += "%";
                                                        document.getElementById("decotherspercent").innerHTML += (${caDecMap4}/${caDecMap}) * 100 
                                                        document.getElementById("decotherspercent").innerHTML += "%";
                                                        ////////
                                                        document.getElementById("novcompercent").innerHTML += (${caNovMap1}/${caNovMap}) * 100 
                                                        document.getElementById("novcompercent").innerHTML += "%";
                                                        document.getElementById("novlangpercent").innerHTML += (${caNovMap2}/${caNovMap}) * 100 
                                                        document.getElementById("novlangpercent").innerHTML += "%";
                                                        document.getElementById("novlifepercent").innerHTML += (${caNovMap3}/${caNovMap}) * 100 
                                                        document.getElementById("novlifepercent").innerHTML += "%";
                                                        document.getElementById("novotherspercent").innerHTML += (${caNovMap4}/${caNovMap}) * 100 
                                                        document.getElementById("novotherspercent").innerHTML += "%";
                                                        /////////
                                                        document.getElementById("octcompercent").innerHTML += (${caOctMap1}/${caOctMap}) * 100 
                                                        document.getElementById("octcompercent").innerHTML += "%";
                                                        document.getElementById("octlangpercent").innerHTML += (${caOctMap2}/${caOctMap}) * 100 
                                                        document.getElementById("octlangpercent").innerHTML += "%";
                                                        document.getElementById("octlifepercent").innerHTML += (${caOctMap3}/${caOctMap}) * 100 
                                                        document.getElementById("octlifepercent").innerHTML += "%";
                                                        document.getElementById("octotherspercent").innerHTML += (${caOctMap4}/${caOctMap}) * 100 
                                                        document.getElementById("octotherspercent").innerHTML += "%";
                                                        </script>
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="percent-chart" id="febchart">
                                                    <canvas id="percent-chart"></canvas>
                                                </div>
                                                <div class="percent-chart" id="janchart">
                                                    <canvas id="percent-chart-1"></canvas>
                                                </div>
                                                <div class="percent-chart" id="decchart">
                                                    <canvas id="percent-chart-12"></canvas>
                                                </div>
                                                <div class="percent-chart" id="novchart">
                                                    <canvas id="percent-chart-11"></canvas>
                                                </div>
                                                <div class="percent-chart" id="octchart">
                                                    <canvas id="percent-chart-10"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col-md-12">
                                <div class="copyright">
                                    <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
                                    <input type="hidden" id="map1" name="map1" value="${map1 }">
                                    <input type="hidden" id="map2" name="map2" value="${map2 }">
                                    <input type="hidden" id="map3" name="map3" value="${map3 }">
                                    <input type="hidden" id="map4" name="map4" value="${map4 }">
                                    <input type="hidden" id="map5" name="map5" value="${map5 }">
                                    <input type="hidden" id="lectureMap1" name="lectureMap1" value="${lectureMap1 }">
                                    <input type="hidden" id="lectureMap2" name="lectureMap2" value="${lectureMap2 }">
                                    <input type="hidden" id="lectureMap3" name="lectureMap3" value="${lectureMap3 }">
                                    <input type="hidden" id="lectureMap4" name="lectureMap4" value="${lectureMap4 }">
                                    <input type="hidden" id="lectureMap5" name="lectureMap5" value="${lectureMap5 }">
                                    <input type="hidden" id="tutorMap1" name="tutorMap1" value="${tutorMap1 }">
                                    <input type="hidden" id="tutorMap2" name="tutorMap2" value="${tutorMap2 }">
                                    <input type="hidden" id="tutorMap3" name="tutorMap3" value="${tutorMap3 }">
                                    <input type="hidden" id="tutorMap4" name="tutorMap4" value="${tutorMap4 }">
                                    <input type="hidden" id="tutorMap5" name="tutorMap5" value="${tutorMap5 }">
                                    <input type="hidden" id="payMap1" name="payMap1" value="${payMap1 }">
                                    <input type="hidden" id="payMap2" name="payMap2" value="${payMap2 }">
                                    <input type="hidden" id="payMap3" name="payMap3" value="${payMap3 }">
                                    <input type="hidden" id="payMap4" name="payMap4" value="${payMap4 }">
                                    <input type="hidden" id="payMap5" name="payMap5" value="${payMap5 }">
                                    <input type="hidden" id="caMap1" name="caMap1" value="${camp1 }">
                                    <input type="hidden" id="caMap2" name="caMap2" value="${camp2 }">
                                    <input type="hidden" id="caMap3" name="caMap3" value="${camp3 }">
                                    <input type="hidden" id="caMap4" name="caMap4" value="${camp4 }">
                                    <input type="hidden" id="caJanMap1" name="caJanMap1" value="${jancamp1 }">
                                    <input type="hidden" id="caJanMap2" name="caJanMap2" value="${jancamp2 }">
                                    <input type="hidden" id="caJanMap3" name="caJanMap3" value="${jancamp3 }">
                                    <input type="hidden" id="caJanMap4" name="caJanMap4" value="${jancamp4 }">
                                    <input type="hidden" id="caDecMap1" name="caDecMap1" value="${deccamp1 }">
                                    <input type="hidden" id="caDecMap2" name="caDecMap2" value="${deccamp2 }">
                                    <input type="hidden" id="caDecMap3" name="caDecMap3" value="${deccamp3 }">
                                    <input type="hidden" id="caDecMap4" name="caDecMap4" value="${deccamp4 }">
                                    <input type="hidden" id="caNovMap1" name="caNovMap1" value="${novcamp1 }">
                                    <input type="hidden" id="caNovMap2" name="caNovMap2" value="${novcamp2 }">
                                    <input type="hidden" id="caNovMap3" name="caNovMap3" value="${novcamp3 }">
                                    <input type="hidden" id="caNovMap4" name="caNovMap4" value="${novcamp4 }">
                                    <input type="hidden" id="caOctMap1" name="caOctMap1" value="${octcamp1 }">
                                    <input type="hidden" id="caOctMap2" name="caOctMap2" value="${octcamp2 }">
                                    <input type="hidden" id="caOctMap3" name="caOctMap3" value="${octcamp3 }">
                                    <input type="hidden" id="caOctMap4" name="caOctMap4" value="${octcamp4 }">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

    </div>
   </div>
   
	<%@ include file="/WEB-INF/include/include-body.jspf" %>
</body>
</html>