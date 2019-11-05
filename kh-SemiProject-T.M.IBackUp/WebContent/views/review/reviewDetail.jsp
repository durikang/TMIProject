<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#form {
	width: 450px;
	height: 350px;
	margin: auto;
	padding: 150px;
}
</style>
</head>
<body>
	<%@include file="../common/menubar.jsp"%>
	<div id="form">
		<fieldset>
			<table>
				<tr>
					<td>
						<table width="100%" cellpadding="0" cellspacing="0" border="0">
							<tr
								style="background: url('img/table_mid.gif') repeat-x; text-align: center;">
								<td width="5"><img src="img/table_left.gif" width="5"
									height="30" /></td>
								<td>리 뷰</td>
								<td width="5"><img src="img/table_right.gif" width="5"
									height="30" /></td>
							</tr>
						</table>
						<table width="413">
							<tr>
								<td width="0">&nbsp;</td>
								<td align="center" width="76">글번호</td>
								<td width="319"></td>
								<td width="0">&nbsp;</td>
							</tr>
							<tr height="1" bgcolor="#dddddd">
								<td colspan="4" width="407"></td>
							</tr>
							<tr>
								<td width="0">&nbsp;</td>
								<td align="center" width="76">작성자</td>
								<td width="319"></td>
								<td width="0">&nbsp;</td>
							</tr>
							<tr height="1" bgcolor="#dddddd">
								<td colspan="4" width="407"></td>
							</tr>
							<tr>
								<td width="0">&nbsp;</td>
								<td align="center" width="76">작성일</td>
								<td width="319"></td>
								<td width="0">&nbsp;</td>
							</tr>
							<tr height="1" bgcolor="#dddddd">
								<td colspan="4" width="407"></td>
							</tr>
							<tr>
								<td width="0">&nbsp;</td>
								<td align="center" width="76">제목</td>
								<td width="319"></td>
								<td width="0">&nbsp;</td>
							</tr>
							<tr height="1" bgcolor="#dddddd">
								<td colspan="4" width="407"></td>
							</tr>
							<tr>
								<td width="0">&nbsp;</td>
								<td width="399" colspan="2" height="200">
							</tr>
							<tr height="1" bgcolor="#dddddd">
								<td colspan="4" width="407"></td>
							</tr>
							<tr align="center">
								<td width="0">&nbsp;</td>
								<td colspan="2" width="399"><br> <input type=button
									value="목록"> <input type=button value="수정"> <input
									type=button value="삭제">
								<td width="0">&nbsp;</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</fieldset>
	</div>
	<!-- 댓글 작성하는 부분 -->
	<table align="center">
		<tr>
			<td><textarea rows="3" cols="60" id="replyContent"></textarea>
			<td><button id="addReply">댓글등록</button>
		</tr>
	</table>
</body>
</html>