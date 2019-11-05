<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

td {
	height: 50px;
	text-align: center;
	border-bottom: 1px solid gray;
}

th {
	text-align: center;
	border-bottom: 2px solid gray;
}

#table {
	text-align: center;
	width: 80%;
	margin-left: auto;
	margin-right: auto;
}

</style>
</head>
<body>
	<%@include file="../common/menubar.jsp"%>
		
		<!-- 불러온 댓글 리스트 보여주기 -->
		<div id="replySelectArea">
			<table id="table">
				<tr>
					<th width="25%">글번호</th>
					<th width="25%">글제목</th>
					<th width="25%">작성자</th>
					<th width="25%">작성일</th>
				</tr>

				<tr>
					<td width="25%">김김김</td>
					<td width="25%">테스트</td>
					<td width="25%">★</td>
					<td width="25%">2019-10-22</td>
				</tr>
			</table>
		</div>		
	</section>
	<!-- #content end -->
</body>
</html>