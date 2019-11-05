<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, review.model.vo.*"%>
<%
	ArrayList<Review> list = (ArrayList<Review>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	
	String contextPath = request.getContextPath();
%>
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

.poster  ul {
	padding:10%;
	margin-left:15%;
}

.poster  ul li {
	list-style-type: none;
}
</style>
</head>
<body>
	<%@include file="../common/menubar.jsp"%>
	
	<section id="content">
		<div class="poster">
			<ul>
				<li><img src="../../resources/img/review/1.jpg" width="15.1%">
				<img src="../../resources/img/review/2.jpg" width="15%">
				<img src="../../resources/img/review/3.jpg" width="14.8%">
				<img src="../../resources/img/review/4.jpg" width="15.1%">
				<img src="../../resources/img/review/5.jpg" width="15.1%">
				<br>
				<img src="../../resources/img/review/6.jpg" width="15.1%">
				<img src="../../resources/img/review/7.jpg" width="15.1%">
				<img src="../../resources/img/review/8.jpg" width="14.6%">
				<img src="../../resources/img/review/9.jpg" width="15.1%">
				<img src="../../resources/img/review/10.jpg" width="15%"></li>
			</ul>
		</div>

		
		<!-- 불러온 댓글 리스트 보여주기 -->
		<div id="replySelectArea">
			<table id="table">
				<tr>
					<th width="100">글번호</th>
					<th width="100">글제목</th>
					<th width="100">별점</th>
					<th width="150">작성일</th>
				</tr>
				<% if(list.isEmpty()){ %>
				<tr>
					<td colspan="6">조회된 리스트가 없습니다.</td>
				</tr>
				<% } else { %>
					<% for(Review r : list) {%>
					<tr>
						<input type="hidden" value="<%= r.getRnum() %>">
						<td><%= r.getRtitle() %></td>
						<td><%= r.getRrate() %></td>
						<td><%= r.getMrvDate() %></td>
					</tr>
					<% } %>
				<% } %>		
			</table>
		</div>
	</section>
	<!-- #content end -->
</body>
</html>