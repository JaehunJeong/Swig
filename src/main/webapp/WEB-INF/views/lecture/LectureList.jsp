<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/LectureDetail.css'/>"/>
<title>Insert title here</title>
</head>

<body>

 <div class="search_navi">
 	<div class="cate_head">
 		<ul>
						<li class="cate" onmouseover="cate(0)"><a href="#this"><div id="cate1">디자인툴</div></a></li>
			
						<li class="cate" onmouseover="cate(1)"><a href="/Home/Search/?cateMain=2"><div id="cate2">실무역량</div></a></li>
			
						<li class="cate" onmouseover="cate(2)"><a href="/Home/Search/?cateMain=3"><div id="cate3">뷰티</div></a></li>
			
						<li class="cate" onmouseover="cate(3)"><a href="/Home/Search/?cateMain=4"><div id="cate4">프로그래밍</div></a></li>
			
						<li class="cate" onmouseover="cate(4)"><a href="/Home/Search/?cateMain=5"><div id="cate5">외국어</div></a></li>			
			
						<li class="cate" onmouseover="cate(5)"><a href="/Home/Search/?cateMain=6"><div id="cate6">음악</div></a></li>
			
						<li class="cate" onmouseover="cate(6)"><a href="/Home/Search/?cateMain=7"><div id="cate7">라이프스타일</div></a></li>	
						
						<li class="cate" onmouseover="cate(7)"><a href="/Home/Search/?cateMain=7"><div id="cate8">기타</div></a></li>	
 		</ul>
 	</div>
 	
 	<div class="sub_cate_box_none">
 	
 	</div>
 
 
