<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="../resources/js/list.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<tr>
		<td>No</td><td>제목</td><td>작성일</td><td>작성자</td><td>조회수</td>
	</tr>
	<c:forEach items="${blist}" var="board">
	<tr>
		<td>${board.bno}</td>
		<td><a href="/board/detail?bno=${board.bno}">${board.title}</a></td>
		<td>${board.regdate}</td>
		<td>${board.writer}</td>
		<td>${board.count}</td>
	</tr>
	</c:forEach>
</table>
<c:if test="${session != null}">
<a href="/board/write">글쓰기</a>
</c:if>
<form id="searchForm" action="/board/list">
	<select name="type" id="type">
		<option value="">전체</option>
		<option value="t" ${pageMaker.cri.type eq 't'?'selected':''} >제목</option>
		<option value="w" ${pageMaker.cri.type eq 'w'?'selected':''}  >글작성자</option>
		<option value="tw" ${pageMaker.cri.type eq 'tw'?'selected':''}>제목+글작성자</option>
	</select>
	<input type="text" id="keyword" name="keyword" value="${pageMaker.cri.keyword}">
	<input type="hidden" id="pagenum" name="pagenum" value="${pageMaker.cri.pagenum}">
	<input type="hidden" id="amount" name="amount" value="${pageMaker.cri.amount}">
	
	
	
	
	<input type="button" id="searchbtn" value="검색">
	<div>
		<c:if test="${pageMaker.prev}">
			<a href="/board/list?pagenum=${pageMaker.startPage-1}&amount=${pageMaker.cri.amount}">Prev</a>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<a class="pageNo" href="${num}">${num}</a>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<a href="/board/list?pagenum=${pageMaker.endPage+1}&amount=${pageMaker.cri.amount}">Next</a>
		</c:if>
	</div>
</form>
</body>
</html>




