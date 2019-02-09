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
    		
    		
        });
        
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
        function fn_openLectureDetail(obj){
        	var comSubmit = new ComSubmit();
    		comSubmit.setUrl("<c:url value='deleteLecture'/>");
    		comSubmit.addParam("L_NO",$("#L_NO").val());
    		comSubmit.submit();
        }
         
        function fn_selectLectureList(pageNo){
            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='lectureList' />");
            comAjax.setCallback("fn_selectLectureListCallback");
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
                                    "<a href='#this' name='cancel'> 취소하기</a>" +
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
                                "<td>" + value.L_PRICEPH + "</td>" +
                                "<td>" + value.L_TIMEPL + "</td>" +
                                
                                "<td>" + value.L_COUNTPM + "</td>" +
                                "<input type='text' id='L_NO' value='"+value.L_NO+"'/>" +
                                "<input type='button' id='btn' value='카테고리 이동하기' onclick='fn_openCategoryModify("+value.L_NO+");'/>"
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
                        <li class="active">
                            <a href="#this" id="lectureList">
                                <i class="fas fa-tags"></i>Lecture</a>
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
												<th>강의번호</th>
												<th>회원번호</th>
												<th>강의제목</th>
												<th>시간당 가격</th>
												<th>강의당 시간</th>
												<th>강의 월 별 횟수</th>
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