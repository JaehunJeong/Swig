<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body style="">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MTJJTC6"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div id="wrap">
<!--HEADER -->
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
						<input type="text" name="query" id="searchcss" autocomplete="off" placeholder="배우고 싶은 수업 또는 튜터를 검색해보세요!" onclick="weekly()" value="">	
						<div class="weekly_best" style="display:none" datasearch="yes">
							<div class="inner_area" style="display:none" datasearch="yes">
								<h3 datasearch="yes">주간 인기 검색어</h3>
								<ul class="list" datasearch="yes">
									<li datasearch="yes"><a href="/Home/Search/?query=메이크업">메이크업</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=포토샵">포토샵</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=영상편집">영상편집</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=보컬">보컬</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=댄스">댄스</a></li>
								</ul>
							</div>
							<div style="display:none" datasearch="yes">
								<h3 datasearch="yes">주간 인기 검색어</h3>
								<ul class="list" datasearch="yes">
									<li datasearch="yes"><a href="/Home/Search/?query=코딩">코딩</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=영어회화">영어회화</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=마케팅">마케팅</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=주식">주식</a></li>
									<li datasearch="yes"><a href="/Home/Search/?query=엑셀">엑셀</a></li>
								</ul>
							</div>
						</div>
					</div>
				</form>
			</div>

			<div class="rcont">
				<ul>
					
											
						
							
													<a href="/My/Talent">
							<li class="padding10">		
								<div class="proimg" style="background-image: url('//taling.me/Content/Images/placeholders/profile-default.thumb.jpg');"></div>
							</li>
							</a>
																
															<li class="padding28" onclick="qPop(0)">실시간 톡</li>
						


						
						<li class="padding28"><a href="/My/Application">수업신청서</a></li>
											<li class="padding28"><a href="/Tutor/Register/Manual">튜터 등록</a></li>					
									</ul>
			</div>
			<div class="search_back">
			</div>
		</div>
	</div>
<!-- //HEADER -->

	</div>
	<div class="submy">
		<div class="area">
			<div class="sec01">
				<div class="box">
					<div class="left" style="background-image: url('//taling.me/Content/Images/placeholders/profile-default.thumb.jpg')"></div>
					<div class="right">
						<div class="right01">이희범 님</div>
						<div class="right02">gmlqja2</div>						
						<div class="right03"><a href="/My/Profile"><span>정보 수정</span></a>&nbsp;<a href="/Tutor/Register/Info"><span>튜터 정보 수정</span></a></div>
						<div class="right03"><a href="javascript:void(0)" id="btn-menu-logout"><span>로그아웃</span></a></div>
						
					</div>
				</div>
			</div>
			<div class="sec02">
				<div class="box">
					<div class="box1">
						<a href="/My/TaAp" style="color:#999;">
						<img src="/Content/Images/my/icon_my_menu01.png">
						<div class="middle">받은수업신청서</div>
						<div class="bottom">0건</div>
						</a>
					</div>
					<div class="box2">
						<a href="/My/Application" style="color:#999;">
						<img src="/Content/Images/my/icon_my_menu02.png">
						<div class="middle">신청한수업</div>
						<div class="bottom">0건</div>
						</a>
					</div>
					<div class="box3">
						<a href="/My/Wish" style="color:#999;">
						<img src="/Content/Images/my/icon_my_menu03.png">
						<div class="middle">위시리스트</div>
						<div class="bottom">1건</div>
						</a>
					</div>
				</div>
			</div>
			<div class="sec03">
				<div class="box">
					<div class="left">
						<div class="smsize">등록 된 전화번호</div>
						<div class="middle smsize">등록 된 이메일</div>
						<div class="middle smsize">학교 정보</div>
						<div class="middle smsize">계정 정보</div>
					</div>
					<div class="right">
						<div class="lgsize">01071797259 <a href="/My/Profile"><span>번호 수정</span></a></div>
						<div class="middle lgsize">lheeb2@naver.com</div>
						<div class="middle lgsize">
						
												
						인증 안 됨 <!--span onclick="verifySchool();">인증하기</span-->
												</div>
						<div class="middle lgsize">
												이메일 로그인 사용중 <a href="/Account/ResetPassword"><span>비밀번호변경</span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	function registerSchool() {
		var registerPopup = window.open('/My/RegisterSchool', 'registerWindow', 'height=250,width=350,scrollbars=no,status=no,resizable=0');

		return false;
	}

	function verifySchool() {
		var frm = document.createElement('form');

	   var verifyPopup = window.open('/My/Verify', 'verifyWindow', 'height=250,width=350,scrollbars=no,status=no,resizable=0');

		return false;
	}


	var popupWindow = null;
	window.codeCallback = function (confirmId) {
		popupWindow.close();
		location.reload();
	}

	var nickname;
	function changeNickname() {
		var container = $('#nickname');
		if (!container.hasClass('changing')) {
			nickname = container.text();
			container.addClass('changing');
			container.html('<input type="text" id="input-nickname" class="form-control" placeholder="새 닉네임" />');
		} else {
			var val = $('#input-nickname').val();
			if (/^[가-힣a-zA-Z0-9\s]+$/.test(val)) {
				container.removeClass('changing');
				container.html(val);

				$.post('/My/ChangeNickname', { nickname: val })
					.success(function (res) {							
						if (res=='0000') {
							nickname = val;
							alert('성공적으로 변경되었습니다');
						} else {
							container.html(nickname);
							alert(res);
						}
					})
					.fail(function (res) {
						container.html(nickname);
						alert(res.message);
					});
			} else if (val.length === 0) {
				container.removeClass('changing');
				container.html(nickname);
			} else {
				alert('닉네임은 한글, 영어, 숫자, 공백만 사용할 수 있습니다');
			}
		}

		return false;
	}

	$('#btn-register-phone').click(function () {
		var phone = $('#Phone').val();
		popupWindow = window.open('/Tutor/Register/Phone?phone='+phone, '_blank', 'height=250,width=350,scrollbars=no,status=no,resizable=0');
	});
