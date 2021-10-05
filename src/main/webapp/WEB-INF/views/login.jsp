<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<table>
	<form></form>
	<tr>
		<td align=right>로그인아이디</td><td><input type=text id=loginId></td>
	</tr>
	<tr>
		<td align=right>비밀번호</td><td><input type=password id=passcode></td>
	</tr>
	<tr>
		<td align=center colspan=2>
			<input type=submit value="로그인">
			<input type=reset value="취소">
		</td>
	</tr>
	<tr>
		<td align=center colspan=2>
			<input type=button value="목록보기" id=showList>
			<input type=button value="회원가입" id=newbie onclick='document.location="/app/newbie";'>
		</td>
	</tr>
</table>
</body>
</html>