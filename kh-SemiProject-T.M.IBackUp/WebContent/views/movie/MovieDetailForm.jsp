<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  <!-- 차트 링크 --> 
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
  <!-- Icon API -->
  <link rel="stylesheet" href="css/style.css" type="text/css" />
  <link rel="stylesheet" href="css/font-icons.css" type="text/css" />
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="crossorigin="anonymous"></script>
<title>Insert title here</title>
  <style>
    .main-title-bg{
      background-image: url("<%=request.getContextPath()%>/resources/img/movie/kimjiyoungMainPoster.png");
      background-size: cover;
    }
    #small-title{
        font-size: 12px;
    }
    .preview .row-3 {
    margin: 80px 0px 80px 0px;
    }
    .preview img {
      margin: 10px 10px 10px 10px;
      width:260px;
      height:140px;
      
      -webkit-transform: scale(1, 1);
      -ms-transform: scale(1, 1);
      transform: scale(1, 1);
      transition-duration: 0.3s;
      -webkit-transition-duration: 0.3s; /* Safari */
    }

    .preview img:hover {
      cursor: pointer;
      -webkit-transform: scale(2, 2);
      -ms-transform: scale(2, 2);
      transform: scale(2, 2);
      transition-duration: 0.3s;
      -webkit-transition-duration: 0.3s; /* Safari */
      box-shadow: 10px 10px 5px #888888;
      z-index: 1;
    }
    </style>