</script>
<!-- CONTAINER -->
<div id="container_my">	
	<br><br><br>
	<div class="box">
		<div class="cont01">		
			<div class="box">	
				<a href="/My/Application"><div class="tab font">수강생 (0)</div></a>
				<a href="/My/Talent"><div class="tabon font">튜터 (0)</div></a>
			</div>
		</div>
		<div style="display:none;">
			<div class="cont02">		
				<h1>튜터 등록하기</h1>
				<p>
					아직 탈잉 튜터가 아니시군요?
					<br>
					탈잉에선 누가나 튜터가 될 수 있습니다.
					<br>
					혼자만 간직했던 자신만의 재능은
					<br>
					사실 겁나게 멋진 겁니다.
				</p>
			</div>
			<div class="cont03">
								<span class="more" onclick="javascript:location.href='/Tutor/Register/Menu';">멋진 재능으로 튜터 등록하기</span>
							</div>
		</div>
		<div>
			<div class="cont04">
				<div class="topmenu">
					<ul>						
						<li class="on"><a href="/My/Talent">내수업</a></li>						
						<li><a href="/My/TaAp">수업신청서<span>(0)</span></a></li>
					</ul>
				</div>				
			</div>
						<!--div class="cont05" style="padding:0" >
				<img src="/Content/Images/sub/bannr_mypage_1tal.png" width="100%;"/>			
			</div-->
						
			<div class="cont05">
				<div>
					<ul>
												<li>
							<a href="/Talent/Detail/8931"><div class="left" style="background-image: url(//taling.me/Content/Uploads/Cover/s_c73cbfc796c65455a8c77137ec02410d819cb871.jpg);"></div></a>
							<div class="right">
								<div class="box">
									<div class="box1"><img src="/Content/Images/my/bu_area.jpg" style="vertical-align:top;">									
																			<!--a href="/Tutor/Register/One" target="_blank">
											<div style="margin-left:10px;float:right;display: inline-block;text-align: center;padding:3px 7px;color:#fff;border:1px solid #ff005b;background:#ff005b;">?</div>
										</a-->
										<div style="float:right;display: inline-block;text-align: center;padding:3px 0px;color:#ff005b;border:1px solid #ff005b;background:#fff;"> &nbsp;&nbsp;
											수업 승인 대기 중
										&nbsp;&nbsp;</div>										
																		</div>

									<div class="box2"><a href="/Talent/Detail/8931">테스트1</a></div>
									<div class="box3">1:1 수업 |  
																																	수업 승인 대기중
																														</div>
									<div class="box4">￦10,000원</div>
									<div class="box5">
										<div class="boxleft"><img src="/Content/Images/my/icon_cl_stud.png" style="vertical-align:top;" width="16px;">수강인원 <span>0</span>명 &nbsp;<img src="/Content/Images/my/icon_cl_like.png" style="vertical-align:top;" width="16px;">위시인원 <span>0</span>명</div>
										<div class="boxright">
											<span style="display:inline-block; text-align:center; padding:7px 0;">
											<a href="/My/BlogList/8931"><img src="/Content/Images/my/bu_modify.jpg" style="width:15px;vertical-align:top;">블로그작성</a></span>
											<span style="display:inline-block; text-align:center; padding:7px 0;">
											<a href="/Tutor/Register/TitleInfo/8931"><img src="/Content/Images/my/bu_modify.jpg" style="width:15px;vertical-align:top;">수업수정</a>
											</span>											
																						<span style="display:inline-block; text-align:center; padding:7px 0;">
												<a onclick="changeSold(8931,0);">
												<img src="/Content/Images/m/icon_selling_off.png" style="width:15px;vertical-align:top;">Selling</a>
											</span>
											<span style="display:inline-block; text-align:center; padding:7px 0;border:1px solid #ff005a;color:#ff005a;">
												<a onclick="changeSold(8931,1);">
												<img src="/Content/Images/m/icon_soldout_on.png" style="width:15px;vertical-align:top;">Soldout</a>
											</span>
											
											
											</div>
									</div>
								</div>
							</div>
						</li>
											</ul>
				</div>
			</div>
			<!--div class="cont06">		
				<ul>
					<li><a class="on">1</a></li><li><a>2</a></li>
				</ul>
			</div-->
		</div>
	</div>
	<br><br><br>
