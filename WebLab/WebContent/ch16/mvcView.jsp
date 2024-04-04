<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="login" class="ch16.ModelBeans" scope="session"></jsp:useBean>
    <center>
        <jsp:getProperty name="login" property="id"/>님 환영합니다.
    </center>	
</body>
</html>