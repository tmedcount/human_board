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
    <form method="POST" action="/app/save">
      <table>
        <tr>
          <td>제목</td>
          <td><input type="text" name="title" /></td>
        </tr>
        <tr>
          <td valign="top">내용</td>
          <td><textarea name="content" rows="20" cols="60"></textarea></td>
        </tr>
        <tr>
          <td>작성자</td>
          <td><input type="text" name="writer" /></td>
        </tr>
        <tr>
          <td>비밀번호</td>
          <td><input type="password" name="passcode" /></td>
        </tr>
        <tr>
          <td colspan="2">
            <input type="submit" value="글 등록" />&nbsp;
            <input type="button" id="btnCancel" value="취소(목록보기)" />
          </td>
        </tr>
      </table>
    </form>
  </body>
  <script>
    $(document)
    .on("click", "#btnCancel", function() {
    	document.location = "/app/list";
    })
  </script>
</html>