</div>

<!-- //CONTAINER -->
<div class="footer">
	<div class="footer_cont">
		<div class="info_box">
			<div class="info">
				<b>COMPANY</b>
				<ul>
					<li><a href="/Support/Intro">서비스 소개</a></li>
					<li><a href="/Blog/list.php">튜터 컨텐츠</a></li>
					<li><a href="http://blog.naver.com/taling_me" target="_blank">블로그</a></li>
					<li><a href="http://news.joins.com/article/20030058" target="_blank">언론보도</a></li>
				</ul>
			</div>
			<div class="info">
				<b>POLICIES</b>
				<ul>
					<li><a href="/Support/Rule">이용약관</a></li>
					<!--li><a href="/Support/PayRule">결제서비스약관</a></li-->
					<li><a href="/Support/Privacy">개인정보취급방침</a></li>
				</ul>
			</div>
			<div class="info">
				<b>SUPPORT</b>
				<ul>
					<li><a href="/Support/FAQ">FAQ</a></li>
					<li><a href="/Support/Center/">탈잉센터</a></li>
				</ul>
			</div>
		</div>
		<div class="info_box2">
			<div class="info">
				<b>TALING CENTER</b>
				<ul>
					<li><img src="/Content/Images/kakaoPlus.jpg" width="13px">&nbsp;KAKAO 플러스친구 / @탈잉센터</li>
					<li>운영시간 / 평일 10:00~18:00</li>
					<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/ 점심 13:00~14:00</li>
				</ul>
			</div>
		</div>
		<div style="overflow:hidden;padding-top:79px">
			<div class="bt_info">
				상호 : (주)탈잉 | 주소 : 서울특별시 강남구 역삼로 180, 2층(마루180) | 사업자등록번호 : 767-88-00630 | 대표자명 : 김윤환<br>
				Copyright ⓒ2018 taling inc, ltd. All rights reserved
			</div>
			<div class="logo_box">
				<a href="https://www.facebook.com/taling.me" target="_blank"><img src="/Content/Images/footer/ic_sns_facebook_38_38.png"></a>
				<a href="https://www.instagram.com/taling_app/" target="_blank"><img src="/Content/Images/footer/ic_sns_instagram_38_38.png"></a>
				<a href="https://www.youtube.com/channel/UCuFmmpVLaNNFoy-cHqELl_A" target="_blank"><img src="/Content/Images/footer/ic_sns_youtube_38_38.png"></a>
				<a href="https://post.naver.com/taling_me" target="_blank"><img src="/Content/Images/footer/ic_sns_naver_38_38.png"></a>
			</div>
			
		</div>
	</div>
