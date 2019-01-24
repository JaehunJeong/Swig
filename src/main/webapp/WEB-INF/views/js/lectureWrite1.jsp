<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
var files_count = 1;
function upload_file(var1) {
	document.getElementById(var1+files_count).click();
}
function upload_file_after(files, var1) {
	var reader = new FileReader();
	reader.onload = function (e) {
	  var files_body = document.getElementById(var1);
	  
	  slfiles_body.innerHTML += '<img src="'+e.target.result+'" width="300px" height="100px" /><br />';
	  
	  files_count += 1;
	}
	reader.readAsDataURL(files.files[0]);
}
</script>
</head>
<body>
		<input type="file" name="slfile" id="slfile1" onchange="upload_file_after(this,'slfiles_body');"/>
		<input type="file" name="slfile" id="slfile2" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="slfile" id="slfile3" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="slfile" id="slfile4" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="slfile" id="slfile5" onchange="upload_file_after(this,'slfiles_body');"/><br/>
		<input type="file" name="slfile" id="slfile6" onchange="upload_file_after(this,'slfiles_body');"/>

		<input type="button" value="이미지 첨부" onclick="upload_file('slfile');" />
	<div id="slfiles_body">

	</div>
<input type="submit" value="전송">


</form>
</body>
</html>