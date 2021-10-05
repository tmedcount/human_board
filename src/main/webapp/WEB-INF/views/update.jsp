<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <script src="http://code.jquery.com/jquery-3.5.0.js"></script>
    <title>새 글쓰기</title>
  </head>
  <body>
    <input type="hidden" id="passcode" value="${post.passcode}" />
    <table align="center" valign="top">
      <tr>
        <td colspan="2">
          <table id="tblView">
          	<tr>
          	  <td>게시물 번호</td>
          	  <td id="bbs_id">${post.bbs_id}</td>
          	</tr>
            <tr id="title">
              <td>제목</td>
              <td><input type=text id=title value="${post.title}"></td>
            </tr>
            <tr id="content">
              <td>내용</td>
              <td><input type=text id=content value="${post.content}"></td>
            </tr>
            <tr id="writer">
              <td>작성자</td>
              <td>${post.writer}</td>
            </tr>
            <tr>
              <td>작성시각</td>
              <td>${post.created}</td>
            </tr>
            <tr>
              <td>수정시각</td>
              <td>${post.updated}</td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td><input type="button" id="btnUpdate" value="완료" /></td>
        <td align="right">
          <input type="button" id="btnCancel" value="취소" />
        </td>
      </tr>
    </table>
  </body>
  <script>
    $(document)
    .on("click", "#btnUpdate", function() {
    	let bbs_id = $("#bbs_id").text();
    	document.location = "/app/update_view/"+bbs_id;
    	
    	
    })
    .on("click", "#btnCancel", function() {
    	let bbs_id = $("#bbs_id").text();
    	document.location = "/app/view/"+bbs_id;
    })
  </script>
</html>