</div>
 
       
<div id="popup-login" class="popup popup-login" data-hide="popup-login">
	<div class="popup-content">
		<h1>탈잉에 오신 것을 환영해요!</h1>
		<p>
			<strong>탈잉</strong>은 서로 간 재능을 연결해<br>
			모두의 경쟁력을 높이는 플랫폼 서비스입니다.
		</p>
		<button id="btn-popup-login-facebook" type="button" class="btn btn-facebook">
			<img src="/Content/Images/btn-login-facebook.png">
		</button>
		<div>- 또는 -</div>
		<form action="#" method="post" id="frm-login">
			<input type="text" id="email" name="email" value="" class="form-control" placeholder="Email">
			<input type="password" id="password" name="password" value="" class="form-control" placeholder="Password">			
			<div class="chk-keep-login-container">
				<input type="checkbox" name="keepLogin" id="chk-keep-login"> <label for="chk-keep-login">로그인 유지</label>
			</div>
			<input type="submit" value="이메일 아이디로 로그인" class="btn btn-submit">
		</form>
		<a href="/Account/FindPassword" class="btn-find-password">비밀번호를 잊으셨다면</a>
		<hr>
		<div class="box-promote">
			탈잉 회원이 아니세요? <a href="#" data-hide="popup-login" data-show="popup-join">당장 가입</a>
		</div>
	</div>
</div>
<div id="popup-join" class="popup popup-join" data-hide="popup-join">
	<div class="popup-content">
		<h1>탈잉 회원가입</h1>
		<p>
			회원으로 가입하시면<br>
			<strong>탈잉</strong>의 모든 서비스를 이용하실 수 있습니다
		</p>
		<button id="btn-popup-join-facebook" type="button" class="btn btn-facebook">
			<img src="/Content/Images/btn-join-facebook.png">
		</button>
		<div style="line-height: 1">- 또는 -</div>
		<form action="#" method="post" id="frm-join">
			<input type="text" name="name" value="" class="form-control" placeholder="Name">
			<input type="text" name="email" value="" class="form-control" placeholder="Email">
			<input type="password" name="password" value="" class="form-control" placeholder="Password">
			<input type="password" name="confirm" value="" class="form-control" placeholder="Confirm Password">
			<div class="box-accept-terms">
				<input id="chk-accept-terms" type="checkbox" name="accept" value="" class="checkbox-inline">
				<label for="chk-accept-terms">
					<a href="/Support/Rule" target="_blank">탈잉이용약관</a> 및
					<a href="/Support/Rule" target="_blank">개인정보취급방침</a>에 동의합니다
				</label>
			</div>
			<input type="submit" value="이메일 아이디로 가입" class="btn btn-submit">
			
		</form>
		<hr>
		<div class="box-promote">
			이미 탈잉 회원이세요? <a href="#" data-hide="popup-join" data-show="popup-login">로그인</a>
		</div>
	</div>
</div>

