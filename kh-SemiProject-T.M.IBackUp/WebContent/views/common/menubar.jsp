<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script src="//code.jquery.com/jquery.min.js"></script>

<title>Creative - Start Bootstrap Theme</title>

<!-- Font Awesome Icons -->
<link href="<%=request.getContextPath() %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Google Fonts -->
<link
	href="<%=request.getContextPath() %>/resources/https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700"
	rel="stylesheet">
<link
	href='<%=request.getContextPath() %>/resources/https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="<%=request.getContextPath() %>/resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Theme CSS - Includes Bootstrap -->
<link href="<%=request.getContextPath() %>/resources/css/creative.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/resources/css/MainCss.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top"><img
				src="<%=request.getContextPath() %>/resources/img/logo.png" width="45%"></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<script>
				$(function() {
					$(".zeta-menu li").hover(function() {
						$('ul:first', this).show();
					}, function() {
						$('ul:first', this).hide();
					});
					$(".zeta-menu>li:has(ul)>a").each(function() {
						$(this).html($(this).html());
					});
					$(".zeta-menu ul li:has(ul)").find("a:first").append(
							"<p style='float:right;margin:-3px'>&#9656;</p>");
				});
			</script>

			<div class='zeta-menu-bar'>
				<ul class="zeta-menu">
					<li><a href="#"><h5>티켓 예매</h5></a>
						<ul>
							<li><a href="#">빠른 예매</a>
								<ul>
									<li><a href="#">영화 검색 예매</a></li>
									<li><a href="#">날짜별 검색 예매</a></li>
									<li><a href="#">극장 검색 예매</a></li>
								</ul></li>
							<li><a href="#">상영 시간표</a></li>
						</ul></li>
					<li><a href="#"><h5>영화</h5></a>
						<ul>
							<li><a href="#">실시간 영화 차트</a></li>
							<li><a href="#">현재 상영 정보</a>
								<ul>
									<li><a href="#">영화 정보</a></li>
									<li><a href="#">후기</a></li>
								</ul></li>
							<li><a href="#">상영 예정작</a></li>
							<li><a href="#">보고싶어★(보류)</a></li>
						</ul></li>
					<li><a href="#"><h5>영화관</h5></a>
						<ul>
							<li><a href="#">우리 동네 영화관</a></li>
							<li><a href="#">★특별관★</a>
								<ul>
									<li><a href="#">4DX</a></li>
									<!--<li><a href="#">imax</a></li> // 이 위치에 저장이 안되어 주석 처리!ㅋㅋ-->
									<li><a href="#">ScreenX</a></li>
									<li><a href="#">TempurCinema</a></li>
									<li><a href="#">IMAX</a></li>
									<li><a href="#">CharLotte</a></li>
								</ul></li>
						</ul></li>
					<li><a href="#"><h5>스넥 스토어</h5></a>
						<ul>
							<li><a href="#">CGV</a></li>
							<li><a href="#">롯데시네마</a></li>
							<li><a href="#">메가박스</a></li>
						</ul></li>
					<li><a href="#"><h5>고객 센터</h5></a>
						<ul>
							<li><a href="#">Q&A</a></li>
							<li><a href="#">자주찾는질문</a></li>
							<li><a href="#">분실물 문의</a></li>
							<li><a href="#">공지사항</a></li>
						</ul></li>
					<li><a href="#"><h5>마이페이지</h5></a></li>
				</ul>
			</div>

		</div>
	</nav>
	<!-- 메뉴바 끝  -->
</body>
</html>