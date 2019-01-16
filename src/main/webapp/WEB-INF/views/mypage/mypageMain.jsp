<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 파일업로드 -->
    <form name="fileForm" action="requestupload1" method="post" enctype="multipart/form-data">
        <input type="file" name="file" />
        <input type="text" name="src" />
        <input type="submit" value="전송" />
    </form>

</body>
</html>