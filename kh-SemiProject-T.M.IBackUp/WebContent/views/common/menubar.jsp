<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="Bootstrap 3 Website Template" />

        
        <style>
            
#primary-menu {
    float: right;
    height: 100px;
   
}

#header.full-header #primary-menu > ul {
    float: left;
    padding-right: 15px;
    margin-right: 15px;
    border-right: none;
}

#header.transparent-header.full-header #primary-menu > ul { border-right-color:none; }

#primary-menu-trigger,
#page-submenu-trigger {
    opacity: 0;
    pointer-events: none;
    cursor: pointer;
    font-size: 14px;
    position: absolute;
    top: 50%;
    margin-top: -25px;
    width: 50px;
    height: 50px;
    line-height: 50px;
    text-align: center;
    -webkit-transition: opacity .3s ease;
    -o-transition: opacity .3s ease;
    transition: opacity .3s ease;
}

#primary-menu ul {
    list-style: none;
    height: 100px;
    margin: 0;
}

#primary-menu > ul { float: left; }

#primary-menu ul li {
    position: relative;
    float: left;
    margin-left: 2px;
}

#primary-menu ul li.mega-menu { position: inherit; }

#primary-menu ul li:first-child { margin-left: 0; }

#primary-menu ul li a {
    display: block;
    height: 100px;
    line-height: 100px;
    padding: 0 15px;
    color: #666;
	font-weight: none;
	text-transform: none;
    font-size: 17px;
    letter-spacing: 0px;
    -webkit-transition: height .4s ease, line-height .4s ease, margin .4s ease, padding .4s ease;
    -o-transition: height .4s ease, line-height .4s ease, margin .4s ease, padding .4s ease;
    transition: height .4s ease, line-height .4s ease, margin .4s ease, padding .4s ease;
	-webkit-transition: all 0.3s ease-out; 
	-moz-transition: all 0.3s ease-out; 
	-o-transition: all 0.3s ease-out;
}

#primary-menu ul li span { display: none; }

#primary-menu ul li i {
    position: relative;
    font-size: 14px !important;
    top: 1px;
    line-height: 99px;
    width: 14px;
    text-align: center;
    margin-right: 6px;
    -webkit-transition: line-height .4s ease;
    -o-transition: line-height .4s ease;
    transition: line-height .4s ease;
}

#primary-menu > ul > li:hover a,
#primary-menu > ul > li.current a { 
	color: #EAAF22; 
	-webkit-transition: all 0.3s ease-out; 
	-moz-transition: all 0.3s ease-out; 
	-o-transition: all 0.3s ease-out;
}

#primary-menu > ul > li.sub-menu > a > div { }

#primary-menu li:hover > ul { display: block; }

#primary-menu ul ul,
#primary-menu ul li .mega-menu-content {
    display: none;
    position: absolute;
    width: 220px;
    background-color: #EEE;
    box-shadow: 0px 6px 22px 5px rgba(0, 0, 0, 0.05);
    border: none;
    border-top: 10px solid #DDD;
    height: auto;
    z-index: 99;
    top: 100px;
    left: 0;
    margin: 0;
}

#primary-menu ul ul ul {
    top: -2px !important;
    left: 218px;
}

#primary-menu ul ul.menu-pos-invert,
#primary-menu ul li .mega-menu-content.menu-pos-invert {
    left: auto;
    right: 0;
}

#primary-menu ul ul ul.menu-pos-invert { right: 218px; }

#primary-menu ul ul li {
    float: none;
    margin: 0;
}

#primary-menu ul ul li:first-child { border-top: 0; }

#primary-menu ul ul a {
    font-size: 13px;
    font-weight: normal;
    height: 42px !important;
    line-height: 42px !important;
    color: #444 !important;
    padding-top: 0 !important;
    padding-bottom: 0 !important;
    border: 0 !important;
    letter-spacing: 0;
    -webkit-transition: all .2s ease-in-out;
    -o-transition: all .2s ease-in-out;
    transition: all .2s ease-in-out;
}

#primary-menu ul ul li:hover > a {
    background-color: #F9F9F9;
    padding-left: 18px;
    color: #EAAF22 !important;
}

#primary-menu ul ul i { line-height: inherit; }

