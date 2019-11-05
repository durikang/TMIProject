<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, movie.model.vo.*, attachment.model.vo.*"%>
<%
	Movie movie = (Movie) request.getAttribute("movie");
	ArrayList<Attachment> ImgList = (ArrayList<Attachment>) request.getAttribute("fileList");
	ArrayList<Preview> previewList = (ArrayList<Preview>) request.getAttribute("previewList");
	Attachment titleImg = ImgList.get(0);
	
	ArrayList<Reply> mrlist = (ArrayList<Reply>)request.getAttribute("mrlist");

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<!-- 차트 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<!-- Icon API -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/font-icons.css" type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
<title>Insert title here</title>
<style>
.main-title-bg {
	background-image:
		url("<%=request.getContextPath()%>/resources/MovieImg_upload/<%=ImgList.get(1).getChangeName()%>");
	background-size: cover;
}

#small-title {
	font-size: 12px;
}

.jumbotron h1, span, h6 {
	color: white;
}

.img-size {
	height: 480px;
}
</style>
</head>
<body>
	<!-- menu  -->

	<%@include file="../common/menubar.jsp"%>
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
				<h1><%=movie.getMtitle()%><span id="small-title"><%=movie.getMtitleEng()%></span>
				</h1>
				<h6><%=movie.getMtitlePlot()%></h6>
			</div>
		</div>

		<div class="container">
			<!-- Example row of columns -->

			<div class="container">
				<div class="row">

					<div class="col-12">
						<p>영화</p>
						<div class="card">
							<div class="row no-gutters">
								<div class="col-4">
									<img
										src="<%=request.getContextPath()%>/resources/MovieImg_upload/<%=titleImg.getChangeName()%>"
										alt="" class="card-img movie-poster">
								</div>
								<div class="col-8">
									<div class="card-body">
										<h4><%=movie.getMtitle()%><span id="small-title"><%=movie.getMtitleEng()%><strong>예매율
													:</strong></span>
										</h4>

										<table class="table table-bordered">
											<tbody>
												<tr>
													<th scope="row">감독</th>
													<td><%=movie.getmDirector()%></td>
												</tr>
												<tr>
													<th scope="row">배우</th>
													<td><%=movie.getmActor()%></td>
												</tr>
												<tr>
													<th scope="row">장르</th>
													<td><%=movie.getKinds()%></td>
												</tr>
												<tr>
													<th scope="row">기본</th>
													<td colspan="2"><%=movie.getInfo()%></td>
												</tr>
												<tr>
													<th scope="row">개봉</th>
													<td colspan="2"><%=movie.getRelease()%></td>
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
<%=movie.getPlot()%>
<br> 
  <strong><%=movie.getMtitlePlot()%></strong>

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
								<p class="card-text">
									남자 : 50% <br> 여자 : 50%
								</p>
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
								<p class="card-text">
									감독연출 : 65 스토리 : 59 영상미 : 90<br>배우연기 : 81 OST : 59
								</p>
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
								<p class="card-text">20대 : 12 | 30대 : 19 | 40대 : 3 | 50대 : 5</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<script>
				//원형 그래프
				data = {
					datasets : [ {
						backgroundColor : [ 'red', 'blue' ],
						data : [ 1, 1 ]
					} ],
					// 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남 
					labels : [ '여자', '남자' ]
				};
				// 가운데 구멍이 없는 파이형 차트 
				var ctx1 = document.getElementById("myChart1");
				var myPieChart = new Chart(ctx1, {
					type : 'pie',
					data : data,
					options : {

					}
				});
				// 그물 그래프
				//radar
				var ctxR = document.getElementById("radarChart").getContext(
						'2d');
				var myRadarChart = new Chart(ctxR, {
					type : 'radar',
					data : {
						labels : [ "감독연출", "스토리", "영상미", "배우연기", "OST" ],
						datasets : [ {
							label : "#영화 제목#",
							data : [ 65, 59, 90, 81, 56 ],
							backgroundColor : [ 'rgba(105, 0, 132, .2)', ],
							borderColor : [ 'rgba(200, 99, 132, .7)', ],
							borderWidth : 2

						} ]
					},
					options : {
						responsive : true
					}
				});
				//bar
				var ctxB = document.getElementById("barChart").getContext('2d');
				var myBarChart = new Chart(ctxB, {
					type : 'bar',
					data : {
						labels : [ "20대", "30대", "40대", "50대 이상" ],
						datasets : [ {
							label : '#영화 제목#',
							data : [ 12, 19, 3, 5 ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)' ],
							borderColor : [ 'rgba(255,99,132,1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});
			</script>

			<!-- Reply Form {s} -->
			<hr>

			<div class="alert alert-primary">
				<h6>
					스틸컷
					<%=ImgList.size()%>
					건 <a href="#"><i class="icon-line-circle-plus stretched-link"></i></a>
				</h6>
			</div>
			<!-- 예고편 모음 게시판으로 -->
			<hr>
			<!-- 스틸컷 슬라이더  -->
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<%
						for (int i = 0; i < ImgList.size(); i++) {
					%>
					<li data-target="#carouselExampleIndicators" data-slide-to="i"></li>
					<%
						}
					%>
				</ol>
				<div class="container">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100 img-size"
								src="<%=request.getContextPath()%>/resources/MovieImg_upload/<%=ImgList.get(0).getChangeName()%>">
							<!-- active 해결해야 함 2019-11-03 08:51  -->
						</div>
						<%
							for (int i = 1; i < ImgList.size(); i++) {
						%>
						<div class="carousel-item">
							<img class="d-block w-100 img-size"
								src="<%=request.getContextPath()%>/resources/MovieImg_upload/<%=ImgList.get(i).getChangeName()%>">
						</div>
						<%
							}
						%>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>

			<!-- 스틸컷 슬라이더 END  -->
			<hr>
			<div class="alert alert-primary">
				<h6>
					예고편
					<%=previewList.size()%>
					건 <a href="#"><i class="icon-line-circle-plus stretched-link"></i></a>
				</h6>
			</div>
			<!-- 예고편 모음 게시판으로 -->
			<hr>

			<!-- 예고편 start -->
			<div class="row justify-content-lg-between text-center no-gutters">
				<div class="container">
					<div id="carouselExampleControls" class="carousel slide"
						data-ride="carousel">

						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="embed-responsive embed-responsive-16by9">
									<%=previewList.get(0).getYurl()%>
								</div>
							</div>
							<%
								if (previewList.size() > 1) {
									for (int i = 1; i < previewList.size(); i++) {
							%>
							<div class="carousel-item">
								<div class="embed-responsive embed-responsive-16by9">
									<%=previewList.get(i).getYurl()%>
								</div>
							</div>
							<%
								}
								}
							%>

						</div>

						<a class="carousel-control-prev" href="#carouselExampleControls"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#carouselExampleControls"
							role="button" data-slide="next"> <span
							class="carousel-control-next-icon" aria-hidden="true"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
			<!-- 예고편 end -->
			<hr>

			<div class="my-3 p-3 bg-white rounded shadow-sm replayArea"
				style="padding-top: 10px">
				<div class="row">
					<div class="col-sm-10">
						<textarea path="content" class="form-control"
							rows="3" placeholder="댓글을 입력해 주세요" id="replyContent"></textarea>
					</div>

					<div class="col-sm-2">
						<button type="button" class="btn btn-sm btn-primary" id="addReply"
							style="width: 100%; margin-top: 10px">입력</button>
					</div>
				</div>
				<!-- Reply Form {e} -->

				<!-- Reply List {s}-->

				<div class="my-3 p-3 bg-white rounded shadow-sm"
					style="padding-top: 10px">
					<h6 class="border-bottom pb-2 mb-0">
						댓글<i class="icon-reply"></i>
					</h6>
					<div id="replyList">
						<table id="replySelectTable" border="1" align="center" class="table table-sm">
					 		<% if (mrlist != null) { %>
							<%for (Reply r : mrlist) { %>
							<tr>
								<td width="100px"><%=r.getRwriter()%></td>
								<td width="400px"><%=r.getRcontent()%></td>
								<td width="200px"><%=r.getCreate_date()%></td>
							</tr>
							<% } %>
							<%} %> 
						</table>
					</div>
				</div>

				<!-- Reply List {e}-->
			</div>
			<script>
				$(function() {
					$("#addReply").click(
							function() {
								var writer = "강두리";
								var mcode =<%=movie.getMcode()%>;
								var content = $("#replyContent").val();
								
								$.ajax({
									url : "insertMovieReply.mo",
									type : "post",
									dataType : "json",
									data : {
										writer : writer,
										content : content,
										mcode : mcode
									},
									success : function(data) {
										console.log(data);

										$replyTable = $("#replySelectTable");
										$replyTable.html("");

										// 새로 받아온 갱신 된 댓글 리스트를 반복문을 통해 table에 추가
										for ( var key in data) {

											var $tr = $("<tr>");
											var $writerTd = $("<td>").text(data[key].rWriter).css("width", "100px");
											var $contentTd = $("<td>").text(data[key].rContent).css("width", "400px");
											var $dateTd = $("<td>").text(data[key].createDate).css("width", "200px");

											$tr.append($writerTd);
											$tr.append($contentTd);
											$tr.append($dateTd);

											$replyTable.append($tr);
										}

										// 댓글 작성 부분 리셋
										$("#replyContent").val("");

									},
									error : function() {
										console.log("통신 실패!");
									}
								});
							});
				});
			</script>


		</div>
		<!-- /container -->
	</div>

	<!-- 메뉴바 -->


	<!-- 메뉴바 end -->


	<!-- Content -->



	<!-- Content End -->



	<!-- footbar  -->
	<%@include file="../common/footer.jsp"%>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/functions.js"></script>

</body>
</html>