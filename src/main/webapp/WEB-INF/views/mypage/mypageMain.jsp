<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- ���Ͼ��ε� -->
    <form name="fileForm" action="requestupload1" method="post" enctype="multipart/form-data">
        <input type="file" name="file" />
        <input type="text" name="src" />
        <input type="submit" value="����" />
    </form>

</body>
</html>