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
        	window.onload=function(){fn_selectCategoryList(1);};
        	//var w = window.open("about:blank","_blank",'popup','width=340,height=420,scrollbars=yes');
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
        function fn_openTutorInsert(obj){
        	//var comSubmit = new ComSubmit();
    		window.open('<c:url value="openAddCategory"/>','popup','width=500,height=600,scrollbars=yes');
        	//comSubmit.setUrl("<c:url value='openAddCategory'/>");
    		//comSubmit.submit();
        } 
        function fn_openCategoryModify(val){
        	//var val =$("#CA_IDX").val();
        	var url = "openModifyCategory?CA_IDX="+val;
        	
        	window.open(url,'popupView','width=500,height=600,scrollbars=yes');
        	
        }
        /* function fn_openCategoryModify(){
        	//var comSubmit = new ComSubmit();
        	//comSubmit.setUrl("<c:url value='openModifyCategory'/>");
        	//comSubmit.addParam("CA_IDX",$("#CA_IDX").val());
        	
        	//comSubmit.submit();
        	//window.open('<c:url value="openModifyCategory/?CA_IDX="/>','popup','width=340,height=420,scrollbars=yes');
        	/* var CA_IDX = $("#CA_IDX").val();
        	
        	$.ajax({
        		url : "<c:url value='openModifyCategory'/>",
        		type : 'GET',
        		data : CA_IDX,
        		success : function(data){
        			w.location.href="<c:url value='openModifyCategory'/>";
        		}
        		//error: function(xhr, status, error) {alert(error);}
        		/* function(data){
        			//window.open('<c:url value="openModifyCategory"/>','popup','width=340,height=420,scrollbars=yes');
        			eventSuccess
        		} 
        	}); //
        	//var CA_IDX = $("#CA_IDX").val();
        	//var s =document.getElementByID('CA_IDX').value;
        	//var val =  $("#CA_IDX").val();
        	var url = "openModifyCategory?CA_IDX="+val;
        	//var encode = encodeURI(url);
        	window.open(url,'popupView','몰라');
        	
        } */
        
        function fn_openCategoryDelete(val){
        	var url = "deleteCategory?CA_IDX="+val;
        	var comSubmit = new ComSubmit();
    		comSubmit.setUrl("<c:url value='"+url+"'/>");
    		comSubmit.submit();
        }
         
        function fn_selectCategoryList(pageNo){
            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='categoryList' />");
            comAjax.setCallback("fn_selectCategoryListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
        
         
        function fn_selectCategoryListCallback(data){
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
                    eventName : "fn_selectCategoryList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.categoryList, function(key, value){
                    str += "<tr>" +
                                "<td>" + value.CA_NO + "</td>" +
                                "<td>" + value.CA_LSECTION + "</td>" +
                                "<td>" + value.CA_SSECTION + "</td>" +
                                "<td>"+
                                	//"<input type='hidden' id='CA_IDX' value='"+value.CA_IDX+"'/>" +
                            		//"<input type='button' class='btn btn-link' value='Inactive' onclick='fn_openCategoryDelete("+value.CA_IDX+");'/>"+
                            		"<button type='submit' class='btn btn-warning btn-sm' onclick='fn_openCategoryDelete("+value.CA_IDX+");'>"+
                                	"<i class='fa fa-ban'></i> 비 활성화 시키기"+
                            	"</button>"+
                       			"</td>"+
                                //"<input type='text' id='CA_IDX' name='CA_IDX' value=" + value.CA_IDX + ">" +
                                //"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
                                //"<a href='#this' name='update'><input type='text' id='"+key+"' value='"+value.CA_IDX+"'/>"+key+"카테고리 이동하기</a>" +
                                //"<a href='#this' name='update'><input type='text' id='CA_IDX' value='"+value.CA_IDX+"'/>카테고리 이동하기</a>" +
                                "<td>" +
	                                "<button type='submit' class='btn btn-success btn-sm' onclick='fn_openCategoryModify("+value.CA_IDX+");'>"+
	                                	"<i class='fa fa-eraser'></i> 카테고리 이동하기"+
	                            	"</button>"+
                                //"<input type='button' id='btn btn-success btn-sm' value='카테고리 이동하기' onclick='fn_openCategoryModify("+value.CA_IDX+");'/>"
                            	"</td>" +
                            "</tr>";
                });
                body.append(str);
                 
              
                
                
               
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
                        <li class="active">
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
												<th>카테고리번호</th>
												<th>대분류</th>
												<th>소분류</th>
												<th>비활성화 시키기</th>
												<th>카테고리 이동하기</th>
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