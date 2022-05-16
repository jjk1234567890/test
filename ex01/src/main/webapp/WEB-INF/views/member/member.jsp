<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="memberWrite" method="post">
	<label>아이디</label>
	<input type="text" name="id"><br>
	<label>비밀번호</label>
	<input type="password" name="password"><br>
	<label>비밀번호 재확인</label>
	<input type="password"><br>
	<label>이름</label>
	<input type="text" name="name"><br>
	<label>성별</label>
	<select name="gender">
		<option>성별</option>
		<option value="남">남자</option>
		<option value="여">여자</option>
		<option>선택안함</option>
	</select>
	<input type="submit" value="회원가입">
</form>
</body>
</html>