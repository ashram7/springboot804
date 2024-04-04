<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
        request.setAttribute("name","ashram");
    %>
    <jsp:include page="include.jsp" flush="true">
    	<jsp:param name="data" value="hello" />
    </jsp:include>
</body>
</html>