</head>
<body>
		<!-- menu  -->
	
	<%@include file ="../common/menubar.jsp" %>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<!-- menu End  -->
		
    <div class="container">
         <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron main-title-bg">
      <div class="container ">
        <h1>82년생 김지영 <span id="small-title">KIM JI-YOUNG, BORN 1982</span></h1>
        <p>모두가 알지만 <br>아무도 몰랐던 <br> 당신과 나의 이야기</p>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->

    <div class="container">
    <div class="row">

        <div class="col-8">
        <p>영화</p>
        <div class="card">
            <div class="row no-gutters">
            <div class="col-4">
              <img src="<%=imgPath %>/movie/kimjiyoungPoster.png" alt="" class="card-img movie-poster">
            </div>
            <div class="col-8">
                <div class="card-body">
                  <h4>82년생 김지영 <span id="small-title">KIM JI-YOUNG, BORN 1982 <strong>예매율 :</strong></span></h4>

                  <table class="table table-bordered">
                      <tbody>
                        <tr>
                          <th scope="row">감독</th>
                          <td>Mark</td>
                        </tr>
                        <tr>
                          <th scope="row">배우</th>
                          <td>Jacob</td>
                        </tr>
                        <tr>
                          <th scope="row">장르</th>
                          <td>Jacob</td>
                        </tr>
                        <tr>
                          <th scope="row">기본</th>
                          <td colspan="2">Larry the Bird</td>
                        </tr>
                        <tr>
                          <th scope="row">개봉</th>
                          <td colspan="2">Larry the Bird</td>
                        </tr>
                      </tbody>
                    </table>
                </div>
                <!-- card-body end -->
            </div>
            
            </div>
        </div>
        </div>
    </div>
    </div>
    </div>
    <hr>
    <div class="container">
      <pre class="text-justify">
  1982년 봄에 태어나
  누군가의 딸이자 아내, 동료이자 엄마로
  2019년 오늘을 살아가는 ‘지영’(정유미).
  때론 어딘가 갇힌 듯 답답하기도 하지만
  남편 ‘대현’(공유)과 사랑스러운 딸,
  그리고 자주 만나지 못해도 항상 든든한 가족들이 ‘지영’에겐 큰 힘이다.
  
  하지만 언젠가부터 마치 다른 사람이 된 것처럼 말하는 ‘지영’.
  ‘대현’은 아내가 상처 입을까 두려워 그 사실을 털어놓지 못하고
  ‘지영’은 이런 ‘대현’에게 언제나 “괜찮다”라며 웃어 보이기만 하는데…
  
  <strong>모두가 알지만 아무도 몰랐던
      당신과 나의 이야기</strong>

      </pre>
  
      <div class="container">
          <div class="row">
          <div class="col-4">
            <p align="center">성별 예매 분포</p>
            <div class="card">
              <!-- 성별 분포 -->
                <canvas id="myChart1"></canvas> 
              <!-- 성별 분포 끝 -->
              <div class="card-body">
              <p class="card-text">남자 : 50% <br> 여자 : 50%</p>
              </div>
            </div>
          </div>
          <div class="col-4">
            <p align="center">매력포인트</p>
            <div class="card">
              <!-- 성별 분포 -->
                <canvas id="radarChart"></canvas>
              <!-- 성별 분포 끝 -->
              <div class="card-body">
              <p class="card-text">감독연출 : 65 스토리 : 59 영상미 : 90<br>배우연기 : 81 OST : 59 </p>
              </div>
            </div>
          </div>
          <div class="col-4">
            <p align="center">연령별 예매 분포</p>
            <div class="card">
              <!-- 성별 분포 -->
                <canvas id="barChart"></canvas>
              <!-- 성별 분포 끝 -->
              <div class="card-body">
              <p class="card-text">20대 : 12 | 30대 : 19 | 40대 : 3 | 50대 :  5</p>
              </div>
            </div>
          </div>
      </div>
    </div>
    <script>
      //원형 그래프
        data = { 
          datasets: [
            { 
              backgroundColor: ['red','blue'],
              data: [1, 1]
            }
           ],
            // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남 
            labels: ['여자','남자']}; 
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
            // 그물 그래프
            //radar
              var ctxR = document.getElementById("radarChart").getContext('2d');
              var myRadarChart = new Chart(ctxR, {
                  type: 'radar',
                  data: {
                  labels: ["감독연출", "스토리", "영상미", "배우연기", "OST"],
                  datasets: [{
                  label: "#영화 제목#",
                  data: [65, 59, 90, 81, 56],
                  backgroundColor: [
                  'rgba(105, 0, 132, .2)',
                  ],
                  borderColor: [
                  'rgba(200, 99, 132, .7)',
                  ],
                  borderWidth: 2
                    
                  }]
                  },options: {
                    responsive: true
                  }
              });
              //bar
                var ctxB = document.getElementById("barChart").getContext('2d');
                var myBarChart = new Chart(ctxB, {
                  type: 'bar',
                  data: {
                  labels: ["20대", "30대", "40대", "50대 이상"],
                  datasets: [{
                  label: '#영화 제목#',
                  data: [12, 19, 3, 5],
                  backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                  ],
                  borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                  ],
                  borderWidth: 1
                  }]
                  },
                  options: {
                  scales: {
                  yAxes: [{
                  ticks: {
                  beginAtZero: true
                  }
                  }]
                  }
                  }
                });
     </script> 

  <!-- Reply Form {s} -->
    <hr>

    <div class="alert alert-primary"><h6>스틸컷 N 건 <a href="#"><i class="icon-line-circle-plus stretched-link" ></i></a></h6></div>  
                                                                        <!-- 예고편 모음 게시판으로 -->
    <hr>
     <div class="preview" >
        <div class="row-3" align="center">
          <img src="/test/images/city1.PNG" alt="..." class="img-rounded">
          <img src="/test/images/tower1.PNG" alt="..." class="img-rounded">
          <img src="/test/images/city1.PNG" alt="..." class="img-rounded">
        </div>

     </div>

    <hr>
    <div class="alert alert-primary"><h6>예고편 N 건 <a href="#"><i class="icon-line-circle-plus stretched-link" ></i></a></h6></div>  
                                                                        <!-- 예고편 모음 게시판으로 -->
    <hr>
     <div class="preview" >
        <div class="row-3" align="center">
          <div class="embed-responsive embed-responsive-16by9">
            <!-- <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/zpOULjyy-n8?rel=0" allowfullscreen></iframe> -->
            <iframe width="900" height="506" src="https://www.youtube.com/embed/Gz0ZeY1U4vY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
        </div>
     </div>

    <hr>
  <div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
    <form name="form" id="form" role="form" modelAttribute="replyVO" method="post">
    <div class="row">
      <div class="col-sm-10">
        <textarea path="content" id="content" class="form-control" rows="3" placeholder="댓글을 입력해 주세요"></textarea>
      </div>

      <div class="col-sm-2">
        <button type="button" class="btn btn-sm btn-primary" id="btnReplySave" style="width: 100%; margin-top: 10px">입력</button>
      </div>
    </div>
    </form>
  </div>

  <!-- Reply Form {e} -->

  <!-- Reply List {s}-->

  <div class="my-3 p-3 bg-white rounded shadow-sm" style="padding-top: 10px">
    <h6 class="border-bottom pb-2 mb-0">댓글<i class="icon-reply"></i></h6>
    <div id="replyList"></div>
  </div> 

  <!-- Reply List {e}-->    
  </div> <!-- /container -->
  </div>
  
  <!-- 메뉴바 -->


  <!-- 메뉴바 end -->

   
	<!-- Content -->
	
	
	
	<!-- Content End -->
	
	
	
	<!-- footbar  -->
<%@include file ="../common/footer.jsp" %>
 <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/functions.js"></script>
	
</body>
</html>