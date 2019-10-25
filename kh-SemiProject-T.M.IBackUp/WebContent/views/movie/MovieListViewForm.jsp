<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, movie.model.vo.*"%>
<%
 	ArrayList<Movie> mlist = (ArrayList<Movie>)request.getAttribute("blist");
	//ArrayList<Attachment> flist = (ArrayList<Attachment>)request.getAttribute("flist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.outer {
		width:1000px;
		height:700px;
		background:black;
		color:white;
		margin:auto;
		margin-top:50px;
	}
	
	.thumbnailArea {
		width:760px;
		height:550px;
		margin:auto;
	}
	
	.thumb-list {
		width:220px;
		border:1px solid white;
		display:inline-block;
		margin:10px;
		align:center;
	}
	
	.thumb-list:hover {
		opacity:0.8;
		cursor:pointer;
	}
	
	.searchArea {
		width:420px;
		margin:auto;
	}
	
	button{
		height:22px;
		width:80px;
		background:yellowgreen;
		border:yellowgreen;
		color:white;
		border-radius:5px;
	}
	
	button:hover{
		cursor:pointer;
	}

</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp" %>
	
	<div class="outer">
		<br>
		<h2 align="center">사진 게시판</h2>
		<div class="thumbnailArea">
			<% for(Movie m : mlist){ %>
				<div class="thumb-list" align="center">
					<input type="hidden" value="<%= m.getmCode()%>">
					<div>
						<%-- <% for(Attachment at : flist){ %>
							<% if(b.getbId() == at.getbId()){ %>
								<img src="<%= contextPath %>/resources/thumbnail_uploadFile/<%= at.getChangeName() %>" width="200px" height="150px">
							<% } %>
						<% } %> --%>
					</div>
					<p>
						No. <%= m.getmCode() %> <%= m.getmTitle() %> <br>
						조회수 : 0
					</p>
				</div>
			<% } %>
		</div>
	</div>
	
	<!-- 검색창 만들어 주기 / 기능 없이 -->
	<div class="searchArea">
		<select id="searchCondition" name="searchCondition">
			<option>------</option>
			<option value="writer">작성자</option>
			<option value="title">제목</option>
			<option value="content">내용</option>
		</select>
		<input type="search">
		<button type="submit">검색하기</button>
	</div>
	
	<script>
		$(function(){
			$(".thumb-list").click(function(){
				var bId = $(this).children().eq(0).val();
				location.href="<%= request.getContextPath()%>/detail.mo?mCode=" + mCode;
			});
		});
	
	</script>
	
	<%@include file="../common/footer.jsp" %>
</body>
</html>