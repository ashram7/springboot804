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
    <h1>글 상세보기</h1>
    <hr />
    <!-- 글을 보면서 바로 수정할 수 있도록 화면 구현 -->
    <form action="updateBoard.do" method="post">
        <input name="seq" type="hidden" value="${board.seq }" />
        <table border="1">
            <tr>
                <td>title</td>
                <td><input type="text" name="title" value="${board.title }" /></td>
            </tr>
            <tr>
                <td>writer</td>
                <td>${board.writer }</td>
            </tr>
            <tr>
                <td>content</td>
                <td><textarea name="content" cols="40" rows="10">
                    ${board.content }
                </textarea></td>
            </tr>
            <tr>
                <td>date</td>
                <td>${board.regDate }</td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="update"></td>			
            </tr>
        </table>
    </form>
    <hr />
    <a href="insertBoard.html">add board</a>
    <br />
    <c:if test="${user.role == 'Admin' }">
        <a href="deleteBoard.do?seq=${board.seq }">delete</a>
    </c:if>
    <br />
    <a href="getBoardList.do">list</a>
</body>
</html>