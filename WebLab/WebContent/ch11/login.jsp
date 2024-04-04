<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="login" class="ch11.LoginBean" />
    <jsp:setProperty name="login" property="id" />
    <jsp:setProperty name="login" property="password" />	
    <%
        if(login.dbCheck()){
    %>
            <jsp:getProperty name="login" property="id" />님이 로그인하셨습니다.
    <%
        } else {
    %>
            <jsp:forward page="login.html" />
    <%
        }	
    %>	
</body>
</html>