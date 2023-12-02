<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>자세히 보기</title>
</head>
<body>
<h1>자세히 보기</h1>
<table class="table table-bordered">
  <tr><td>제목: </td><td><c:out value="${u.title}" /></td></tr>
  <tr><td>글쓴이: </td><td><c:out value="${u.writer}" /></td></tr>
  <tr><td>내용: </td><td><c:out value="${u.content}" /></td></tr>
  <tr><td>등록일: </td><td><c:out value="${u.regDate}" /></td></tr>
</table>
</body>
</html>
