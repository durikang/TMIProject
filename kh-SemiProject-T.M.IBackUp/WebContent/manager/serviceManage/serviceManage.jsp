<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, Service.model.*, Member.model.vo.*"%>
<%
	ArrayList<Service> list = (ArrayList<Service>) request.getAttribute("list");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>
<meta name="description" content="Bootstrap 3 Website Template" />

<!-- Stylesheets
    ============================================= -->
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="images/favicon/favicon-32x32.png">
<link
	href="http://fonts.googleapis.com/css?family=PT+Sans:300,400,500,600,700"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/dark.css" type="text/css" />
<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
<link rel="stylesheet" href="css/animate.css" type="text/css" />
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

<link rel="stylesheet" href="css/responsive.css" type="text/css" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/plugins.js"></script>

<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
<script type="text/javascript"
	src="include/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript"
	src="include/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css"
	href="include/rs-plugin/css/settings.css" media="screen" />

<title>Home | Chocolat</title>

<style>
#mleft {
	text-align: left;
}

#mright {
	text-align: right;
}

#movbarboard {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
}

.movbtn {
	margin: 3px;
}

#movbar {
	width: 50%;
	text-align: center;
	float: left;
}

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

.revo-slider-emphasis-text {
	font-size: 70px;
	font-weight: 700;
	letter-spacing: 0px;
	padding: 15px 20px;
	border-top: 2px solid #FFF;
	border-bottom: 2px solid #FFF;
}

.revo-slider-desc-text {
	font-size: 26px;
	width: 650px;
	text-align: center;
	line-height: 1.5;
}

.revo-slider-caps-text {
	font-size: 30px;
	font-weight: 400;
}

.tparrows.preview2 .tp-arr-titleholder {
	text-transform: uppercase;
	font-weight: bold;
}
</style>

</head>

<body class="stretched">

	<!-- Document Wrapper
    ============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
        ============================================= -->
		<header id="header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger">
						<i class="icon-reorder"></i>
					</div>

					<!-- Logo
                    ============================================= -->
					<div id="logo">
						<a href="index.html" class="standard-logo"
							data-dark-logo="images/logo/logo-dark.png"><img
							src="images/logo/logo.png" alt="Chocolat Logo"></a> <a
							href="index.html" class="retina-logo"
							data-dark-logo="images/logo/logo-dark-large.png"><img
							src="images/logo/logo-large.png" alt="Chocolat Logo"></a>
					</div>
					<!-- #logo end -->

					<!-- Primary Navigation
                    ============================================= -->
					<nav id="primary-menu">
						<ul class="">
							<li><a href="<%=request.getContextPath()%>/manmanage.mc"><div>회원관리</div></a>
							</li>
							<li><a href="<%=request.getContextPath()%>/bomanagelist.bl"><div>게시글관리</div></a>
							</li>
							<li class="current"><a
								href="<%=request.getContextPath()%>/servicemanlist.sl"><div>고객센터</div></a>
							</li>
							<li><a href="<%=request.getContextPath()%>/qnalist.ql"><div>문의관리</div></a>
							</li>
							<li><a href="<%=request.getContextPath()%>/moneyman.mm"><div>매출관리</div></a></li>
						</ul>
					</nav>
					<!-- #primary-menu end -->
				</div>

			</div>

		</header>
		<!-- #header end -->


		<!-- Content
        ============================================= -->
		<section id="content">
			<div class="content-wrap">

				<!-- Promo -->
				<div
					class="promo promo-light promo-full header-stick nobottommargin">
					<div class="container clearfix">
						<h3>관리자 페이지입니다.</h3>
						<span>현재 페이지에서는 고객센터 답변과 조회를 진행할 예정입니다.</span>
					</div>
				</div>
				<!-- End Promo -->
				<div class="content-wrap">
					<br>
					<div class="tableArea">
						<table id="table">
							<tr>
								<th width=25%>문의 번호</th>
								<th width=25%>문의 제목</th>
								<th width=25%>게시일</th>
								<th width=25%>답변 상황</th>
							</tr>
							<%
								if (list.isEmpty()) {
							%>
							<tr>
								<td colspan="4">조회된 리스트가 없습니다.</td>
							</tr>
							<%
								} else {
							%>
							<%
								for (Service s : list) {
							%>
							<tr>
								<td><%=s.getsNum()%></td>
								<td><a href="<%=request.getContextPath()%>/serdetailman.st?snum=<%=s.getsNum()%>"><%=s.getStitle()%></a></td>
								<td><%=s.getSdate()%></td>
								<td><%=s.getStatus()%></td>

							</tr>
							<%
								}
							%>
							<%
								}
							%>
						</table>
						<div class="pagingArea" align="center">
							<!--  맨 처음으로 (<<) -->
							<a href="<%=contextPath%>/servicemanlist.sl?currentPage=1"
								class="button button-light bgcolor-grey-light button-rounded button-reveal button-small button-3d tright"><i
								class="icon-angle-left"></i><span>처음으로</span></a>

							<!-- 이전 페이지로(<) -->
							<%
								if (currentPage == 1) {
							%>
							<%
								} else {
							%>
							<a
								href="<%=contextPath%>/servicemanlist.sl?currentPage=<%=currentPage - 1%>"
								class="button button-light bgcolor-grey-light button-rounded button-reveal button-small button-3d tright"><i
								class="icon-angle-left"></i><span>이전</span></a>
							<%
								}
							%>
							<%
								if (currentPage == maxPage) {
							%>
							<%
								} else {
							%>
							<a
								href="<%=contextPath%>/servicemanlist.sl?currentPage=<%=currentPage + 1%>"
								class="button button-light bgcolor-grey-light button-rounded button-reveal button-small button-3d tright"><i
								class="icon-angle-right"></i><span>다음</span></a>
							<%
								}
							%>
							<a href="<%=contextPath%>/servicemanlist.sl?currentPage=<%=maxPage%>"
								class="button button-light bgcolor-grey-light button-rounded button-reveal button-small button-3d tright"><i
								class="icon-angle-right"></i><span>끝으로</span></a>
						</div>
					</div>
				</div>
			</div>




		</section>
		<!-- #content end -->

	</div>
	<!-- #wrapper end -->

	<!-- Go To Top
    ============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- Footer Scripts
    ============================================= -->
	<script type="text/javascript" src="js/functions.js"></script>

</body>
</html>