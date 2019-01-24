<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-1.6.4.js"></script>

<script type="text/javascript">

	function selectCA(){
		var x=document.getElementById("cal").value;
		
		var list1= new Array();
		var list2= new Array();
		var list3= new Array();
		var list4= new Array();
		var list5= new Array();
		var list6= new Array();
		var list7= new Array();
		var list8= new Array();
		
		
		<c:forEach items="${list1}" var="items">
			list1.push("${items.CA_SSECTION}");
		</c:forEach>
		
		<c:forEach items="${list2}" var="items">
			list2.push("${items.CA_SSECTION}");
		</c:forEach>
	
		<c:forEach items="${list3}" var="items">
			list3.push("${items.CA_SSECTION}");
		</c:forEach>
	
		<c:forEach items="${list4}" var="items">
			list4.push("${items.CA_SSECTION}");
		</c:forEach>

		<c:forEach items="${list5}" var="items">
			list5.push("${items.CA_SSECTION}");
		</c:forEach>
		
		<c:forEach items="${list6}" var="items">
			list6.push("${items.CA_SSECTION}");
		</c:forEach>
		
		<c:forEach items="${list7}" var="items">
			list7.push("${items.CA_SSECTION}");
		</c:forEach>
		
		<c:forEach items="${list8}" var="items">
			list8.push("${items.CA_SSECTION}");
		</c:forEach>
		
		$('#cas').empty();
		
		if(x=="프로그래밍"){
			for(i=0;i<4;i++){
				document.frm.cas.options[i]=new Option(list1[i]);
			}
		}else if(x=="디자인 툴"){
			for(i=0;i<4;i++){
				document.frm.cas.options[i]=new Option(list2[i]);
			}
		}else if(x=="실무역량"){
			for(i=0;i<4;i++){
				document.frm.cas.options[i]=new Option(list3[i]);
			}
		}else if(x=="뷰티"){
			for(i=0;i<4;i++){
				document.frm.cas.options[i]=new Option(list4[i]);
			}
		}else if(x=="외국어"){
			for(i=0;i<4;i++){
				document.frm.cas.options[i]=new Option(list5[i]);
			}
		}else if(x=="음악"){
			for(i=0;i<4;i++){
				document.frm.cas.options[i]=new Option(list6[i]);
			}
		}else if(x=="라이프스타일"){
			for(i=0;i<4;i++){
				document.frm.cas.options[i]=new Option(list7[i]);
			}
		}else if(x=="운동"){
			for(i=0;i<4;i++){
				document.frm.cas.options[i]=new Option(list8[i]);
			}
		}
	}
	
	
</script>
</head>

