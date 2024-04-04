<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <fmt:bundle basename="ch14.message">
        <fmt:message>msg</fmt:message>
    </fmt:bundle>	
    <br />
    
    <fmt:setBundle basename="ch14.message"/>
    <fmt:message>msg</fmt:message>
    <fmt:message key="msg1">
        <fmt:param value="10"></fmt:param>
        <fmt:param value="20"></fmt:param>
    </fmt:message>
    <br />    
    
    
    
</body>
</html>