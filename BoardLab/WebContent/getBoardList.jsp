<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>board list</h1>
    <hr/>
    <h3>${user.name } 님 환영합니다. <a href="logout.do">logout</a></h3>
	
    <!-- 게시글 목록 화면 -->
    <table border="1">
        <tr>
            <td>no</td><td>title</td><td>writer</td><td>date</td>
        </tr>
        <c:forEach var="board" items="${boardList }">
        <tr>
            <td>${board.seq }</td>
            <td><a href="getBoard.do?seq=${board.seq }">${board.title }</a></td>
            <td>${board.writer }</td>
            <td>${board.regDate }</td>
        </tr>
        </c:forEach>
    </table>
    <br />
    <a href="insertBoard.html">add board</a>
</body>
</html>