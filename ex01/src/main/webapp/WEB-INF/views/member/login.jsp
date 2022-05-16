<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/member/login" method="post">
	<div><input type="text" name="id" placeholder="아이디 입력하세요."></div>
	<div><input type="password" name="password" placeholder="비밀번호 입력하세요."></div>
	<div><input type="submit" value="로그인"></div>
</form>
</body>
</html>