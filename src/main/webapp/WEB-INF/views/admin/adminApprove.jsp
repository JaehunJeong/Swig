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
        	window.onload=function(){fn_selectApproveList(1);};
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
        function fn_openTutorInsert(obj){
        	//var comSubmit = new ComSubmit();
    		window.open('<c:url value="openAddCategory"/>','popup','width=500,height=600,scrollbars=yes');
        	//comSubmit.setUrl("<c:url value='openAddCategory'/>");
    		//comSubmit.submit();
        } 
        function fn_openApproveModify(val){
			var url = "payCancel?O_IDX="+val;
			var comSubmit = new ComSubmit();
		    comSubmit.setUrl("<c:url value='"+url+"' />");
		    //comSubmit.addParam("T_NO",$("#T_NO").val());
		    comSubmit.submit();
			
		    //lacation.href="url";
		}
        
        
        function fn_openCategoryDelete(val){
        	var url = "deleteCategory?CA_IDX="+val;
        	var comSubmit = new ComSubmit();
    		comSubmit.setUrl("<c:url value='"+url+"'/>");
    		comSubmit.submit();
        }
         
        function fn_selectApproveList(pageNo){
            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='approveList' />");
            comAjax.setCallback("fn_selectApproveListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
        function fn_selectApproveComList(pageNo){
            var comAjax = new ComAjax();
            comAjax.setUrl("<c:url value='approveComList' />");
            comAjax.setCallback("fn_selectRefundListCallback");
            comAjax.addParam("PAGE_INDEX",$("#PAGE_INDEX").val());
			comAjax.addParam("PAGE_ROW", 15);
			comAjax.addParam("CA_NO_FE", $("#CA_NO_FE").val());
            comAjax.ajax();
        }
         
        function fn_selectApproveListCallback(data){
            var total = data.TOTAL;
            var body = $("table>tbody");
            body.empty();
            if(total == 0){
                var str = "<tr>" +
                                "<td colspan='18'>조회된 결과가 없습니다.</td>" +
                            "</tr>";
                body.append(str);
            }
            else{
                var params = {
                    divId : "PAGE_NAVI",
                    pageIndex : "PAGE_INDEX",
                    totalCount : total,
                    eventName : "fn_selectApproveList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.kakaoList, function(key, value){
                    str += "<tr>" +
                                "<td>" + value.O_IDX + "</td>" +
                                "<td>" + value.O_TID + "</td>" +
                                "<td>" + value.O_CID + "</td>" +
                                "<td>" + value.O_STATUS + "</td>" +
                                "<td>" + value.O_PARTNER_ID + "</td>" +
                                "<td>" + value.O_PARTNER_USER_ID + "</td>" +
                                "<td>" + value.O_PAYMENT_METHOD_TYPE + "</td>" +
                                "<td>" + value.O_ITEM_NAME + "</td>" +
                                "<td>" + value.O_QUANTITY + "</td>" +
                                "<td>" + value.O_AMOUNT_TOTAL + "</td>" +
                                "<td>" + value.O_AMOUNT_VAT + "</td>" +
                                "<td>" + value.O_CANCELAVAILABLE_TOTAL + "</td>" +
                                "<td>" + value.O_CANCELAVAILABLE_VAT + "</td>" +
                                "<td>" + value.O_CREATED_AT + "</td>" +
                                "<td>" + value.O_CARD_BIN + "</td>" +
                                "<td>" + value.O_CARD_CORP_NAME + "</td>" +
                                "<td>" + value.O_INSTALL_MONTH + "</td>" +
                                "<td>" + value.L_NO + "</td>" +
                                "<td>" +
                                	"<button type='submit' class='btn btn-success btn-sm' onclick='fn_openApproveModify("+value.O_IDX+");'>"+
                                		"<i class='fa fa-check'></i> 결제 승인"+
                            		"</button>"+
                        		"</td>" +
                            "</tr>";
                });
                body.append(str);
                 
              
                
                
               
            }
        }
        function fn_selectRefundListCallback(data){
            var total = data.TOTAL;
            var body = $("table>tbody");
            body.empty();
            if(total == 0){
                var str = "<tr>" +
                                "<td colspan='18'>조회된 결과가 없습니다.</td>" +
                            "</tr>";
                body.append(str);
            }
            else{
                var params = {
                    divId : "PAGE_NAVI",
                    pageIndex : "PAGE_INDEX",
                    totalCount : total,
                    eventName : "fn_selectRefundList"
                };
                gfn_renderPaging(params);
                 
                var str = "";
                $.each(data.kakaoList, function(key, value){
                    str += "<tr>" +
                                "<td>" + value.O_IDX + "</td>" +
                                "<td>" + value.O_TID + "</td>" +
                                "<td>" + value.O_CID + "</td>" +
                                "<td>" + value.O_STATUS + "</td>" +
                                "<td>" + value.O_PARTNER_ID + "</td>" +
                                "<td>" + value.O_PARTNER_USER_ID + "</td>" +
                                "<td>" + value.O_PAYMENT_METHOD_TYPE + "</td>" +
                                "<td>" + value.O_ITEM_NAME + "</td>" +
                                "<td>" + value.O_QUANTITY + "</td>" +
                                "<td>" + value.O_AMOUNT_TOTAL + "</td>" +
                                "<td>" + value.O_AMOUNT_VAT + "</td>" +
                                "<td>" + value.O_CANCELAVAILABLE_TOTAL + "</td>" +
                                "<td>" + value.O_CANCELAVAILABLE_VAT + "</td>" +
                                "<td>" + value.O_CREATED_AT + "</td>" +
                                "<td>" + value.O_CARD_BIN + "</td>" +
                                "<td>" + value.O_CARD_CORP_NAME + "</td>" +
                                "<td>" + value.O_INSTALL_MONTH + "</td>" +
                                "<td>" + value.L_NO + "</td>" +
                                "<td>" +
                                	"<button type='submit' class='btn btn-success btn-sm' onclick='fn_openApproveModify("+value.O_IDX+");'>"+
                                		"<i class='fa fa-eraser'></i> 환불하기"+
                            		"</button>"+
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
                        <li class="has-sub active">
                        	<a class="js-arrow" href="#this">
                        		<i class ="fas fa-credit-card"></i>Kakao Order Status
                        	</a>
                        	<ul class="list-unstyled navbar__sub-list js-sub-list">
                            	<li class="active">
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
									<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="1" class="form-check-input" checked="checked"  onclick="fn_selectApproveList();" />승인 대기
									</div>
									<div id="radio2">
									<input id="tmp_tabs_1" name="tmp_tabs_1" type="radio" value="0" class="form-check-input" onclick="fn_selectApproveComList();" />승인 완료
									</div>
								</div>
                                <div class="table-responsive m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
											<tr>
												<th>승인번호</th>
												<th>결제고유번호</th>
												<th>가맹점 코드</th>
												<th>결제상태값</th>
												<th>가맹점</th>
												<th>가맹점 회원 id</th>
												<th>결제 수단</th>
												<th>상품이름</th>
												<th>상품 수량</th>
												<th>결제금액</th>
												<th>부가세</th>
												<th>취소 가능 금액</th>
												<th>취소 가능 부가세</th>
												<th>결제 준비 요청 시각</th>
												<th>카드 빈</th>
												<th>카드사</th>
												<th>할부 개월 수</th>
												<th>강의 넘버</th>
												<th>결제 승인</th>
												
											</tr>
                                        </thead>
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                    <div id ="div_list"></div>
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