#primary-menu ul ul > li.sub-menu > a,
#primary-menu ul ul > li.sub-menu:hover > a {
    background-image: url("../images/icons/submenu.png");
    background-position: right center;
    background-repeat: no-repeat;
}
#logo {
    position: relative;
    float: left;
    font-size: 36px;
    line-height: 100%;
    margin-right: 40px;
}

#header.full-header #logo {
    padding-right: 30px;
    margin-right: 30px;
    border-right:none;
}

#header.transparent-header.full-header #logo { border-right-color:none; }

#logo a {
    display: block;
    color: #000;
}

#logo img {
    display: block;
    max-width: 100%;
}

#logo a.standard-logo { display: block; }
#logo a.retina-logo { display: none; }
.footer-logo.standard-logo { display: block; }
.footer-logo.retina-logo { display: none; }
.ad-logo { max-width: 200px }
.ad-image { max-width: 700px }
        </style>
</head>
<body>
<header id="header">
                
            <div id="header-wrap">

                <div class="container clearfix">
                        
                    <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

                    <!-- Logo
                    ============================================= -->
                    <div id="logo">
                        <a href="<%= request.getContextPath() %>/views/common/MainHome.jsp" class="standard-logo" data-dark-logo="<%= request.getContextPath() %>resources/images/logo1.png"><img src="<%= request.getContextPath() %>/resources/images/logo1.png"width="30%" alt="Chocolat Logo"></a>
                    </div><!-- #logo end -->

                    <!-- Primary Navigation
                    ============================================= -->
                    <nav id="primary-menu">

                        <ul class="">
                            <li class="current"><a href="#"><div>티켓예매</div></a>
                                <ul>
                                    <li><a href="#"><div>빠른예매</div></a>
                                        <ul>                                
                                    		<li><a href="index.html"><div>영화검색예매</div></a></li>
                                    		<li><a href="index-3.html"><div>날짜검색예매</div></a></li>
                                    		<li><a href="index-5.html"><div>극장검색예매</div></a></li>
                                         </ul>
                                     </li>
                                    <li><a href="#"><div>상영시간표</div></a>
                                        <ul>
                                            <li><a href="index.html"><div>CGV</div></a></li>
                                            <li><a href="index.html"><div>메가박스</div></a></li>
                                            <li><a onclick="goSnacklt();"><div>롯데시네마</div></a></li>
                                        </ul>
                                    </li>                                                                      
                                </ul>
                            </li>
                            <li><a href="#"><div>영화</div></a>
                                <ul>
                                    <li><a href="#"><div>3사 실시간 영화차트</div></a></li>
                                    <li><a href="#"><div>현재 상영 영화정보</div></a>
                                    <li><a href="#"><div>상영예정작</div></a></li>     
                                    <li><a href=""><div>후기</div></a></li>                              
                                    <li><a href="#"><div>보고싶어★(보류)</div></a></li>
                                </ul>
                            </li>
                            <!--<li><a href="#"><div>영화관(보류)</div></a>
                                <ul>
                                    <li><a href="#"><div>우리동네영화관</div></a></li>
                                    <li><a href="#"><div>특별관</div></a>
                                        <ul>
                                            <li><a href=""><div>4DX</div></a></li>
                                            <li><a href=""><div>IMAX</div></a></li>
                                            <li><a href=""><div>ScrennX</div></a></li>
                                            <li><a href=""><div>TempurCinema</div></a></li>
                                            <li><a href=""><div>CharLotte</div></a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>-->
                            <li><a href="#"><div>스낵스토어</div></a>
                                <ul>
                                	<li><a href="events-list.html"><div>CGV</div></a></li>
                                	<li><a href="events-list-parallax.html"><div>메가박스</div></a></li>
                                    <li><a href="events-single.html"><div>롯데시네마</div></a></li>
                                </ul>                            
                            </li>                            
                            <li><a href="#"><div>고객센터</div></a>
                                <ul>
                                	<li><a href="contact-1.html"><div>Q&A</div></a></li>
                                    <li><a href="contact-2.html"><div>자주찾는질문</div></a></li>
                                    <li><a href="contact-2.html"><div>공지사항</div></a></li>
                                </ul>                            
                            </li>
                            <li><a href="#"><div>마이페이지</div></a></li>
                        </ul>
                    </nav><!-- #primary-menu end -->
                </div>

          </div>

	<script>
	   function goSnacklt(){
  			location.href="<%=request.getContextPath()%>/SnackList.sn";
  		}
	</script>
         
        </header><!-- #header end -->

</body>
</html>