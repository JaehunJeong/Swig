<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<script type="text/javascript">
        $(document).ready(function(){
        	window.onload=function(){fn_selectLectureList(1);};
        	
        	$("#add").on("click",function(e){
    			e.preventDefault();
				
    			fn_openTutorInsert();
    		});
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
        function fn_openLectureModify(val){
        	
        	
        }
        function fn_openkakao(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='kakaotest' />");
            comSubmit.addParam("L_NO", obj.parent().find("#L_NO").val());
            comSubmit.submit();
        }
        function fn_openrefund(obj){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='payCancel' />");
            comSubmit.addParam("L_NO", obj.parent().find("#L_NO").val());
            comSubmit.submit();
        }
        function fn_openTutorDetail(val){
			var url = "adminLectureDetail?L_NO="+val;
			var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='"+url+"' />");
		    //comSubmit.addParam("T_NO",$("#T_NO").val());
		    comSubmit.submit();
			
		    //lacation.href="url";
		}
         
        function fn_selectLectureList(pageNo){
            var comAjax = new ComAjax();
            var url = "lectureList?L_CHK=D";
            comAjax.setUrl("<c:url value='"+url+"' />");
            comAjax.setCallback("fn_selectLectureListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
        function fn_selectComputerList(pageNo){
            var comAjax = new ComAjax();
            var url = "computerList?L_CHK=D";
            comAjax.setUrl("<c:url value='"+url+"' />");
            //comAjax.setUrl("<c:url value='computerList' />");
            comAjax.setCallback("fn_selectComputerListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
        function fn_selectLanguageList(pageNo){
            var comAjax = new ComAjax();
            var url = "languageList?L_CHK=D";
            //comAjax.setUrl("<c:url value='languageList' />");
            comAjax.setUrl("<c:url value='"+url+"' />");
            comAjax.setCallback("fn_selectLanguageListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
        function fn_selectLifeList(pageNo){
            var comAjax = new ComAjax();
            var url = "lifeList?L_CHK=D";
            comAjax.setUrl("<c:url value='"+url+"' />");
            //comAjax.setUrl("<c:url value='lifeList' />");
            comAjax.setCallback("fn_selectLifeListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
        function fn_selectEtcList(pageNo){
            var comAjax = new ComAjax();
            var url = "etcList?L_CHK=D";
            comAjax.setUrl("<c:url value='"+url+"' />");
            //comAjax.setUrl("<c:url value='etcList' />");
            comAjax.setCallback("fn_selectEtcListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
        
         
        function fn_selectLectureListCallback(data){
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
                    eventName : "fn_selectLectureList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.lectureList, function(key, value){
                    str += "<tr>" +
                   				//"<td>" + value.L_NO + "</td>" +
                   				"<td class='title'>" +
                                    "<a href='#this' name='num'>" + value.L_NO + "</a>" +
                                    "<a href='#this' name='cancel'> 카.페취소</a>" +
                                    "<input type='text' id='L_NO' value=" + value.L_NO + ">" +
                                "</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='name'>" + value.M_NO + "</a>" +
                                	"<input type='text' id='M_NO' value=" + value.M_NO + ">" +
                            	"</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='subject'>" + value.L_SUBJECT + "</a>" +
                                	"<input type='text' id='L_SUBJECT' value=" + value.L_SUBJECT + ">" +
                            	"</td>" +
                            	"<td>" + value.L_CLASSTYPE + "</td>"+
                                "<td>" + value.L_PRICEPH + "</td>" +
                                "<td>" + value.L_TIMEPL + "</td>" +
                                "<td>" + value.L_COUNTPM + "</td>" +
                                "<input type='text' id='L_NO' value='"+value.L_NO+"'/>" +
                                "<td>"+
                            	"<input type='button' class='btn btn-link' value='DETAIL' onclick='fn_openLectureDetail("+value.L_NO+");'/>"+
                       			"</td>"+
                            "</tr>";
                });
                body.append(str);
                 
               
               $("a[name='name']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openMemberDetail($(this));
               });
               $("a[name='subject']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openLectureDetail($(this));
               });
               $("a[name='num']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openkakao($(this));
               });
               $("a[name='cancel']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openrefund($(this));
               });
                
               
            }
        }
        function fn_selectComputerListCallback(data){
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
                    eventName : "fn_selectComputerList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.lectureList, function(key, value){
                    str += "<tr>" +
                   				//"<td>" + value.L_NO + "</td>" +
                   				"<td class='title'>" +
                                    "<a href='#this' name='num'>" + value.L_NO + "</a>" +
                                    "<a href='#this' name='cancel'> 카.페취소</a>" +
                                    "<input type='text' id='L_NO' value=" + value.L_NO + ">" +
                                "</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='name'>" + value.M_NO + "</a>" +
                                	"<input type='text' id='M_NO' value=" + value.M_NO + ">" +
                            	"</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='subject'>" + value.L_SUBJECT + "</a>" +
                                	"<input type='text' id='L_SUBJECT' value=" + value.L_SUBJECT + ">" +
                            	"</td>" +
                            	"<td>" + value.L_CLASSTYPE + "</td>"+
                                "<td>" + value.L_PRICEPH + "</td>" +
                                "<td>" + value.L_TIMEPL + "</td>" +
                                "<td>" + value.L_COUNTPM + "</td>" +
                                "<input type='text' id='L_NO' value='"+value.L_NO+"'/>" +
                                "<td>"+
                            	"<input type='button' class='btn btn-link' value='DETAIL' onclick='fn_openLectureDetail("+value.L_NO+");'/>"+
                       			"</td>"+
                            "</tr>";
                });
                body.append(str);
                 
               
               $("a[name='name']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openMemberDetail($(this));
               });
               $("a[name='subject']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openLectureDetail($(this));
               });
               $("a[name='num']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openkakao($(this));
               });
               $("a[name='cancel']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openrefund($(this));
               });
                
               
            }
        }
        function fn_selectLanguageListCallback(data){
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
                    eventName : "fn_selectLanguageList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.lectureList, function(key, value){
                    str += "<tr>" +
                   				//"<td>" + value.L_NO + "</td>" +
                   				"<td class='title'>" +
                                    "<a href='#this' name='num'>" + value.L_NO + "</a>" +
                                    "<a href='#this' name='cancel'> 카.페취소</a>" +
                                    "<input type='text' id='L_NO' value=" + value.L_NO + ">" +
                                "</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='name'>" + value.M_NO + "</a>" +
                                	"<input type='text' id='M_NO' value=" + value.M_NO + ">" +
                            	"</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='subject'>" + value.L_SUBJECT + "</a>" +
                                	"<input type='text' id='L_SUBJECT' value=" + value.L_SUBJECT + ">" +
                            	"</td>" +
                            	"<td>" + value.L_CLASSTYPE + "</td>"+
                                "<td>" + value.L_PRICEPH + "</td>" +
                                "<td>" + value.L_TIMEPL + "</td>" +
                                "<td>" + value.L_COUNTPM + "</td>" +
                                "<input type='text' id='L_NO' value='"+value.L_NO+"'/>" +
                                "<td>"+
                            	"<input type='button' class='btn btn-link' value='DETAIL' onclick='fn_openLectureDetail("+value.L_NO+");'/>"+
                       			"</td>"+
                            "</tr>";
                });
                body.append(str);
                 
               
               $("a[name='name']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openMemberDetail($(this));
               });
               $("a[name='subject']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openLectureDetail($(this));
               });
               $("a[name='num']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openkakao($(this));
               });
               $("a[name='cancel']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openrefund($(this));
               });
                
               
            }
        }
        function fn_selectLifeListCallback(data){
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
                    eventName : "fn_selectLifeList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.lectureList, function(key, value){
                    str += "<tr>" +
                   				//"<td>" + value.L_NO + "</td>" +
                   				"<td class='title'>" +
                                    "<a href='#this' name='num'>" + value.L_NO + "</a>" +
                                    "<a href='#this' name='cancel'> 카.페취소</a>" +
                                    "<input type='text' id='L_NO' value=" + value.L_NO + ">" +
                                "</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='name'>" + value.M_NO + "</a>" +
                                	"<input type='text' id='M_NO' value=" + value.M_NO + ">" +
                            	"</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='subject'>" + value.L_SUBJECT + "</a>" +
                                	"<input type='text' id='L_SUBJECT' value=" + value.L_SUBJECT + ">" +
                            	"</td>" +
                            	"<td>" + value.L_CLASSTYPE + "</td>"+
                                "<td>" + value.L_PRICEPH + "</td>" +
                                "<td>" + value.L_TIMEPL + "</td>" +
                                "<td>" + value.L_COUNTPM + "</td>" +
                                "<input type='text' id='L_NO' value='"+value.L_NO+"'/>" +
                                "<td>"+
                            	"<input type='button' class='btn btn-link' value='DETAIL' onclick='fn_openLectureDetail("+value.L_NO+");'/>"+
                       			"</td>"+
                            "</tr>";
                });
                body.append(str);
                 
               
               $("a[name='name']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openMemberDetail($(this));
               });
               $("a[name='subject']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openLectureDetail($(this));
               });
               $("a[name='num']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openkakao($(this));
               });
               $("a[name='cancel']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openrefund($(this));
               });
                
               
            }
        }
        function fn_selectEtcListCallback(data){
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
                    eventName : "fn_selectEtcList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.lectureList, function(key, value){
                    str += "<tr>" +
                   				//"<td>" + value.L_NO + "</td>" +
                   				"<td class='title'>" +
                                    "<a href='#this' name='num'>" + value.L_NO + "</a>" +
                                    "<a href='#this' name='cancel'> 카.페취소</a>" +
                                    "<input type='text' id='L_NO' value=" + value.L_NO + ">" +
                                "</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='name'>" + value.M_NO + "</a>" +
                                	"<input type='text' id='M_NO' value=" + value.M_NO + ">" +
                            	"</td>" +
                                "<td class='title'>" +
                                	"<a href='#this' name='subject'>" + value.L_SUBJECT + "</a>" +
                                	"<input type='text' id='L_SUBJECT' value=" + value.L_SUBJECT + ">" +
                            	"</td>" +
                            	"<td>" + value.L_CLASSTYPE + "</td>"+
                                "<td>" + value.L_PRICEPH + "</td>" +
                                "<td>" + value.L_TIMEPL + "</td>" +
                                "<td>" + value.L_COUNTPM + "</td>" +
                                "<input type='text' id='L_NO' value='"+value.L_NO+"'/>" +
                                "<td>"+
                            	"<input type='button' class='btn btn-link' value='DETAIL' onclick='fn_openLectureDetail("+value.L_NO+");'/>"+
                       			"</td>"+
                            "</tr>";
                });
                body.append(str);
                 
               
               $("a[name='name']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openMemberDetail($(this));
               });
               $("a[name='subject']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openLectureDetail($(this));
               });
               $("a[name='num']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openkakao($(this));
               });
               $("a[name='cancel']").on("click", function(e){ //제목
                   e.preventDefault();
                   fn_openrefund($(this));
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
                        <li class="has-sub ">
                        	<a class="js-arrow" href="openMemberList">
                        		<i class ="fas fa-male"></i>Tutor
                        	</a>
                        	<ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li >
                                    <a href="#this" id="tutorList">Tutor List</a>
                                </li>
                                <li>
                                    <a href="#this" id="tutorApplyList">Apply List</a>
                                </li>
                            </ul>
                        </li>
                        <li >
                            <a href="#this" id="categoryList">
                                <i class="fas fa-th-large"></i>Category</a>
                        </li>
                        <li class="has-sub active">
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
                                <li class="active">
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
                                <div id="selectCA_NO" class="form-check-inline form-check">
									<div id="radio1">
									<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input"  onclick="fn_selectComputerList();" />컴퓨터
									</div>
									<div id="radio2">
									<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="fn_selectLanguageList();" />외국어
									</div>
									<div id="radio3">
									<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="fn_selectLifeList();" />라이프스타일
									</div>
									<div id="radio4">
									<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="fn_selectEtcList();" />기타
									</div>
								</div>
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
								        <thead>
											<tr>
												<th class="th1">강의번호</th>
												<th >회원번호</th>
												<th >강의제목</th>
												<th >강의타입</th>
												<th >시간당 가격</th>
												<th >강의당 시간</th>
												<th >강의 월 별 횟수</th>
											</tr>
                                        </thead>
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                    <div id ="div_list"></div>
									<a href="#this" class="btn btn-success" id="add" >추가하기</a>
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