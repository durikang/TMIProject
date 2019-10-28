<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Insert title here</title>
    <style>
        .snack-content{
            margin-left: 10%;
            margin-right: 10%;
        }

        #snack-nav-wrap{
        background:white;
		width:100%;
		height:30%;
        border-block-end: 1px solid black;
        border-block-start:1px solid black; 
        }
        
        
        .sanck-nav{
        width:100%;
        }
        
        #snack-nav1{
        background:white;
		color:black;
		text-align:center;
        vertical-align: middle;
		width:150px;
        height: 30px;
		margin-top:5px;
		display:inline-block;
        padding-left: 115px;

        }
        a{
        color:black;
        text-decoration: white;    
        }
        #snack-nav1:hover a{
            color: orange;
        }
        #sneck-prd-li{
            list-style: none;
            width: 20%;
            display: inline-block;
            margin: 6%;
            margin-bottom: 0;
            margin-top: 0;

        }
        #price{
            margin-top:0;
            margin-bottom: 0;
        }
        #snack-main-image{
        	width:100%;
        }
        
    </style>
</head>
<body>
<%@include file ="../common/menubar.jsp" %>
	<br><br><br><br>
	<div id="snack-main-image"><img src="../../resources/images/movie/스낵3.jpg"></div>
    <div class="snack-content">
    <nav>
        <div id="snack-nav-wrap">
            <ul class="snack-nav">
                <li id="snack-nav1"><a href="#">베스트상품</a></li>
                <li id="snack-nav1"><a href="#">팝콘</a></li>
                <!--<패키지-cgv>-->
                <!--<콤보-cgv>-->
                <li id="snack-nav1"><a href="#">음료</a></li>
                <li id="snack-nav1"><a href="#">스낵</a></li>
            </ul>
        </div>
    </nav>
    <div id="sneck-prd">
        <li id="sneck-prd-li">
            <img src="../../resources/images/snackimage/1.jpg" height="200px">
            <dl><dt id="product-name"><strong>상품1</strong></dt>
            <dt id="price">가격: 10000</dt></dl>
        </li>
        <li id="sneck-prd-li">
            <img src="../../resources/images/snackimage/1.jpg" height="200px">
            <dl><dt id="product-name"><strong>상품1</strong></dt>
            <dt id="price">가격: 10000</dt></dl>
        </li>
        <li id="sneck-prd-li">
            <img src="../../resources/images/snackimage/1.jpg" height="200px">
            <dl><dt id="product-name"><strong>상품1</strong></dt>
            <dt id="price">가격: 10000</dt></dl>
        </li>
        <li id="sneck-prd-li">
            <img src="../../resources/images/snackimage/1.jpg" height="200px">
            <dl><dt id="product-name"><strong>상품1</strong></dt>
            <dt id="price">가격: 10000</dt></dl>
        </li>

    </div>
    </div>

    
</body>
</html>
