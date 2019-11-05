<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>
	<meta name="description" content="Bootstrap 3 Website Template" />

    <!-- Stylesheets
    ============================================= -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
	<link href="http://fonts.googleapis.com/css?family=PT+Sans:300,400,500,600,700" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
    <link rel="stylesheet" href="css/style.css" type="text/css" />
    <link rel="stylesheet" href="css/dark.css" type="text/css" />
    <link rel="stylesheet" href="css/font-icons.css" type="text/css" />
    <link rel="stylesheet" href="css/animate.css" type="text/css" />
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

    <link rel="stylesheet" href="css/responsive.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>

    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="include/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="include/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="include/rs-plugin/css/settings.css" media="screen" />

	<title>Home | Chocolat</title>

    <style>
        #mleft{
            text-align: left;
        }
        #mright{
            text-align: right;
        }
        #movbarboard{
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }
        .movbtn{
            margin: 3px;
        }
        #movbar{
            width: 50%;
            text-align: center;
            float: left;
        }
        td{
            height: 50px;
            text-align: center;
            border-bottom:  1px solid gray;
        }
        th{
          text-align: center;
          border-bottom:  2px solid gray;
        }
        #table{
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
			font-weight:bold;
		}
		.submenu {
	position: fixed;
	width: 40px;
	height: 50%;
	font-size: 20px;
	line-height: 36px;
	text-align: center;
	color: #FFF;
	top: auto;
	left: auto;
	right: 30px;
	bottom: 50px;
	cursor: pointer;
	border-radius: 2px;
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

                    <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

                    <!-- Logo
                    ============================================= -->
                    <div id="logo">
                        <a href="index.html" class="standard-logo" data-dark-logo="images/logo/logo-dark.png"><img src="images/logo/logo.png" alt="Chocolat Logo"></a>
                        <a href="index.html" class="retina-logo" data-dark-logo="images/logo/logo-dark-large.png"><img src="images/logo/logo-large.png" alt="Chocolat Logo"></a>                    </div><!-- #logo end -->

                    <!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">

                      <ul class="">
                            <li><a href="<%=request.getContextPath()%>/manmanage.mc"><div>회원관리</div></a>
                              </li>
                            <li><a href="<%=request.getContextPath()%>/bomanagelist.bl"><div>게시글관리</div></a>
                            </li>
                            <li><a href="<%=request.getContextPath()%>/servicemanlist.sl"><div>고객센터</div></a>
                            </li>
                            <li><a href="<%=request.getContextPath()%>/qnalist.ql"><div>문의관리</div></a>
                            </li>
                           <li class="current"><a href="moneyManage.jsp"><div>매출관리</div></a>
                            </li>
                            </ul>
                    </nav><!-- #primary-menu end -->
                </div>

          </div>

        </header><!-- #header end -->


        <!-- Content
        ============================================= -->
        <section id="content">
            <div class="content-wrap">
			<div class="submenu">
					 <a href="#" class="btn btn-default btn-sm fright">주별 매출</a><br>
					<br><a href="#" class="btn btn-default btn-sm fright">월별매출</a><br>
					<br><a href="#" class="btn btn-default btn-sm fright">연별매출</a><br>
					<br><a href="eventSetting.jsp" class="btn btn-default btn-sm fright">이벤트 설정</a>
					</div>
                <!-- Promo -->
                <div class="promo promo-light promo-full header-stick nobottommargin">
                    <div class="container clearfix">
                      <h3>관리자 페이지입니다.</h3>
                      <span>현재 페이지에서는 매출 관리를 진행할 예정입니다.</span>
                   </div>
       	  	  	</div><!-- End Promo -->
                <div class="content-wrap">
		                <br>
		                    <div class="tableArea">
			                    <table id="table">
				                           <tr>
					                                <th width=50%>범례</th>
					                                <th width=50%>매출량</th>
                                           </tr>
                                           <script language="javascript">
                                                for(i=0; i<=10; i++){
                                                    document.write("<tr>");
                                                        document.write("<td width=50%>날짜</td>");
                                                        document.write("<td width=50%>금액</td>");
                                                    document.write("</tr>");
                                                }
                                            </script>
                                </table>
                                <div id="movbarboard">
                                <div id="movbar" width=30% float: left;>
                                    <div id="mleft">
                                       <a href="#" class="button button-light bgcolor-grey-light button-rounded button-reveal button-small button-3d tright"><i class="icon-angle-left"></i><span>이전</span></a>
                                    </div>
                                </div>
                                <div id="movbar" width=30% float: left;>
                                    <div id="mright">
                                        <a href="#" class="button button-light bgcolor-grey-light button-rounded button-reveal button-small button-3d tright"><i class="icon-angle-right"></i><span>다음</span></a>
                                    </div>
                                </div>
                            </div>
                          </div>
                 </div>

        </section><!-- #content end -->

    </div><!-- #wrapper end -->

    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="js/functions.js"></script>

</body>
</html>