<body>
	<form id="frm" name="frm" enctype="multipart/form-data" method="post" action="lectureInsert1">
		<table class="board_view"> 
			<colgroup>
				<col width="15%">
				<col width="*"/>
			</colgroup>
			<caption>강의 개설</caption>
			<tbody>
				<tr>
					<th scope="row">수업 제목</th>
					<td colspan="2" class="view_text">
						<textarea placeholder="튜터님의 매력을 뽐낼  수 있는 제목을 입력해주세요." rows="1" cols="70" id="T_TITLE" name="T_TITLE"></textarea>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="dropdown">
			<select id="cal" name="cal" onchange="selectCA()">
				<option>카테고리 대분류</option>
				<c:forEach items="${caGroup}" var="caGroup" varStatus="status">
				<option>
					${caGroup.CA_LSECTION}
				</option>
				</c:forEach>
			</select>
			<select name="cas" id="cas">
				<option>카테고리 소분류</option>
			</select>
		</div>
		<div id="fileCover">
				<label>커버사진 등록</label>
				<ul>
						<li>권장 이미지 사이즈 840x540 jpg,jpeg,png</li>
						<li>주의! 다음 사진은 사용이 불가합니다</li> 
  						<li>1) 인위적인 홍보문구가 포함된 사진</li>
  						<li>2) 저작권에 위배되는 사진</li>
  						<li>3) 반명함사진 /프로필사진</li>
				</ul>
				<p>
				<input type="button" value="이미지 업로드" onclick="upload_clfile('clfile');"/>
				<input type="file" id="clfile" name="clfile" style="display:none;" onchange="upload_clfile_after(this,'fileCover');">
				<a href="#this" class="btn" id="delete" name="delete_">삭제</a></p>
		</div>
		<br/><br/>
		<label>강의사진 등록</label><br/>
		<label style="font-size:10pt;">사진 등록을 누르시면 강의 사진이 등록이 됩니다.<br/> 강의 사진 등록은 최대 6개까지 입니다.</label>
		<br/><br/>
		
		<div id="slfiles_body">
		
		<input type="button" value="사진 등록" onclick="upload_file('file');" />
		<input type="file" name="file" id="file1" style="display:none;" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="file" id="file2" style="display:none;" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="file" id="file3" style="display:none;" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="file" id="file4" style="display:none;" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="file" id="file5" style="display:none;" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="file" id="file6" style="display:none;" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		
		</div>
		
		<div id="list-videos">
		<p>
		<input type="text" id="L_URL1" name="L_URL1" placeholder="유튜브 링크를 적어주세요" class="input-video" value="" />
		</p>
		<p>
		<input type="text" id="L_URL2" name="L_URL2" placeholder="유튜브 링크를 적어주세요" class="input-video" />
		</p>
		</div>
		<label>다음으로 버튼을 누르시면 자동 임시 저장이 됩니다.</label>
		<br/><br/>
		<input type="submit" value="다음으로" />
		
	</form>
	<script>
	var files_count = 1;
	function upload_file(var1) {
		document.getElementById(var1+files_count).click();
	}
	function upload_file_after(files, var1) {
		var reader = new FileReader();
		reader.onload = function (e) {
		  var files_body = document.getElementById(var1);
		  /* var str1='<a href="#this" name="delete_'+(files_count)+'">';
		  
		  $("#slfiles_body").append(str1); */
		  /* var str1='<p id ="file"'+(files_count)+'onclick="fn_deleteFile("file")"'+(files_count)'>' */
		  var str='<p id ="file_'+(files_count)+'">'+'<img src="'+e.target.result+'" onclick="fn_deleteFile(file_'+(files_count)+')" width="200px" height="100px"/><br /></p>';
		  /* slfiles_body.innerHTML += <a href="#this" name="delete_'+(files_count)+'">'+'<img src="'+e.target.result+'" width="200px" height="100px" /><br /></a></p>'; */
		  $("#slfiles_body").append(str);
		  
		  console.log(slfiles_body);
		  files_count += 1;
		}
		reader.readAsDataURL(files.files[0]);
	}
	
	function upload_clfile(var1) {
		document.getElementById(var1).click();
	}
	function upload_clfile_after(files, var1) {
		var reader = new FileReader();
		reader.onload = function (e) {
		  var files_body = document.getElementById(var1);
		  /* var str1='<a href="#this" name="delete_'+(files_count)+'">';
		  
		  $("#slfiles_body").append(str1); */
		  /* var str1='<p id ="file"'+(files_count)+'onclick="fn_deleteFile("file")"'+(files_count)'>' */
		  var str='<p id ="clfile_">'+'<img src="'+e.target.result+'" onclick="fn_deleteFile(clfile_)" width="200px" height="100px"/><br /></p>';
		  /* slfiles_body.innerHTML += <a href="#this" name="delete_'+(files_count)+'">'+'<img src="'+e.target.result+'" width="200px" height="100px" /><br /></a></p>'; */
		  $("#fileCover").append(str);
		  console.log(fileCover);
		}
		reader.readAsDataURL(files.files[0]);
	}
	
	function fn_deleteFile(var1){
		var element = document.getElementById(var1)
		element.preventDefault();
		element.remove();
	}
	
	/* $("a[name^='delete']").click(function(e){ //삭제 버튼
        e.preventDefault();
        fn_deleteFile($(this));
    }); */

	function deleteFile(obj){
		obj.parent().remove();
	}
	
	</script>
</body>
</html>