<div class="main3_cont">
		<div class="cate_head">
			<ul>
						<li class="cate" onmouseover="cate(1)"><a href="/Home/Search/?cateMain=1"><div id="cate2">디자인툴</div></a></li>
			
						<li class="cate" onmouseover="cate(2)"><a href="/Home/Search/?cateMain=2"><div id="cate3">실무역량</div></a></li>
			
						<li class="cate" onmouseover="cate(3)"><a href="/Home/Search/?cateMain=3"><div id="cate4">뷰티</div></a></li>
			
						<li class="cate" onmouseover="cate(4)"><a href="/Home/Search/?cateMain=4"><div id="cate5"><font color="#000"><b>프로그래밍</b></font></div></a></li>
			
						<li class="cate" onmouseover="cate(5)"><a href="/Home/Search/?cateMain=5"><div id="cate6">외국어</div></a></li>			
			
						<li class="cate" onmouseover="cate(6)"><a href="/Home/Search/?cateMain=6"><div id="cate7">음악</div></a></li>
			
						<li class="cate" onmouseover="cate(7)"><a href="/Home/Search/?cateMain=7"><div id="cate8">라이프스타일</div></a></li>			
			
						<li class="cate" onmouseover="cate(8)" style="font-weight:bold;cursor:pointer;pading-left:10px;font-size:16px; ">
			<a href="/Home/Search/?cateMain=8,10,11,13,14,15,16"><div id="cate9">기타</div></a></li>			
			</ul>
		</div>
		
		
		<div class="sub_cate_box_none">
			<ul>
				<li><a href="?cateSub=201" class="subcate_list_listpage"><span>포토샵</span></a></li><li><a href="?cateSub=194" class="subcate_list_listpage"><span>프리미어</span></a></li><li><a href="?cateSub=202" class="subcate_list_listpage"><span>일러스트레이터</span></a></li><li><a href="?cateSub=193" class="subcate_list_listpage"><span>에프터이펙트</span></a></li><li><a href="?cateSub=3" class="subcate_list_listpage"><span>건축</span></a></li><li><a href="?cateSub=197" class="subcate_list_listpage"><span>영상(기타)</span></a></li><li><a href="?cateSub=209" class="subcate_list_listpage"><span>제품디자인</span></a></li><li><a href="?cateSub=199" class="subcate_list_listpage"><span>영상기획/촬영</span></a></li><li><a href="?cateSub=195" class="subcate_list_listpage"><span>파이널컷</span></a></li><li><a href="?cateSub=206" class="subcate_list_listpage"><span>UX/UI디자인</span></a></li><li><a href="?cateSub=204" class="subcate_list_listpage"><span>인디자인</span></a></li><li><a href="?cateSub=196" class="subcate_list_listpage"><span>시포디</span></a></li><li><a href="?cateSub=198" class="subcate_list_listpage"><span>VJ</span></a></li>			</ul>
		</div>
				<div class="sub_cate_box_none">
			<ul>
				<li><a href="?cateSub=11" class="subcate_list_listpage"><span>DataScience</span></a></li><li><a href="?cateSub=188" class="subcate_list_listpage"><span>디지털마케팅</span></a></li><li><a href="?cateSub=14" class="subcate_list_listpage"><span>커뮤니케이션 스킬</span></a></li><li><a href="?cateSub=13" class="subcate_list_listpage"><span>엑셀</span></a></li><li><a href="?cateSub=15" class="subcate_list_listpage"><span>창업</span></a></li><li><a href="?cateSub=12" class="subcate_list_listpage"><span>파워포인트</span></a></li><li><a href="?cateSub=191" class="subcate_list_listpage"><span>브랜딩</span></a></li><li><a href="?cateSub=26" class="subcate_list_listpage"><span>기획서</span></a></li><li><a href="?cateSub=22" class="subcate_list_listpage"><span>재무회계</span></a></li>			</ul>
		</div>
				<div class="sub_cate_box_none">
			<ul>
				<li><a href="?cateSub=28" class="subcate_list_listpage"><span>메이크업</span></a></li><li><a href="?cateSub=33" class="subcate_list_listpage"><span>헤어</span></a></li><li><a href="?cateSub=31" class="subcate_list_listpage"><span>패션</span></a></li><li><a href="?cateSub=32" class="subcate_list_listpage"><span>퍼스널컬러</span></a></li><li><a href="?cateSub=30" class="subcate_list_listpage"><span>네일</span></a></li><li><a href="?cateSub=218" class="subcate_list_listpage"><span>스킨케어/마사지</span></a></li>			</ul>
		</div>
				<div class="sub_cate_box_none">
			<ul>
				<li><a href="?cateSub=34" class="subcate_list_listpage"><span>WEB개발</span></a></li><li><a href="?cateSub=54" class="subcate_list_listpage"><span>파이썬</span></a></li><li><a href="?cateSub=35" class="subcate_list_listpage"><span>APP개발</span></a></li><li><a href="?cateSub=40" class="subcate_list_listpage"><span>알고리즘</span></a></li><li><a href="?cateSub=52" class="subcate_list_listpage"><span>워드프레스</span></a></li><li><a href="?cateSub=38" class="subcate_list_listpage"><span>아두이노</span></a></li><li><a href="?cateSub=36" class="subcate_list_listpage"><span>게임제작</span></a></li><li><a href="?cateSub=39" class="subcate_list_listpage"><span>Database</span></a></li><li><a href="?cateSub=37" class="subcate_list_listpage"><span>해킹</span></a></li>			</ul>
		</div>
				<div class="sub_cate_box_none">
			<ul>
				<li><a href="?cateSub=41" class="subcate_list_listpage"><span>영어회화</span></a></li><li><a href="?cateSub=42" class="subcate_list_listpage"><span>중국어</span></a></li><li><a href="?cateSub=43" class="subcate_list_listpage"><span>일본어</span></a></li><li><a href="?cateSub=44" class="subcate_list_listpage"><span>토익/토플</span></a></li><li><a href="?cateSub=51" class="subcate_list_listpage"><span>외국어(기타)</span></a></li><li><a href="?cateSub=47" class="subcate_list_listpage"><span>스페인어</span></a></li><li><a href="?cateSub=46" class="subcate_list_listpage"><span>독일어</span></a></li><li><a href="?cateSub=48" class="subcate_list_listpage"><span>프랑스어</span></a></li><li><a href="?cateSub=49" class="subcate_list_listpage"><span>영작문</span></a></li><li><a href="?cateSub=50" class="subcate_list_listpage"><span>러시아어</span></a></li><li><a href="?cateSub=45" class="subcate_list_listpage"><span>오픽/토스</span></a></li>			</ul>
		</div>
				<div class="sub_cate_box_none">
			<ul>
				<li><a href="?cateSub=60" class="subcate_list_listpage"><span>보컬</span></a></li><li><a href="?cateSub=61" class="subcate_list_listpage"><span>미디작곡</span></a></li><li><a href="?cateSub=59" class="subcate_list_listpage"><span>피아노</span></a></li><li><a href="?cateSub=62" class="subcate_list_listpage"><span>기타연주</span></a></li><li><a href="?cateSub=69" class="subcate_list_listpage"><span>드럼</span></a></li><li><a href="?cateSub=66" class="subcate_list_listpage"><span>무용</span></a></li><li><a href="?cateSub=63" class="subcate_list_listpage"><span>국악</span></a></li><li><a href="?cateSub=65" class="subcate_list_listpage"><span>랩</span></a></li><li><a href="?cateSub=64" class="subcate_list_listpage"><span>디제잉</span></a></li><li><a href="?cateSub=74" class="subcate_list_listpage"><span>오케스트라</span></a></li><li><a href="?cateSub=70" class="subcate_list_listpage"><span>바이올린</span></a></li><li><a href="?cateSub=75" class="subcate_list_listpage"><span>성악</span></a></li><li><a href="?cateSub=68" class="subcate_list_listpage"><span>첼로</span></a></li><li><a href="?cateSub=67" class="subcate_list_listpage"><span>우쿨렐레</span></a></li>			</ul>
		</div>
				<div class="sub_cate_box_none">
			<ul>
				<li><a href="?cateSub=81" class="subcate_list_listpage"><span>핸드메이드</span></a></li><li><a href="?cateSub=79" class="subcate_list_listpage"><span>사진</span></a></li><li><a href="?cateSub=123" class="subcate_list_listpage"><span>연기</span></a></li><li><a href="?cateSub=125" class="subcate_list_listpage"><span>플라워</span></a></li><li><a href="?cateSub=84" class="subcate_list_listpage"><span>요리</span></a></li><li><a href="?cateSub=127" class="subcate_list_listpage"><span>사주·타로</span></a></li><li><a href="?cateSub=82" class="subcate_list_listpage"><span>여행</span></a></li><li><a href="?cateSub=83" class="subcate_list_listpage"><span>커피/다도</span></a></li><li><a href="?cateSub=124" class="subcate_list_listpage"><span>마술</span></a></li><li><a href="?cateSub=86" class="subcate_list_listpage"><span>술</span></a></li><li><a href="?cateSub=88" class="subcate_list_listpage"><span>반려동물</span></a></li><li><a href="?cateSub=126" class="subcate_list_listpage"><span>드론</span></a></li><li><a href="?cateSub=212" class="subcate_list_listpage"><span>바둑</span></a></li>			</ul>
		</div>
				
		<div class="sub_cate_box_none">
			<ul>
				<li><a href="?cateSub=97" class="subcate_list_listpage"><span>입시논술</span></a></li><li><a href="?cateSub=210" class="subcate_list_listpage"><span>수능수학</span></a></li><li><a href="?cateSub=99" class="subcate_list_listpage"><span>수능영어</span></a></li><li><a href="?cateSub=78" class="subcate_list_listpage"><span>댄스</span></a></li><li><a href="?cateSub=113" class="subcate_list_listpage"><span>익스트림</span></a></li><li><a href="?cateSub=108" class="subcate_list_listpage"><span>축구</span></a></li><li><a href="?cateSub=216" class="subcate_list_listpage"><span>게임</span></a></li><li><a href="?cateSub=110" class="subcate_list_listpage"><span>수영</span></a></li><li><a href="?cateSub=186" class="subcate_list_listpage"><span>무술</span></a></li><li><a href="?cateSub=107" class="subcate_list_listpage"><span>스케이트</span></a></li><li><a href="?cateSub=109" class="subcate_list_listpage"><span>골프</span></a></li><li><a href="?cateSub=111" class="subcate_list_listpage"><span>농구</span></a></li><li><a href="?cateSub=215" class="subcate_list_listpage"><span>볼링</span></a></li><li><a href="?cateSub=114" class="subcate_list_listpage"><span>스쿼시</span></a></li><li><a href="?cateSub=217" class="subcate_list_listpage"><span>모임</span></a></li><li><a href="?cateSub=116" class="subcate_list_listpage"><span>주식투자</span></a></li><li><a href="?cateSub=213" class="subcate_list_listpage"><span>기타</span></a></li><li><a href="?cateSub=214" class="subcate_list_listpage"><span>투잡</span></a></li><li><a href="?cateSub=117" class="subcate_list_listpage"><span>가상화폐</span></a></li><li><a href="?cateSub=182" class="subcate_list_listpage"><span>공인자격증</span></a></li><li><a href="?cateSub=122" class="subcate_list_listpage"><span>기사</span></a></li><li><a href="?cateSub=17" class="subcate_list_listpage"><span>커리어</span></a></li><li><a href="?cateSub=90" class="subcate_list_listpage"><span>자기관리</span></a></li><li><a href="?cateSub=103" class="subcate_list_listpage"><span>심리상담</span></a></li><li><a href="?cateSub=80" class="subcate_list_listpage"><span>교양</span></a></li><li><a href="?cateSub=219" class="subcate_list_listpage"><span>전공강의</span></a></li><li><a href="?cateSub=178" class="subcate_list_listpage"><span>공부법</span></a></li><li><a href="?cateSub=23" class="subcate_list_listpage"><span>공모전</span></a></li><li><a href="?cateSub=77" class="subcate_list_listpage"><span>미술</span></a></li><li><a href="?cateSub=76" class="subcate_list_listpage"><span>캘리그래피</span></a></li><li><a href="?cateSub=27" class="subcate_list_listpage"><span>헬스</span></a></li><li><a href="?cateSub=29" class="subcate_list_listpage"><span>요가</span></a></li>			</ul>
		</div>
		<div class="region_box">
			<div class="box1">
				<div class="info">
					<div class="text1">
						어디에서<img src="/Content/Images/location.png"><br>배우고 싶으세요?<br>
					</div>
					<div class="text2">
						지역을 선택해주세요
					</div>
				</div>
				<!-- <div class="boxs" id="regionLayer">			
					
					<div class="box" data-region="1" ><span>강남</span><span>(79)</span></div><div class="box" data-region="4" ><span>신촌홍대</span><span>(41)</span></div><div class="box" data-region="11" ><span>신림</span><span>(15)</span></div><div class="box" data-region="5" ><span>종로</span><span>(14)</span></div><div class="box" data-region="7" ><span>성북</span><span>(12)</span></div><div class="box" data-region="14" ><span>건대</span><span>(11)</span></div><div class="box" data-region="22" ><span>구로</span><span>(9)</span></div><div class="box" data-region="26" ><span>분당</span><span>(8)</span></div><div class="box" data-region="17" ><span>노원</span><span>(6)</span></div><div class="box" data-region="6" ><span>영등포</span><span>(6)</span></div><div class="box" data-region="64" ><span>온라인</span><span>(6)</span></div><div class="box" data-region="9" ><span>잠실</span><span>(5)</span></div><div class="box" data-region="30" ><span>수원</span><span>(5)</span></div><div class="box" data-region="2" ><span>사당</span><span>(4)</span></div><div class="box" data-region="48" ><span>대구중앙</span><span>(4)</span></div><div class="box" data-region="21" ><span>목동</span><span>(3)</span></div><div class="box" data-region="10" ><span>왕십리</span><span>(3)</span></div><div class="box" data-region="19" ><span>마포</span><span>(3)</span></div><div class="box" data-region="8" ><span>혜화</span><span>(3)</span></div><div class="box" data-region="12" ><span>동작</span><span>(2)</span></div><div class="box" data-region="28" ><span>일산</span><span>(2)</span></div><div class="box" data-region="32" ><span>구월동</span><span>(2)</span></div><div class="box" data-region="13" ><span>회기</span><span>(1)</span></div><div class="box" data-region="29" ><span>의정부</span><span>(1)</span></div><div class="box" data-region="33" ><span>부평</span><span>(1)</span></div><div class="box" data-region="37" ><span>부산부경대</span><span>(1)</span></div><div class="box" data-region="46" ><span>창원</span><span>(1)</span></div><div class="box" data-region="52" ><span>유성구</span><span>(1)</span></div><div class="box" data-region="15" ><span>용산</span><span>(1)</span></div><div class="box" data-region="23" ><span>청량리</span><span>(1)</span></div><div class="box" data-region="31" ><span>송도</span><span>(1)</span></div><div class="box" data-region="35" ><span>부산대</span><span>(1)</span></div><div class="box" data-region="55" ><span>대전역</span><span>(1)</span></div><div class="box" data-region="24" ><span>은평</span><span>(1)</span></div><div class="box" data-region="36" ><span>부산서면</span><span>(1)</span></div>					
					
				</div> -->
			</div>
			<div class="box2">
				<div class="result">
					<span>선택지역 결과 보기</span>
				</div>
			</div>
		</div>
	</div>
