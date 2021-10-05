<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<!-- Newbie -->
    <form
      method="POST"
      action="/app/signin"
      id="frmSignin"
      accept-charset="utf-8"
    >
      이름: <input type="text" name="realname" /><br />
      로그인 아이디: <input type="text" name="loginid" /><br />
      비밀번호: <input type="password" name="passcode1" /><br />
      비밀번호 확인: <input type="password" name="passcode2" /><br />
      <input class="btnNewbie" type="submit" value="회원가입" />
      <input type="button" value="취소" onclick="location.href='/app/list'">
    </form>
</body>
</html>