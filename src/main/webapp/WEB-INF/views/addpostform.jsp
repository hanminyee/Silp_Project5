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
    <tr><td>책 제목</td><td><input type="text" name="bookTitle"/></td></tr>
    <tr><td>책 저자</td><td><input type="text" name="bookWriter"/></td></tr>
    <tr><td>출판사</td><td><input type="text" name="publisher"/></td></tr>
    <tr><td>등록번호</td><td><input type="text" name="regNumber"/></td></tr>
    <tr><td>ISBN</td><td><input type="text" name="isbn"/></td></tr>
    <tr><td>남은 책 갯수</td><td><input type="text" name="leftBook"/></td></tr>
    <input type="hidden" name="publicationDate" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
  </table>
  <button type="submit">책 등록하기</button>
  <button type="button" onclick="location.href='list'">책 목록보기</button>
</form>
</body>
</html>
