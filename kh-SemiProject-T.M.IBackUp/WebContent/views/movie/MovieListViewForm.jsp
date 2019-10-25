<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<!-- menu  -->
	<%@include file ="../common/menubar.jsp" %>
	<!-- menu End  -->
	<!-- Content  -->
	<br>
	<br>
	<br>
      <div class="wrap-movie-chart">
          <!-- Heading Map Multi -->
          <div class="tit-heading-wrap">

              <h3>무비차트</h3>
              <div class="submenu">
                  <ul>
                      <li class="on"><a href="/movies/" title="선택">무비차트</a></li>
                      <li><a href="/movies/pre-movies.aspx">상영예정작</a></li>
                      <li><a href="/movies/?lt=3">CGV아트하우스</a></li>
                  </ul>
              </div>
          </div>
          <!-- //Heading Map Multi -->
          <!-- Sorting -->
          <div class="sect-sorting">
               <div class="nowshow">
                          <input type="checkbox" id="chk_nowshow">
                  <label for="chk_nowshow">현재 상영작만 보기</label>     
              </div>
              <label for="order_type" class="hidden">정렬</label>
              <select id="order_type" name="order-type">
          <option title="현재 선택됨" selected="" value="1">예매율순</option>
                  <option value="2">평점순</option>
                  <option value="3">관람객순</option>
              </select>
              <button type="button" class="round gray"><span>GO</span></button>
          </div>
          <!-- //Sorting -->
          
          <div class="sect-movie-chart">
              <h4 class="hidden">
                  무비차트 - 예매율순
              </h4>
              <ol>
              
                  <li>
                      <div class="box-image">
                          <strong class="rank">No.1</strong>	
                          <a href="/movies/detail-view/?midx=82427">
                              <span class="thumb-image">
                                  <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82427/82427_185.jpg" alt="82년생 김지영 포스터" onerror="errorImage(this)">
                                  <span class="ico-grade grade-12">12세 이상</span>
                              </span>
                              <strong class="no1">1위</strong>
                          </a>
                          <span class="screentype">
                              
                          </span>
                      </div>
                      
                      <div class="box-contents">
                          <a href="/movies/detail-view/?midx=82427">
                              <strong class="title">82년생 김지영</strong>
                          </a>
  
                          <div class="score">
                              <strong class="percent">예매율<span>49.8%</span></strong>
                              <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                              <div class="egg-gage small">
                                  <span class="egg great"></span>
                  <span class="percent">97%</span>
                </div>
                              <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                              <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                  <div class="point">
                                      <em>97.0</em>
                                  </div>
                              [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                          </div>
  
                          <span class="txt-info">
                              <strong>
                                  2019.10.23 
                                  <span>개봉</span>
                                  
                              </strong>
                          </span>
                          <span class="like"> 
                              <button class="btn-like" value="82427">영화 찜하기</button>
                              <span class="count"> 
                                  <strong><i>10,272</i><span>명이 선택</span></strong> 
                                  <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                              </span>
                              <a class="link-reservation" href="/ticket/?MOVIE_CD=20020991&amp;MOVIE_CD_GROUP=20020991">예매</a>
                          </span>
                      </div>    
                  </li>
              
                  <li>
                      <div class="box-image">
                          <strong class="rank">No.2</strong>	
                          <a href="/movies/detail-view/?midx=81887">
                              <span class="thumb-image">
                                  <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000081/81887/81887_185.jpg" alt="말레피센트 2 포스터" onerror="errorImage(this)">
                                  <span class="ico-grade grade-12">12세 이상</span>
                              </span>
                              
                          </a>
                          <span class="screentype">
                              
                                  <a class="screenx" href="#" title="SCREENX 상세정보 바로가기" data-regioncode="SCX">SCREENX</a>
                              
                          </span>
                      </div>
                      
                      <div class="box-contents">
                          <a href="/movies/detail-view/?midx=81887">
                              <strong class="title">말레피센트 2</strong>
                          </a>
  
                          <div class="score">
                              <strong class="percent">예매율<span>10.2%</span></strong>
                              <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                              <div class="egg-gage small">
                                  <span class="egg great"></span>
                  <span class="percent">94%</span>
                </div>
                              <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                              <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                  <div class="point">
                                      <em>94.0</em>
                                  </div>
                              [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                          </div>
  
                          <span class="txt-info">
                              <strong>
                                  2019.10.17 
                                  <span>개봉</span>
                                  
                              </strong>
                          </span>
                          <span class="like"> 
                              <button class="btn-like" value="81887">영화 찜하기</button>
                              <span class="count"> 
                                  <strong><i>10,707</i><span>명이 선택</span></strong> 
                                  <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                              </span>
                              <a class="link-reservation" href="/ticket/?MOVIE_CD=20019651&amp;MOVIE_CD_GROUP=20019651">예매</a>
                          </span>
                      </div>    
                  </li>
              
                  <li>
                      <div class="box-image">
                          <strong class="rank">No.3</strong>	
                          <a href="/movies/detail-view/?midx=82377">
                              <span class="thumb-image">
                                  <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82377/82377_185.jpg" alt="조커 포스터" onerror="errorImage(this)">
                                  <span class="ico-grade grade-15">15세 이상</span>
                              </span>
                              
                          </a>
                          <span class="screentype">
                              
                          </span>
                      </div>
                      
                      <div class="box-contents">
                          <a href="/movies/detail-view/?midx=82377">
                              <strong class="title">조커</strong>
                          </a>
  
                          <div class="score">
                              <strong class="percent">예매율<span>6.7%</span></strong>
                              <!--[2015-12-10] 에그포인트 적용 범위1~ 3위. start : add_mwpark-->
                              <div class="egg-gage small">
                                  <span class="egg great"></span>
                  <span class="percent">88%</span>
                </div>
                              <!--[2015-12-10] 에그포인트 적용 범위 1~ 3위. end : add_mwpark-->
                              <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                  <div class="point">
                                      <em>88.0</em>
                                  </div>
                              [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                          </div>
  
                          <span class="txt-info">
                              <strong>
                                  2019.10.02 
                                  <span>개봉</span>
                                  
                              </strong>
                          </span>
                          <span class="like"> 
                              <button class="btn-like" value="82377">영화 찜하기</button>
                              <span class="count"> 
                                  <strong><i>14,860</i><span>명이 선택</span></strong> 
                                  <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                              </span>
                              <a class="link-reservation" href="/ticket/?MOVIE_CD=20020857&amp;MOVIE_CD_GROUP=20020856">예매</a>
                          </span>
                      </div>    
                  </li>
              
              </ol>
  
              <ol>
              
                  <li>
                      <div class="box-image">
                          <strong class="rank">No.4</strong>	
                          <a href="/movies/detail-view/?midx=82257">
                              <span class="thumb-image">
                                  <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82257/82257_185.jpg" alt="가장 보통의 연애 포스터" onerror="errorImage(this)">
                                  <span class="ico-grade grade-15">15세 이상</span>
                              </span>
                          </a>
                          <span class="screentype">
                              
                          </span>
                      </div>
                      
                      <div class="box-contents">
                          <a href="/movies/detail-view/?midx=82257">
                              <strong class="title">가장 보통의 연애</strong>
                          </a>
  
                          <div class="score">
                              <strong class="percent">예매율<span>4.5%</span></strong>
                               <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                              <div class="egg-gage small">
                                  <span class="egg great"></span>
                  <span class="percent">95%</span>
                </div>
                              <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                              <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                  <div class="point">
                                      <em>95.0</em>
                                  </div>
                              [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                          </div>
  
                          <span class="txt-info">
                              <strong>
                                  2019.10.02 
                                  <span>개봉</span>
                                  
                              </strong>
                          </span>
                          <span class="like"> 
                              <button class="btn-like" value="82257">영화 찜하기</button>
                              <span class="count"> 
                                  <strong><i>8,902</i><span>명이 선택</span></strong> 
                                  <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                              </span> 
  
                              <a class="link-reservation" href="/ticket/?MOVIE_CD=20020891&amp;MOVIE_CD_GROUP=20020637">예매</a>
                              
                          </span>
                      </div>    
                  </li>
              
                  <li>
                      <div class="box-image">
                          <strong class="rank">No.5</strong>	
                          <a href="/movies/detail-view/?midx=82491">
                              <span class="thumb-image">
                                  <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82491/82491_185.jpg" alt="BTS WORLD TOUR `LOVE YOURSELF- SPEAK YOURSELF` [THE FINAL] 서울 공연 라이브뷰잉 포스터" onerror="errorImage(this)">
                                  <span class="ico-grade grade-12">12세 이상</span>
                              </span>
                          </a>
                          <span class="screentype">
                              
                          </span>
                      </div>
                      
                      <div class="box-contents">
                          <a href="/movies/detail-view/?midx=82491">
                              <strong class="title">BTS WORLD TOUR `LOVE YOURSELF- SPEAK YOURSELF` [THE FINAL] 서울 공연 라이브뷰잉</strong>
                          </a>
  
                          <div class="score">
                              <strong class="percent">예매율<span>4.5%</span></strong>
                               <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                              <div class="egg-gage small">
                                  <span class="egg good"></span>
                  <span class="percent">?</span>
                </div>
                              <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                              <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                  <div class="point">
                                      <em>0.0</em>
                                  </div>
                              [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                          </div>
  
                          <span class="txt-info">
                              <strong>
                                  2019.10.27 
                                  <span>개봉</span>
                                  <em class="dday">D-3</em>
                              </strong>
                          </span>
                          <span class="like"> 
                              <button class="btn-like" value="82491">영화 찜하기</button>
                              <span class="count"> 
                                  <strong><i>3,035</i><span>명이 선택</span></strong> 
                                  <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                              </span> 
  
                              <a class="link-reservation" href="/ticket/?MOVIE_CD=20021168&amp;MOVIE_CD_GROUP=20021168">예매</a>
                              
                          </span>
                      </div>    
                  </li>
              
                  <li>
                      <div class="box-image">
                          <strong class="rank">No.6</strong>	
                          <a href="/movies/detail-view/?midx=81895">
                              <span class="thumb-image">
                                  <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000081/81895/81895_185.jpg" alt="터미네이터- 다크 페이트 포스터" onerror="errorImage(this)">
                                  <span class="ico-grade grade-15">15세 이상</span>
                              </span>
                          </a>
                          <span class="screentype">
                              
                                  <a class="imax" href="#" data-regioncode="07">IMAX</a>
                              
                          </span>
                      </div>
                      
                      <div class="box-contents">
                          <a href="/movies/detail-view/?midx=81895">
                              <strong class="title">터미네이터- 다크 페이트</strong>
                          </a>
  
                          <div class="score">
                              <strong class="percent">예매율<span>3.9%</span></strong>
                               <!--[2015-12-10] 에그포인트 적용 범위4~ 7위. start : add_mwpark-->
                              <div class="egg-gage small">
                                  <span class="egg great"></span>
                  <span class="percent">97%</span>
                </div>
                              <!--[2015-12-10] 에그포인트 적용 범위 4~ 7위. end : add_mwpark-->
                              <!-- [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark
                                  <div class="point">
                                      <em>97.0</em>
                                  </div>
                              [2015-12-11] 무비 차트 평점 개편 별점 UI 삭제 start : del_mwpark-->
                          </div>
  
                          <span class="txt-info">
                              <strong>
                                  2019.10.30 
                                  <span>개봉</span>
                                  <em class="dday">D-6</em>
                              </strong>
                          </span>
                          <span class="like"> 
                              <button class="btn-like" value="81895">영화 찜하기</button>
                              <span class="count"> 
                                  <strong><i>4,522</i><span>명이 선택</span></strong> 
                                  <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                              </span> 
  
                              <a class="link-reservation" href="/ticket/?MOVIE_CD=20021356&amp;MOVIE_CD_GROUP=20019721">예매</a>
                              
                          </span>
                      </div>    
                  </li>
              
                  <li>
                      <div class="box-image">
                          <strong class="rank">No.7</strong>	
                          <a href="/movies/detail-view/?midx=82482">
                              <span class="thumb-image">
                                  <img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82482/82482_185.jpg" alt="아이다호 포스터" onerror="errorImage(this)">
                                  <span class="ico-grade grade-none">미정</span>
                              </span>
                          </a>
                          <span class="screentype">
                              
                                  <a class="arthouse" href="#" data-regioncode="MovieCollage">아트하우스</a>
                              
                          </span>
                      </div>
                      
                      <div class="box-contents">
                          <a href="/movies/detail-view/?midx=82482">
                              <strong class="title">아이다호</strong>
                          </a>
  
                          <div class="score">
                              <strong class="percent">예매율<span>3.5%</span></strong>
                              <div class="egg-gage small">
                                  <span class="egg good"></span>
                  <span class="percent">?</span>
                </div>
                          </div>
  
                          <span class="txt-info">
                              <strong>
                                  2019.10.24 
                                  <span>개봉</span>
                                  
                              </strong>
                          </span>
                          <span class="like"> 
                              <button class="btn-like" value="82482">영화 찜하기</button>
                              <span class="count"> 
                                  <strong><i>832</i><span>명이 선택</span></strong> 
                                  <i class="corner-RT"></i><i class="corner-LT"></i><i class="corner-LB"></i><i class="corner-RB"></i><i class="corner-arrow"></i>
                              </span> 
  
                              <a class="link-reservation" href="/ticket/?MOVIE_CD=20021277&amp;MOVIE_CD_GROUP=20021095">예매</a>
                              
                          </span>
                      </div>    
                  </li>
              
              </ol>
              
              <button class="btn-more-fontbold">더보기 <i class="link-more">더보기</i></button>
              
  
              <ol id="movie_more_container" style="display:none" class="list-more">
                  <li></li>
              </ol>
          </div>
      </div>

		
			
	
	<!-- Content End -->

	<!-- footbar  -->
<%@include file ="../common/footer.jsp" %>
	<!-- footbar End  -->

</body>
</html>