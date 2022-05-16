<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <!-- Bootstrap Core CSS -->
 <link href="../resources/css/bootstrap.css" rel="stylesheet">
 <!-- MetisMenu CSS -->
 <link href="../resources/css/metisMenu.css" rel="stylesheet">
 <!-- Custom CSS -->
 <link href="../resources/css/sb-admin-2.css" rel="stylesheet">
 <!-- Custom Fonts -->
 <link href="../resources/css/font-awesome.css" rel="stylesheet" type="text/css">
 <!-- jQuery 선언 -->
 <script src="../resources/js/jquery.js"></script>
 <!-- Bootstrap Core JavaScript -->
 <script src="../resources/js/bootstrap.js"></script>
 <!-- Metis Menu Plugin JavaScript -->
 <script src="../resources/js/metisMenu.js"></script>
 <!-- Custom Theme JavaScript -->
 <script src="../resources/js/sb-admin-2.js"></script>
 <!-- 댓글 관련 JS -->
 <script src="../resources/js/reply.js"></script>
 
 <!-- 파일 첨부 관련 JS -->
 <script src="../resources/js/attach.js"></script>
 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
boardDetail화면입니다.
<table border="1">
	<tr><td>No.</td><td><input type="hidden" id="bno" value="${bdetail.bno}">${bdetail.bno}</td></tr>
	<tr><td>제목</td><td>${bdetail.title}</td></tr>
	<tr><td>내용</td><td>${bdetail.content}</td></tr>
	<tr>
		<td colspan="2">
			<a href="/board/modify?bno=${bdetail.bno}">수정</a>
			<a href="/board/remove?bno=${bdetail.bno}">삭제</a>
		</td>
	</tr>
</table>
	<div class="col-lg-6">
	    <div class="panel panel-default">
	        <!-- /.panel-heading -->
	        <div class="panel-body">
	            <!-- Button trigger modal -->
	            <button id="addReply"class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
	                	댓글쓰기
	            </button>
	            <!-- Modal -->
	            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	                <div class="modal-dialog">
	                    <div class="modal-content">
	                        <div class="modal-header">
	                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                            <h4 class="modal-title" id="myModalLabel">댓글 모달창</h4>
	                        </div>
	                        <div class="modal-body">
	                        	<div class="form-group">
	                            	<label>Reply</label>
	                            	<input id="reply" class="form-control" type="text">
	                            	<input id="rno" class="form-control" type="hidden">
	                            	<input id="bno" class="form-control" type="hidden" value="${bdetail.bno}">
	                            </div>
	                            <div class="form-group">
	                            	<label>Replyer</label>
	                            	<input id="replyer" class="form-control" type="text" readonly>
	                            </div>
	                            <div class="form-group" id="replydateDiv">
	                            	<label>ReplyDate</label>
	                            	<input id="replydate" class="form-control" type="text">
	                            </div>
	                        </div>
	                        <div class="modal-footer">
	                            <button type="button" id="modalModBtn" class="btn btn-primary">댓글 수정</button>
	                            <button type="button" id="modalRemoveBtn" class="btn btn-primary">댓글 삭제</button>
	                            <button type="button" id="modalWriteBtn" class="btn btn-primary">댓글 쓰기</button>
	                            <button type="button" id="modalCloseBtn" class="btn btn-default" data-dismiss="modal">Close</button>
	                        </div>
	                    </div>
	                    <!-- /.modal-content -->
	                </div>
	                <!-- /.modal-dialog -->
	            </div>
	            <!-- /.modal -->
	        </div>
	        <!-- .panel-body -->
	    </div>
	    <!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
	<ul class="replyList"></ul>
	<div id="uploadResult">
	<ul>
	
	</ul>
	</div>
</body>
</html>