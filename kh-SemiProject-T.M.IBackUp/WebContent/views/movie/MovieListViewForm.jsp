<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.table .text {
  position: relative;
}

.table .text span {
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  position: absolute;
  width: 100%;
}

.text:before {
  content: '';
  display: inline-block;
}
</style>
</head>
<body>
	<!-- menu  -->
	<%@include file ="../common/menubar.jsp" %>
	<br><br>
	<!-- menu End  -->
      <div class="container">
        <h1 align="center">영화 List</h1>  
        <hr>
        <div class="container">
          <div class="row">
            <!-- movie -->
            <div class="col-4 float-left">
              <div class="card">
                <img src="<%=imgPath %>/movie/TheTerminator2.png" alt="" class="card-img-top" id="city1" />
                <div class="card-body">
                <h5 class="card-title">터미네이터</h5>
                <p class="card-text">
                	<!-- table-area -->
					<table class="table table-borderless table-responsive">
					  <thead>
					    <tr>
					      <th scope="col">#</th>
					      <th scope="col">감독</th>
					      <th scope="col">배우</th>
					      <th scope="col">평점</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td class="text"><span data-toggle="tooltip" data-placement="bottom" title="제임스 카메론">제임스 카메론</span></td>
					      <td class="text"><span data-toggle="tooltip" data-placement="bottom" title="아놀드 슈왈제네거">아놀드 슈왈제네거</span></td>
					      <td>0.00</td>
					    </tr>
					  </tbody>
					</table>	
					<!-- table-area-end  -->
                </p>
                <a href="#" class="btn btn-primary">자세히 보기</a>
                </div>
              </div>
            </div>
            <!-- movie end -->
          </div>
        </div>      
      </div>
      
		<script>
			$(function () {
				$('[data-toggle="tooltip"]').tooltip()
			})
		</script>
      
      
	<!-- footbar  -->
	<%@include file ="../common/footer.jsp" %>
	<!-- footbar End  -->

</body>
</html>