<div id="popup-prof" class="popup popup-join" data-hide="popup-prof">
	<div class="popup-content">
		<h1>탈잉 수업 추천</h1>
		<div>
			이희범님께 맞는 수업 추천을 위해<br>
			아래 정보를 알려주세요
		</div>		
		<form action="#" method="post" id="frm-prof">
		<input type="hidden" id="man" name="man" value="1">
		<input type="hidden" id="level" name="level" value="1">
			
			<div class="subtit2">나이</div>
			<div style="margin:0 auto;text-align:left;">
				<select id="year" name="year">
					<option>출생년도</option>
										<option value="1960">1960</option>
										<option value="1961">1961</option>
										<option value="1962">1962</option>
										<option value="1963">1963</option>
										<option value="1964">1964</option>
										<option value="1965">1965</option>
										<option value="1966">1966</option>
										<option value="1967">1967</option>
										<option value="1968">1968</option>
										<option value="1969">1969</option>
										<option value="1970">1970</option>
										<option value="1971">1971</option>
										<option value="1972">1972</option>
										<option value="1973">1973</option>
										<option value="1974">1974</option>
										<option value="1975">1975</option>
										<option value="1976">1976</option>
										<option value="1977">1977</option>
										<option value="1978">1978</option>
										<option value="1979">1979</option>
										<option value="1980">1980</option>
										<option value="1981">1981</option>
										<option value="1982">1982</option>
										<option value="1983">1983</option>
										<option value="1984">1984</option>
										<option value="1985">1985</option>
										<option value="1986">1986</option>
										<option value="1987">1987</option>
										<option value="1988">1988</option>
										<option value="1989">1989</option>
										<option value="1990">1990</option>
										<option value="1991">1991</option>
										<option value="1992">1992</option>
										<option value="1993">1993</option>
										<option value="1994">1994</option>
										<option value="1995">1995</option>
										<option value="1996">1996</option>
										<option value="1997">1997</option>
										<option value="1998">1998</option>
										<option value="1999">1999</option>
										<option value="2000">2000</option>
										<option value="2001">2001</option>
										<option value="2002">2002</option>
										<option value="2003">2003</option>
										<option value="2004">2004</option>
										<option value="2005">2005</option>
										<option value="2006">2006</option>
										<option value="2007">2007</option>
										<option value="2008">2008</option>
										<option value="2009">2009</option>
										<option value="2010">2010</option>
										<option value="2011">2011</option>
										<option value="2012">2012</option>
										<option value="2013">2013</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
									</select>
			</div>
			
			<div class="subtit">성별</div>
			<div class="subbox" id="box1">
				<div class="levelbox on" id="man1" onclick="boxclick(1);">
					<img src="/Content/Images/icon_man_on.png" width="20px"> 남자
				</div>
				<div class="levelbox" id="man2" onclick="boxclick(2);">
					<img src="/Content/Images/icon_woman_off.png" width="20px"> 여자
				</div>
			</div>
			<div class="subtit">직업</div>
			<div id="box2">
				<div class="subbox">
					<div class="levelbox on" id="level1" onclick="boxclick2(1);">
						<img src="/Content/Images/icon_unv_on.png" width="20px">대학생
					</div>
					<div class="levelbox" id="level2" onclick="boxclick2(2);">
						<img src="/Content/Images/icon_worker_off.png" width="20px">직장인
					</div>				
				</div>
				<div style="margin:0 auto;overflow:hidden;">
					<div class="levelbox" id="level3" onclick="boxclick2(3);">
						<img src="/Content/Images/icon_youths_off.png" width="20px">취업준비생
					</div>
					<div class="levelbox" id="level4" onclick="boxclick2(4);">
						<img src="/Content/Images/icon_homemaker_off.png" width="20px">기타
					</div>				
				</div>
			</div>
			<div style="margin:0 auto;overflow:hidden;padding-top:30px;">
			<input type="submit" value="등록하기" class="btn btn-submit">
			</div>
		</form>

		<script>
			function boxclick(val)
			{
				var area = $('#box1');
				area.find('div').removeClass('on');
				
				$('#man1').find('img').attr('src', '/Content/Images/icon_man_off.png');
				$('#man2').find('img').attr('src', '/Content/Images/icon_woman_off.png');				

				$('#man'+val).addClass('on');
				if(val==1)
				{
					$('#man'+val).find('img').attr('src', '/Content/Images/icon_man_on.png');
				}
				else
				{
					$('#man'+val).find('img').attr('src', '/Content/Images/icon_woman_on.png');
				}
				$('#man').val(val);
			}

			function boxclick2(val)
			{
				var area = $('#box2');
				area.find('div').removeClass('on');
				
				$('#level1').find('img').attr('src', '/Content/Images/icon_unv_off.png');
				$('#level2').find('img').attr('src', '/Content/Images/icon_worker_off.png');
				$('#level3').find('img').attr('src', '/Content/Images/icon_youths_off.png');
				$('#level4').find('img').attr('src', '/Content/Images/icon_homemaker_off.png');


				$('#level'+val).addClass('on');
				if(val==1)
				{
					$('#level'+val).find('img').attr('src', '/Content/Images/icon_unv_on.png');
				}
				else if(val==2)
				{
					$('#level'+val).find('img').attr('src', '/Content/Images/icon_worker_on.png');
				}
				else if(val==3)
				{
					$('#level'+val).find('img').attr('src', '/Content/Images/icon_youths_on.png');
				}
				else if(val==4)
				{
					$('#level'+val).find('img').attr('src', '/Content/Images/icon_homemaker_on.png');
				}
				$('#level').val(val);
			}
		</script>
		
	</div>
