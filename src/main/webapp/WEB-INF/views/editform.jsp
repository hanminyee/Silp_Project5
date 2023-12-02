<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>게시글 수정</title>
</head>
<body>
<%--@elvariable id="u" type=""--%>
<form:form modelAttribute="u" method="POST" action="../editok">
  <form:hidden path="seq"/>
  <table class="table table-bordered">
    <tr><td>제목</td><td><form:input path="title" /></td></tr>
    <tr><td>글쓴이</td><td><form:input path="writer" /></td></tr>
    <tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
    <input type="hidden" name="regDate" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
  </table>
  <button type="submit">수정하기</button>
  <button type="button" onclick="history.back()">취소하기</button>
</form:form>
</body>
</html>
