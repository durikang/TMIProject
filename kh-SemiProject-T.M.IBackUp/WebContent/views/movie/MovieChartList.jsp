<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, movie.model.vo.*"%>
<%
 	/* ArrayList<Movie> mlist = (ArrayList<Movie>)request.getAttribute("clist"); */
	//ArrayList<Attachment> flist = (ArrayList<Attachment>)request.getAttribute("flist");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link href="<%=request.getContextPath() %>/resources/css/MovieChartListViewForm.css" rel="stylesheet">
  	
<style>

</style>
</head>
<body>
<header class="navbar">
	<%@include file ="../common/menubar.jsp" %>
</header>
<div class="container">
<!-- movie - tab-list  -->
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
         <!-- qwe 영역 -->
        <div class="tab-pane fade show active" id="qwe">
            <div class="row movie-list" >
                <div class="col-8">
                <!-- 영화 리스트 -->
                    <hr>
                <div class="card">
                    <div class="row no-gutters">
                        <div class="col-4">
                            <img src="<%=imgPath %>/movie/TheTerminator2.png" alt="" class="card-img main-movie-img" />
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
                
                <!-- next movie area -->
                       

                </div>
                <!-- 영화 리스트 end -->
                <div class="col-4 float-right">
                <h4 align="center">연령별 예매 순위</h4>
                <!-- movie kind -rank - tab - list  -->
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#20s" onclick="replay(50);">20대</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#30s">30대</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#40s">40대</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#50s">50대</a>
                    </li>
                </ul>

                <!-- tab-20,30,40,50대  choice tab end  -->
                   
                    <div class="tab-content">
                        <!-- 20대 탭 -->
                        <div class="tab-pane fade show active" id="20s">
                            <!-- 예매율 start -->
                            <!-- collapsible start -->
                            <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-header" id="headingOne">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link small-movie-title" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" onclick="replay();">
                                            1.터미네이터2 3D
                                        </button>
                                    </h2>
                                </div>
                                <div class="collapse show" id="collapseOne" aria-labelledby="headingOne" data-parent="#accordionExample">
                                    <div class="card card-body">
                                        <div class="small-movie">
                                            <div class="card">
                                                <div class="row no-gutters">
                                                <div class="col-4 mpost">
                                                    <img src="images/tower1.PNG" alt="" class="card-img small-card-img" />
                                                </div>
                                                <div class="col-8">
                                                    <div class="card-body small-card-body">
                                                        <!-- 예매율  -->
                                                        <canvas id="myChart1"></canvas>
                                                        <!-- 예매율 end -->
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- collapsible end -->
                            <div class="card">
                                <div class="card-header" id="headingTwo">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link small-movie-title" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                            2.조커 3D
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card card-body">
                                        <div class="small-movie">
                                            <div class="card">
                                                <div class="row no-gutters">
                                                <div class="col-4 mpost">
                                                    <img src="images/tower1.PNG" alt="" class="card-img small-card-img" />
                                                </div>
                                                <div class="col-8">
                                                    <div class="card-body small-card-body">
                                                        <!-- 예매율  -->
                                                        <div class="pie-chart pie-chart1"><span class="Ticketing">터미네이터 : 25%</span></div>
                                                        <!-- 예매율 end -->
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                    <!-- 예매율 end -->
                    <!-- 30대 탭 -->
                    <div class="tab-pane fade show active" id="30s">

                    </div>
                    <!-- 40대 탭 -->
                    <div class="tab-pane fade show active" id="40s">
                        
                    </div>
                    <!-- 50대 탭 -->
                    <div class="tab-pane fade show active" id="50s">
                        
                    </div>
                </div>
                </div>         
            </div>     
        </div>   
        <!-- qwe영역 끝 -->
        
        <!-- asd 영역 시작 -->
        <div class="tab-pane fade" id="asd">
        </div><!--asd 영역 끝-->

        <!-- zxc 영역 시작 -->
        <div class="tab-pane fade" id="zxc">
        </div>
        <!-- zxc영역 끝 -->

    </div>
<hr>
<!-- Prequel -->
<div class="container">
        <h4 align="center">프리퀄</h4><br>
    <div class="row">
        <div class="col-4">
            <p>Card</p>
            <div class="card">
                <div class="card-header">
                My Card
                </div>
                    <!-- <img src="images/city1.png" alt="" class="card-img"/> -->
                    <iframe class="card-img" src="https://www.youtube.com/embed/x60mB0zXZ38" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="card-body">
                <h5 class="card-title">Lorem</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas sed sem ut malesuada.</p>
                <a href="#" class="btn btn-primary">More</a>
                </div>
            </div>    
        </div>
        <div class="col-4">
            <p>Card</p>
            <div class="card">
                <div class="card-header">
                My Card
                </div>
                    <!-- <img src="images/city1.png" alt="" /> -->
                    <iframe class="card-img" src="https://www.youtube.com/embed/sXjwpMDrMnY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="card-body">
                <h5 class="card-title">Lorem</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas sed sem ut malesuada.</p>
                <a href="#" class="btn btn-primary">More</a>
                </div>
            </div>    
        </div>
        <div class="col-4">
            <p>Card</p>
            <div class="card">
                <div class="card-header">
                My Card
                </div>
                    <!-- <img src="images/city1.png" alt="" /> -->
                    <iframe class="card-img" src="https://www.youtube.com/embed/0uC2FaZ4h1I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="card-body">
                <h5 class="card-title">Lorem</h5>
                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam egestas sed sem ut malesuada.</p>
                <a href="#" class="btn btn-primary">More</a>
                </div>
            </div>    
        </div>
    </div>
</div>

<hr>
<!-- Prequel end -->
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

</div>



<script>
    $(function(){
        $(".thumb-list").click(function(){
            var bId = $(this).children().eq(0).val();
            location.href="<%= request.getContextPath()%>/detail.mo?mCode=" + mCode;
        });
    });
      //원형 그래프
      data = { 
          datasets: [
            { 
              backgroundColor: ['red','blue'],
              data: [1, 1]
            }
           ],
            // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남 
            labels: ['여자','남자']
        }; 
            // 가운데 구멍이 없는 파이형 차트 
        var ctx1 = document.getElementById("myChart1"); 
        var myPieChart = new Chart(ctx1, 
            { 
            type: 'pie',
            data: data,
            options: {
                
            }
            }
        );


</script>




	<%@include file="../common/footer.jsp" %>

            
          
</body>
</html>