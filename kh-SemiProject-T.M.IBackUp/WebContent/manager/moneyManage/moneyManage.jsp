<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*,moneyManage.model.*"%>
<%
	ArrayList<paydate> list = (ArrayList<paydate>)request.getAttribute("pd");
	int a = 0;
	int b = 0;
	int c = 0;
	int d = 0;
	for (paydate s : list){
		int cate = s.getCategory();
		if(cate == 1){
			a = a+s.getMoney();
		}else if(cate == 2){
			b = b+ s.getMoney();
		}else if(cate == 3){
			c = c+ s.getMoney();
		}else{
			d = d + s.getMoney();
		}
	}
	ArrayList<moviecate> mlist = (ArrayList<moviecate>)request.getAttribute("mc");
%>
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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script type="text/javascript">

    // Load Charts and the corechart and barchart packages.
    google.charts.load('current', {'packages':['corechart']});

    // Draw the pie chart and bar chart when Charts is loaded.
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
      var data1 = new google.visualization.DataTable();
      data1.addColumn('string', 'Topping');
      data1.addColumn('number', 'Slices');
      data1.addRows([
        ['6월', 1002],
        ['7월', 1321],
        ['8월', 2003],
        ['9월', 1599],
        ['10월', 399]
      ]);

      var data2 = new google.visualization.DataTable();
      data2.addColumn('string', 'Topping');
      data2.addColumn('number', 'Slices');
      data2.addRows([
        ['1분기', <%= d %>],
        ['2분기', <%= c %>],
        ['3분기', <%= b %>],
        ['4분기', <%= a %>]
      ]);
      var data3 = new google.visualization.DataTable();
      data3.addColumn('string', 'Topping');
      data3.addColumn('number', 'Slices');
      data3.addRows([
    <%  for (moviecate m : mlist) { %>
    	['<%= m.getMoName()%>',<%= m.getNum()%>],
    	 <%}%>
        ['악악악', 2]
      ]);

      var piechart_options = {title:'영화별 예매율',
                     width:400,
                     height:300};
      var piechart = new google.visualization.PieChart(document.getElementById('piechart_div'));
      piechart.draw(data3, piechart_options);

      var barchart_options = {title:'기간별 접속자수',
                     width:400,
                     height:300,
                     legend: 'none'};
      var barchart = new google.visualization.BarChart(document.getElementById('barchart_div'));
      barchart.draw(data1, barchart_options);

      var barchart_options = {title:'분기별 매출',
                     width:400,
                     height:300,
                     legend: 'none'};
      var barchart2 = new google.visualization.BarChart(document.getElementById('barchart_div2'));
      barchart2.draw(data2, barchart_options);
    }
    </script>

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
        .linkbtn{
        width:50%;
        margin-left:auto;
        }
        .chart{
          width: 30%;
          margin: auto;
          float: left;
          text-align:center;
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

                <!-- Promo -->
                <div class="promo promo-light promo-full header-stick nobottommargin">
                    <div class="container clearfix">
                      <h3>관리자 페이지입니다.</h3>
                      <span>현재 페이지에서는 매출 관리를 진행할 예정입니다.</span>
                   </div>
       	  	  	</div><!-- End Promo -->
                <section id="content">
                 <div class="chart" id="barchart_div"></div> <div class="chart" id="barchart_div2"></div> <div class="chart" id="piechart_div"></div>
                 <div class="chart" id="barchart_div_btn"><input type="button" class="linkbtn" id="btn1" value="상세보기" onclick="termRate();"></div>
                 <div class="chart" id="barchart_div_btn"><input type="button" class="linkbtn" id="btn1" value="상세보기"onclick="quaterRate();"></div>
                 <div class="chart" id="barchart_div_btn"><input type="button" class="linkbtn" id="btn1" value="상세보기" onclick="movRate();"></div>
                 
                </section><!-- #content end -->
    </div><!-- #wrapper end -->
	<script>
		function termRate(){
			location.replace("termDetail.jsp");
		}
		function quaterRate(){
			location.replace("quaterDetail.jsp");
		}
		function movRate(){
			location.replace("movDetail.jsp");
		}
	</script>
    <!-- Go To Top
    ============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>
	
    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="js/functions.js"></script>

</body>
</html>
	