</div> 

<div class="list">
	<table>
	<c:choose>
		<c:when test="${fn:length(list) > 0}">
			<c:forEach items="${list}" var="row">
				<thead>
				</thead>
				<tbody>
				</tbody>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<tr>
				<td>개설된 강의가 없습니다.</td>
			</tr>
		</c:otherwise>
	</c:choose>
	
	</table>	
	
	<div id="PAGE_NAVI"></div>
	<input type="hidden" id="PAGE_INDEX" name="PAGE_INDEX"/>
<ul>
</ul>

</div>

<%@ include file="/WEB-INF/include/include-body.jspf" %>
<script type="text/javascript">
$(document).ready(function(){
	window.onload=function(){fn_selectLectureList(1);};
	
	
});

function fn_openLectureDetail(obj){
	var comSubmit = new ComSubmit();
	 comSubmit.setUrl("<c:url value='/LectureDetail' />");
     comSubmit.addParam("L_NO", obj.parent().find("#L_NO").val());
     comSubmit.submit();
}

function fn_selectLectureList(pageNo){
	 var comAjax = new ComAjax();
     comAjax.setUrl("<c:url value='/selectLectureList' />");
     comAjax.setCallback("fn_selectLectureListCallback");
     comAjax.addParam("PAGE_INDEX",pageNo);
     comAjax.addParam("PAGE_ROW", 15);
     comAjax.ajax();
}

