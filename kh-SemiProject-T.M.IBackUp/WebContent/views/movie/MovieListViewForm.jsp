<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, movie.model.vo.*"%>
<%
 	ArrayList<Movie> mlist = (ArrayList<Movie>)request.getAttribute("blist");
	//ArrayList<Attachment> flist = (ArrayList<Attachment>)request.getAttribute("flist");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  
    <style>
    .container {
        width:1000px;
        height:700px;
        color:black;
        margin-top:50px;
    }
    
    .thumbnailArea {
        width:760px;
        height:550px;
        margin:auto;
    }
    
    .thumb-list {
        width:250px;
        border:1px solid black;
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

    .movie-Img{
        width:140px;
        height:200px;

    }
    .movie-list{
        top:10%;
    }
    .point{
        font-weight: 900;
    }
    .movie-info{
        list-style: none;
    }
        
</style>
</head>
<body>
<%@include file ="../common/menubar.jsp" %>
<br>
<br>
<br>

<div class="container">
<!--  -->

    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#qwe">예매율</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#asd">평점</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#zxc">개봉일</a>
        </li>
    </ul>
<!--  -->
    <br>
    <div class="tab-content">
        <div class="tab-pane fade show active" id="qwe">
            <!-- qwe 영역 -->
            <div class="row movie-list" >
                <div class="col-8">
                <div class="card">
                    <div class="row no-gutters">
                    <div class="col-4">
                        <img src="images/tower1.PNG"class="card-img movie-Img" />
                    </div>
                    <div class="col-8">
                        <div class="card-body">
                            <h4>터미네이터 2 3D</h4>
                            <p class="card-text">예매율 : <span class="point">7.2</span> &nbsp;|&nbsp; <span class="point">평점 : 5.0</span></p>
                            <p class="card-text">
                                <ul class="movie-info">
                                    <li><span>기본정보개봉 : </span> 2019.10.24 액션,SF미국 136분</li>
                                    <li><span>감독제임스 : </span> 카메론</li>
                                    <li><span>배우 : </span> 아놀드 슈왈제네거, 린다 해밀턴, 에드워드 펄롱, 로버트 패트릭</li>
                                </ul>
                            </p>
                        </div>
                    </div>
                    </div>
                </div>
                <hr>
                <div class="card">
                    <div class="row no-gutters">
                    <div class="col-4">
                        <img src="images/tower1.PNG"class="card-img movie-Img" />
                    </div>
                    <div class="col-8">
                        <div class="card-body">
                            <h4>터미네이터 2 3D</h4>
                            <p class="card-text">예매율 : <span class="point">7.2</span> &nbsp;|&nbsp; <span class="point">평점 : 5.0</span></p>
                            <p class="card-text">
                                <ul class="movie-info">
                                    <li><span>기본정보개봉:</span> 2019.10.24 액션,SF미국136분</li>
                                    <li><span>감독제임스:</span> 카메론</li>
                                    <li><span>배우:</span> 아놀드 슈왈제네거, 린다 해밀턴, 에드워드 펄롱, 로버트 패트릭</li>
                                </ul>
                            </p>
                        </div>
                    </div>
                    </div>
                </div>
                </div>
            </div>
            <!-- qwe영역 끝 -->
        </div>
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