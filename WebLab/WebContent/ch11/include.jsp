<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <center>
        include file...
        <br />
        <%-- JSP 주석 : include 시킨 곳에서 param으로 전달한 데이터를 획득 --%>
        name : <%= request.getAttribute("name") %><br />
        data : <%= request.getParameter("data") %>
    </center>
</body>
</html>