function fn_selectLectureListCallback(data){
	var ca_idx = ${map.ca_idx};
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
    	if(ca_idx == ''){
        var params = {
            divId : "PAGE_NAVI",
            pageIndex : "PAGE_INDEX",
            totalCount : total,
            eventName : "fn_selectLectureList"
        };
        gfn_renderPaging(params);
         
        var str = "";
        $.each(data.list, function(key, value){
            str += "<tr>" +
                        "<td class='subject'>" +
                            "<a href='#this' name='name'>" + value.L_SUBJECT + "</a>" +
                            "<input type='hidden' id='L_NO' value=" + value.L_NO + ">" +
                        "</td>" +
                    "</tr>";
        });
        body.append(str);
         
        $("a[name='name']").on("click", function(e){ //제목
            e.preventDefault();
            fn_openLectureDetail($(this));
        });
    } else{
    	var params = {
                divId : "PAGE_NAVI",
                pageIndex : "PAGE_INDEX",
                totalCount : total,
                eventName : "fn_selectLectureList"
            };
            gfn_renderPaging(params);
             
            var str = "";
            $.each(data.list1, function(key, value){
                str += "<tr>" +
                            "<td class='subject'>" +
                                "<a href='#this' name='name'>" + value.L_SUBJECT + "</a>" +
                                "<input type='hidden' id='L_NO' value=" + value.L_NO + ">" +
                            "</td>" +
                        "</tr>";
            });
            body.append(str);
             
            $("a[name='name']").on("click", function(e){ //제목
                e.preventDefault();
                fn_openLectureDetail($(this));
            });
    }
    }
}

</script>
</body>
</html>
