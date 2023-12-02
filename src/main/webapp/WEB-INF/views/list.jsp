<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<h1>자유게시판</h1>
<table id = "list" width = "90%">
  <tr>
    <th>seq</th>
    <th>ID</th>
    <th>Category</th>
    <th>Title</th>
    <th>Content</th>
    <th>RegDate</th>
    <th>Edit</th>
    <th>Delete</th>
    <th>More</th>
  </tr>
  <c:forEach items = "${list}" var = "u">
    <tr>
      <td>${u.seq}</td>
      <td>${u.category}</td>
      <td>${u.title}</td>
      <td>${u.writer}</td>
      <td>${u.content}</td>
      <td>${u.regDate}</td>
      <td>
        <button type="button" onclick="location.href='editform/${u.seq}'">
          수정
        </button>
      </td>
      <td><a href = "javascript:delete_ok('${u.seq}')">Delete</a></td>
      <td>
        <button type="button" onclick="location.href='posts/${u.seq}'">
          자세히
        </button>
      </td>
    </tr>
  </c:forEach>
</table>
<br/><button type = "button" onclick="location.href = 'add'">Add New Post</button>
</body>
</html>
<script>
  function delete_ok(seq){
    if(confirm("정말 삭제하시겠습니까?")){
      location.href="deleteok/"+seq;
    }
  }
</script>