<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
<title>Insert title here</title>
</head>
<body>

<!-- 상단에 이미지 삽입 -->
<div class="class_img">
	<iframe width="840" height="540" src="/Tutor/~~" frameborder="0"></iframe>	
</div>

<div class="class_d_wrap">
<!-- 튜터정보,수업소개,리뷰,실시간톡 에 대한 상단 네비 -->
	<div id="class_navi">
		<ul>
			<li><a href="#tutorinfo" id="tli">튜터</a></li>
			<li><a href="#Introduction" id="ili">수업소개</a></li>
			<li><a href="#review" id="rli">리뷰</a>
			<li><a href="#qna" id="qli">실시간톡</a>
		</ul>
	</div>
	
	<!-- <div class="class_detail" id="sumary"></div>
		<div class="class_name">
			<div class="tutor_img"><ahref=""></div>
		</div>
</div> -->

	<div class="class_detail detail_sec_bor" id="tutorinfo">
		<div class="section01" id="tutor">
			<th>튜터정보</th>
		</div>
		<div class=d_info04>
			<td>${map.L_DESCRIBE_T}</td>
		</div>
	</div>
	
	<div class="class_detail detail_sec_bor" id="Introduction">
		<div class="section01">
			<th>수업소개</th>
			<div class="d_info04">
			<td>${map.L_DESCIRBE_L}</td>
			</div>
		</div>
	</div>
	
	<div class="class_detail detail_sec_bor" id="review">
		<div class="section01">
			<th>리뷰</th>
			<div class="d_info04">
			<th>${map.LR_NO}</th>
			</div>
		</div>
	</div>

</body>

<%--
<script>
	window.fbAsyncInit = function(){
		FB.init({
			appId: '1488135204822133',
			xfbml : true,
			version: 'v2.6'
		});
	};
	
	(function (d, s, id){
		var js, fjs = d.getElementsByTagName(s)[0];	// 특정 태그를 가진 모든 요소를 선택 
		if (d.getElementById(id)) {return;}
		js = d.createElements(s); js.id = id;
		js.src = "//connect.facebook.net/ko_KR/sdk.js";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	
	$(document).mouseup(function (e){			// 마우스 이벤트 처리
		if($(e.target).attr('datasearch') != 'yes'){
			$('.weekly_best').hide();
			$('.inner_area','.weekly_best').hide();
			$('div','.weekly_best').removeClass("inner_area");
		}
	});
</script>
<body>
<div class="header_new">
	<div class="hcont">
				<div class="logo">
				<a href="https://taling.me"><img src="/Content/Images/taling_logo_85_34.png" style="margin-top:20px;"></a>
			</div>
			<div class="search">        		
				<form class="flyout-search" action="/Home/Search/" name="search">
					<div class="lcont">
						<div class="inputlmg"><img src="/Content/Images/main/search.png" onclick="search.submit();"></div>						
						<!--원써니 작업 -->
						<input type="text" name="query" id="searchcss" autocomplete="off"  placeholder="배우고 싶은 수업 또는 튜터를 검색해보세요!" onclick="weekly()" value="">	
						<div class="weekly_best" style="display:none" datasearch="yes">
							<div class="inner_area"style="display:none" datasearch="yes">
								<h3 datasearch="yes">주간 인기 검색어</h3>
								<ul class="list" datasearch="yes">
									<li datasearch="yes"><a href="/Home/Search/?query=메이크업" >메이크업</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=포토샵" >포토샵</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=영상편집" >영상편집</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=보컬" >보컬</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=댄스" >댄스</a></li>
								</ul>
							</div>
							<div style="display:none" datasearch="yes">
								<h3 datasearch="yes">주간 인기 검색어</h3>
								<ul class="list" datasearch="yes">
									<li datasearch="yes"><a href="/Home/Search/?query=코딩" >코딩</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=영어회화" >영어회화</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=마케팅" >마케팅</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=주식" >주식</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=엑셀" >엑셀</a></li>
								</ul>
							</div>
						</div>
					</div>
				</form>
			</div>

			<div class="rcont">
				<ul>
										
					<li class="padding28" data-show="popup-login">로그인&nbsp;&nbsp;</li>
					<li class="padding28" data-show="popup-join">회원 가입</li>
					<li class="padding28"><a href="/Tutor/Register/Manual">튜터 등록</a></li>
					<li class="padding28"><a href="/Support/Intro">서비스소개</a></li>					
									</ul>
			</div>
			<div class="search_back">
			</div>
		</div>
	</div>
<!-- //HEADER -->
		
<script>
fbq('track', 'ViewContent', {
content_type: 'product',
content_ids: ['8350'],
content_category: '파이썬'
});
</script>
</body>
</html> 

다 쓰레기다..
--%>