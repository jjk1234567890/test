<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/board/modify" method="post">
	<table border="1">
		<tr><td>No.</td><td><input type="hidden" name="bno" value="${modify.bno}">${modify.bno}</td></tr>
		<tr><td>제목</td><td><input type="text" name="title" value="${modify.title}"></td></tr>
		<tr><td>내용</td><td><textarea name="content">${modify.content}</textarea></td></tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정">
			</td>
		</tr>
	</table>
</form>
</body>
</html>