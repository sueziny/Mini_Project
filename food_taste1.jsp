<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@font-face {
    src: url("fonts/08SeoulNamsanM_0.ttf"); 
  	font-family: 'SeoulNamsan';
}


	body{

	 	background-size:cover;
	 	box-sizing: border-box;
		font-family: 'SeoulNamsan';

	  }
  
	.wrapper{
		  margin:270px auto;
		  display:block;
		  width:100%; 
		  max-width:270px;
		  position:relative;
		  background:none;
	  
	}
	.taste1{
		  height:36px;
		  margin-left:150px;
		  font-size:30px;
		  text-align:center;
		  color:black;
		  position:relative;
		  z-index:3;
		  cursor:pointer;
		  padding:3spx;

	}
	.taste2{
		  height:36px;
		  margin-left:150px;
		  font-size:30px;
		  text-align:center;
		  color:black; 
		  z-index:4;
		  cursor:pointer;
		  position:relative;
		  padding:15px;
	}


	.hovers{
		  position:absolute;
		  top:3px;
		  width:80%;
		  height:40px;
		  background-color:#f5dedc;
		  border-radius:40px;
		  border:2px solid #f5dedc;
		  z-index:1;
		  margin-left:110px;
		  transition:0.5s;
	}

	.taste1:hover ~ .hovers{
		  background-color:#e37479;
		  border:2px solid #e37479;
		  transform:translateY(-5%);
		  
	}
	
	.taste2:hover ~ .hovers{
	  background-color:#7eb4e0;
	  border:2px solid #7eb4e0;
	  transform:translateY(120%);
	}

	#title{
		left: 50px;
		position:absolute;
		top:-150px;
		font-size: 30px;
		margin-left: -30%;
	}	

</style>
</head>
<body>
<%@ include file="../view/header.jsp" %>	
	<div class = "wrapper">
			<div id="title"><h1>당신의 <br>취향<br>은?</h1></div>
				<div class="taste1" id="taste1" onclick="location.href='food_taste2.jsp?choice=${param.choice}&taste1=1'">빨간맛</div>
  				<div class="taste2" id="taste2" onclick="location.href='food_taste2.jsp?choice=${param.choice}&taste1=2'">순한맛</div>
  
 	 			<div class="hovers"></div>
	</div>
<%@ include file="../view/footer.jsp" %>	
</body>
</html>