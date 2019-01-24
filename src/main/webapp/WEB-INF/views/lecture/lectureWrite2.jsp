<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<link rel="stylesheet" type="text/css" href="<c:url value='/css/ui.css'/>" />

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>
</head>
<body>
	<form id="frm" name="frm" enctype="multipart/form-data">
		<ul>
			<li>
				<label>튜터소개</label>	
					<textarea placeholder="튜터님을 간단히 소개해주세요." rows="7" cols="40" title="튜터소개" id="T_CONTENTS" name="T_CONTENTS"></textarea>
			</li>
			<br /><br />
			<li>
				<label>수업소개</label>
					<textarea placeholder="튜터님을  수업을 간단히 소개해주세요." rows="7" cols="40" title="수업소개" id="L_CONTENTS" name="L_CONTENTS"></textarea>
			</li>
			<br /><br />
			<li>
				<label>수업대상</label>
					<textarea placeholder="튜터님을  수업대상을 간단히 소개해주세요." rows="7" cols="40" title="수업대상" id="LT_CONTENTS" name="LT_CONTENTS"></textarea>
			</li>
		</ul>
		<ul>
				<li>
					<label>커리큘럼등록</label>
					<div class="borbtm">
						<p>
							<span class="ntitle">1회차</span>
							<div id="cover-image" class="">		
								<img alt="" id="img-cover1" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:100%" />
							</div>
							<div class="">
								<button>
								이미지 업로드
								</button>
								<input type="file" id="currifile1" name="currifile"/>
	                        </div>							
						</p>
						<br>
						<p>
							<textarea placeholder="튜터님 수업을 간단히 설명해 주세요." class="input_txt05" rows="7" cols="40" id="Curriculum" name="Curriculum">테스트입니다.</textarea>
						</p>
					</div>
					<br>
					<div class="borbtm">
						<p>
							<span class="ntitle">2회차</span>
							<div id="cover-image" class="">		
								<img alt="" id="img-cover2" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:100%" />
							</div>
							<div class="">
								<button>
								이미지 업로드
								</button>
								<input type="file" id="currifile2" name="currifile"/>
	                        </div>							
						</p>
						<br>
						<p>
							<textarea placeholder="튜터님 수업을 간단히 설명해 주세요." class="input_txt05" rows="7" cols="40" id="Curriculum2" name="Curriculum2">테스트입니다.</textarea>
						</p>
					</div>
					<br>
					<div class="borbtm">
						<p>
							<span class="ntitle">3회차</span>
							<div id="cover-image" class="">		
								<img alt="" id="img-cover3" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:100%" />
							</div>
							<div class="">
								<button>
								이미지 업로드
								</button>
								<input type="file" id="currifile3" name="currifile"/>
	                        </div>							
						</p>
						<br>
						<p>
							<textarea placeholder="튜터님 수업을 간단히 설명해 주세요." class="input_txt05" rows="7" cols="40" id="Curriculum3" name="Curriculum3">테스트입니다.</textarea>
						</p>
					</div>
					<br>
					<div class="borbtm">
						<p>
							<span class="ntitle">4회차</span>
							<div id="cover-image" class="">		
								<img alt="" id="img-cover4" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:100%" />
							</div>
							<div class="">
								<button>
								이미지 업로드
								</button>
								<input type="file" id="currifile4" name="currifile"/>
	                        </div>							
						</p>
						<br>
						<p>
							<textarea placeholder="튜터님 수업을 간단히 설명해 주세요." class="input_txt05" rows="7" cols="40" id="Curriculum4" name="Curriculum4">테스트입니다.</textarea>
						</p>
					</div>
					<br>
					<div class="borbtm" style="display:none;" id="Curri5">
						<p>
							<span class="ntitle">5회차</span>
							<div id="cover-image" class="">		
								<img alt="" id="img-cover5" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:100%" />
							</div>
							<div class="">
								<button>
								이미지 업로드
								</button>
								<input type="file" id="currifile5" name="currifile"/>
	                        </div>							
						</p>
						<br>
						<p>
							<textarea placeholder="튜터님 수업을 간단히 설명해 주세요." class="input_txt05" rows="7" cols="40" id="Curriculum5" name="Curriculum5"></textarea>
						</p>
						<div id="delCurri5"><a class="btn_del" onclick="minusCurri()">삭제하기</a></div>
					</div>
					<br>
					<div class="borbtm" style="display:none;" id="Curri6">
						<p>
							<span class="ntitle">6회차</span>
							<div id="cover-image" class="">		
								<img alt="" id="img-cover6" style="float: none; margin: 0 auto; position: relative; overflow: hidden; max-width:100%" />
							</div>
							<div class="" style="float: none; margin: 0 auto; position: relative; overflow: hidden">
								<button class="btn btn-upload-cover btn-block">
								이미지 업로드
								</button>
								<input type="file" id="currifile6" name="currifile"/>
	                        </div>							
						</p>						
						<br>
						<p>
							<textarea placeholder="튜터님 수업을 간단히 설명해 주세요." class="input_txt05" rows="7" cols="40" id="Curriculum6" name="Curriculum6"></textarea>
						</p>
						<div id="delCurri6"><a class="btn_del" onclick="minusCurri2()">삭제하기</a></div>
					</div>
					<div class="borbtm" id="addCurri5">
						<a class="addbtn" onclick="addCurri()">추가 +</a>
					</div>
					<div class="borbtm" id="addCurri6" style="display:none;">
						<a class="addbtn" onclick="addCurri2()">추가 +</a>
					</div>
				</li>
	</form>
	
	<form id="commonForm" name="commonForm">
	<script>
					function addCurri()
					{						
						document.getElementById('Curri5').style.display = "block";
						document.getElementById('addCurri5').style.display = "none";
						document.getElementById('addCurri6').style.display = "block";
					}

					function addCurri2()
					{						
						document.getElementById('Curri6').style.display = "block";
						document.getElementById('delCurri5').style.display = "none";
						document.getElementById('addCurri6').style.display = "none";
					}

					function minusCurri()
					{
						$('#img-cover5')
						.attr('src', '//taling.me/Content/Images/background600px.png')
						.show();

						$("#Curriculum5").val("");

						document.getElementById('Curri5').style.display = "none";
						document.getElementById('addCurri5').style.display = "block";
						document.getElementById('addCurri6').style.display = "none";
						var agent = navigator.userAgent.toLowerCase();
						if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ){
							// ie 일때 input[type=file] init.
							$("#input-cover-image5").replaceWith( $("#input-cover-image5").clone(true) );			
						} else {
							//other browser 일때 input[type=file] init.
							$("#input-cover-image5").val("");
						}
						
					}

					function minusCurri2()
					{
						document.getElementById('Curri6').style.display = "none";
						document.getElementById('delCurri5').style.display = "block";
						document.getElementById('addCurri6').style.display = "block";
						var agent = navigator.userAgent.toLowerCase();
						if ( (navigator.appName == 'Netscape' && navigator.userAgent.search('Trident') != -1) || (agent.indexOf("msie") != -1) ){
							// ie 일때 input[type=file] init.
							$("#input-cover-image6").replaceWith( $("#input-cover-image6").clone(true) );			
						} else {
							//other browser 일때 input[type=file] init.
							$("#input-cover-image6").val("");
						}
						$('#img-cover6')
						.attr('src', '//taling.me/Content/Images/background600px.png')
						.show();
						
						$("#Curriculum6").val("");
					}
				</script>
	</form>
</body>
</html>