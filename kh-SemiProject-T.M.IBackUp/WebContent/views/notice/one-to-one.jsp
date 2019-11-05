<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

button{
	height:22px;
	width:80px;
	}
	
button:hover{
	cursor:pointer;
	}
	
#form {
	width:600px;
	height:500px;
	margin:auto;
	padding:150px;
}
</style>
</head>
<body>
	<%@include file="../common/menubar.jsp"%>
		<form method="get" action="">
		<div id="form">
			<fieldset>
				<legend>&nbsp;1:1 문의&nbsp;</legend>
				<ul>
					<li><label>카테고리: </label> <input type="text" id="movieName"
						list="movielist"> <datalist id="movielist">
							<option>예매</option>
							<option>결제</option>
							<option>멤버십</option>
							<option>이벤트</option>
							<option>기타</option>
						</datalist></li>
					<br>
					<li><lable>제목: </lable>
					<input type="text" id="rtitle"> 
					</li>
					<br>
					<li>
					<label>내용 : </label> 
					<textarea id="message" rows="15" cols="50"></textarea>
					</li>
				</ul>
			</fieldset>	
			<div align="center">
			<br>
			<button type="button" onclick="javascript:history.back();">취소하기</button>
			<button id="submit" type="submit">등록하기</button>
			</div>
			</div>	
		</form>
</body>
</html>