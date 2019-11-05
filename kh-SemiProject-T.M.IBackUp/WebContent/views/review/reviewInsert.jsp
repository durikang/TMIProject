<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

.star-input>.input, .star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	display: inline-block;
	vertical-align: middle;
	background: url('../../resources/img/review/grade_img.png') no-repeat;
}

.star-input {
	display: inline-block;
	white-space: nowrap;
	width: 225px;
	height: 40px;
	padding: 25px;
	line-height: 30px;
}

.star-input>.input {
	display: inline-block;
	width: 150px;
	background-size: 150px;
	height: 28px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 30px;
	height: 0;
	padding: 28px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 150px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p1"] {
	width: 30px;
	z-index: 5;
}

.star-input>.input>label[for="p2"] {
	width: 60px;
	z-index: 4;
}

.star-input>.input>label[for="p3"] {
	width: 90px;
	z-index: 3;
}

.star-input>.input>label[for="p4"] {
	width: 120px;
	z-index: 2;
}

.star-input>.input>label[for="p5"] {
	width: 150px;
	z-index: 1;
}

.star-input>output {
	display: inline-block;
	width: 60px;
	font-size: 18px;
	text-align: right;
	vertical-align: middle;
}

button{
	height:22px;
	width:80px;
	}
	
button:hover{
	cursor:pointer;
	}
	
#form {
	width:600px;
	height:500px;
	margin:auto;
	padding:150px;
}
</style>
</head>
<body>
	<%@include file="../common/menubar.jsp"%>
		<form method="get" action="">
		<div id="form">
			<fieldset>
				<legend>리뷰 & 별점</legend>
				<ul>
					<li><label>영화: </label> <input type="text" id="movieName"
						list="movielist"> <datalist id="movielist">
							<option>82년생 김지영</option>
							<option>말레피센트2</option>
							<option>조커</option>
							<option>가장 보통의 연애</option>
							<option>람보:라스트 워</option>
							<option>빅트립:아기팬더 배달 대모험</option>
							<option>체크 히어로</option>
							<option>더 킹:헨리 5세</option>
							<option>터미네이터2:오리지널</option>
							<option>퍼펙트맨</option>
						</datalist></li>
					<br>
					<li><lable>글 제목: </lable>
					<input type="text" id="rtitle"> 
					</li>
					<li><label>별점: </label>
						        <span class="star-input"> 
						        <span class="input">
								<input type="radio" name="star-input" value="1" id="p1">
								<label for="p1">1</label> 
								<input type="radio" name="star-input" value="2" id="p2"> 
								<label for="p2">2</label> 
								<input type="radio" name="star-input" value="3" id="p3"> 
								<label for="p3">3</label> 
								<input type="radio" name="star-input" value="4" id="p4"> 
								<label for="p4">4</label> 
								<input type="radio" name="star-input" value="5" id="p5"> 
								<label for="p5">5</label>
						</span> <!-- <output for="star-input"><b>0</b>점</output>-->
					</span> <!-- <script src="js/jquery-1.11.3.min.js"></script> -->
					</li>
					<!-- <script>
    	var starRating = function(){
    		var $star = $(".star-input"),
    		    $result = $star.find("output>b");
    			
    		  	$(document)
    			.on("focusin", ".star-input>.input", 
    				function(){
    		   		 $(this).addClass("focus");
    		 	})
    				 
    		   	.on("focusout", ".star-input>.input", function(){
    		    	var $this = $(this);
    		    	setTimeout(function(){
    		      		if($this.find(":focus").length === 0){
    		       			$this.removeClass("focus");
    		     	 	}
    		   		}, 100);
    		 	 })
    		  
    		    .on("change", ".star-input :radio", function(){
    		    	$result.text($(this).next().text());
    		  	})
    		    .on("mouseover", ".star-input label", function(){
    		    	$result.text($(this).text());
    		    })
    		    .on("mouseleave", ".star-input>.input", function(){
    		    	var $checked = $star.find(":checked");
    		    		if($checked.length === 0){
    		     	 		$result.text("0");
    		   		 	} else {
    		     	 		$result.text($checked.next().text());
    		    		}
    		  	});
    		};
    		starRating();
    		</script> -->
					<li><label>매력점수 : </label> 
					<input type="range" id="movieLevel1" min="1" max="10" step="1" onchange="changeRange1(this.value);"> 
					<input type="text" id="rangeVal1" readonly> 
					<br> 
					<label>감독연출 : </label> 
					<input type="range" id="movieLevel2" min="1" max="10" step="1" onchange="changeRange2(this.value);"> 
					<input type="text" id="rangeVal2" readonly> 
					<br> 
					<label>OST : </label> <input type="range" id="movieLevel3" min="1" max="10" step="1" onchange="changeRange3(this.value);"> 
					<input type="text" id="rangeVal3" readonly> 
					<br> 
					<label>배우 연기력 : </label>
					<input type="range" id="movieLevel4" min="1" max="10" step="1" onchange="changeRange4(this.value);"> 
					<input type="text" id="rangeVal4" readonly> 
					<br> 
					<label>Story : </label>
					<input type="range" id="movieLevel5" min="1" max="10" step="1" onchange="changeRange5(this.value);"> 
					<input type="text" id="rangeVal5" readonly> 
					<br> 
					<label>영상미 : </label> 
					<input type="range" id="movieLevel6" min="1" max="10" step="1" onchange="changeRange6(this.value);"> 
					<input type="text" id="rangeVal6" readonly>
					</li>
					<br>
					<li><label>한줄 평 : </label> 
					<textarea id="message" rows="2" cols="50"></textarea>
					</li>
				</ul>
			</fieldset>	
			<div align="center">
			<br>
			<button type="button" onclick="javascript:history.back();">취소하기</button>
			<button id="submit" type="submit">등록하기</button>
			</div>
			</div>	
		</form>
		<script>
		function changeRange1(grade) {
            document.getElementById("rangeVal1").value = grade + "점";
        }
		function changeRange2(grade) {
            document.getElementById("rangeVal2").value = grade + "점";
        }
		function changeRange3(grade) {
            document.getElementById("rangeVal3").value = grade + "점";
        }
		function changeRange4(grade) {
            document.getElementById("rangeVal4").value = grade + "점";
        }
		function changeRange5(grade) {
            document.getElementById("rangeVal5").value = grade + "점";
        }
		function changeRange6(grade) {
            document.getElementById("rangeVal6").value = grade + "점";
        }
		</script>
</body>
</html>