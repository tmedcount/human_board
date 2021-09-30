<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="http://code.jquery.com/jquery-3.5.0.js"></script>
	<title>게시판 목록</title>
</head>
<body>
<table>
   <thead>
      <tr><th>게시물번호</th><th>제목</th><th>작성자</th><th>작성시간</th><th>수정시간</th></tr>
   </thead>
   <tbody>
      <c:forEach items="${list_BBS}" var="rec">
         <tr><td>${rec.bbs_id}</td><td>${rec.title}</td><td>${rec.writer}</td><td>${rec.created}</td><td>${rec.updated}</td></tr>   
      </c:forEach>      
   </tbody>
</table>
</body>
<script>
$(document)
.on("click", "tbody tr", function() {
	let bbs_id = $(this).find("td:eq(0)").text();
	console.log('bbs_id [' + bbs_id + ']');
	document.location = "/app/view/"+bbs_id;
	
	return false;
})
</script>
</html>