</div>
<script>
	$('.status-rejected').click(function() {
		var reason = $(this).data('reason');

		alert('거절 사유: ' + reason);
	})

	function changeSold(Idx,val) {		
		$.post('/My/ChangeSold', { 
			Idx: Idx, 
			val: val 
			})
		.success(function (res) {							
			if (res=='0000') {				
				if(val ==1) {
					alert('SOLDOUT 처리되었습니다. 다시 수업이 가능할 때 SELLING을 클릭하여주세요!');
				} else {
					alert('SELLING 처리되었습니다.');
				}
				location.reload();
			} else {				
				alert(res);
			}
		})
		.fail(function (res) {			
			alert(res.message);
		});
	}

	function reCheck(Idx) {	
		if(confirm("재검토 요청은 한 달에 한 번 신청하실 수 있습니다.\n\n검토기준을 참고해 수업 내용을 수정한 뒤 신청해주세요.\n(재검토 결과가 반영되기까지 최대 5일이 소요될 수 있습니다.)\n\n*관련 문의사항은 카카오톡 플러스친구 @탈잉센터 로 연락주세요!\n\n재검토 요청하시겠습니까? "))
		{
			$.post('/My/reCheck.php', { 
				Idx: Idx
				})
			.success(function (res) {							
				if (res=='0000') {				
					alert('재검토 요청이 완료되었습니다.');
					location.reload();
				} else {				
					alert(res);
				}
			})
			.fail(function (res) {			
				alert(res.message);
			});
		}
				
	}
</script>



<script type="text/javascript" id="">!function(b,e,f,g,a,c,d){b.fbq||(a=b.fbq=function(){a.callMethod?a.callMethod.apply(a,arguments):a.queue.push(arguments)},b._fbq||(b._fbq=a),a.push=a,a.loaded=!0,a.version="2.0",a.queue=[],c=e.createElement(f),c.async=!0,c.src=g,d=e.getElementsByTagName(f)[0],d.parentNode.insertBefore(c,d))}(window,document,"script","https://connect.facebook.net/en_US/fbevents.js");fbq("init","666003960220481");fbq("set","agent","tmgoogletagmanager","666003960220481");fbq("track","PageView");</script>
<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=666003960220481&amp;ev=PageView&amp;noscript=1"></noscript>
<div id="fb-root" class=" fb_reset"><div style="position: absolute; top: -10000px; width: 0px; height: 0px;"><div><iframe name="fb_xdm_frame_https" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" id="fb_xdm_frame_https" aria-hidden="true" title="Facebook Cross Domain Communication Frame" tabindex="-1" src="https://staticxx.facebook.com/connect/xd_arbiter/r/j-GHT1gpo6-.js?version=43#channel=f127bfd5c91b9e8&amp;origin=https%3A%2F%2Ftaling.me" style="border: none;"></iframe></div><div></div></div></div>
</body>
</html>