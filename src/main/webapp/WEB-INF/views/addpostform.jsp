<%--
  Created by IntelliJ IDEA.
  User: hanmin
  Date: 2023/12/01
  Time: 6:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add new post</title>
</head>
<body>
<form action="addok" method="POST">
  <table id = "edit">
    <tr><td>카테고리</td><td><input type="text" name="category"/></td></tr>
    <tr><td>제목</td><td><input type="text" name="title"/></td></tr>
    <tr><td>글쓴이</td><td><input type="text" name="writer"/></td></tr>
    <tr><td>내용</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    <input type="hidden" name="regDate" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
  </table>
  <button type="submit">게시글 등록</button>
  <button type="button" onclick="location.href='list'">목록보기</button>
</form>
</body>
</html>
