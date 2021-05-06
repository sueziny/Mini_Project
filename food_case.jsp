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


*{
	box-sizing: border-box;
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
	#situation1{
		  height:36px;
		  margin-left:60%;
		  margin-top:5%;
		  font-size:28px;
		  font-weight: 450;
		  text-align:center;
		  color:black;
		  position:absolute;
		  z-index:2;
		  cursor:pointer;
	}
	#situation2{
		  height:36px;
		  margin-left:120%;
		  margin-top:45%;
		  font-size:28px;
		  font-weight: 450;
		  text-align:center;
		  color:black; 
		  z-index:2;
		  cursor:pointer;
		  position:relative;
	}
	#situation3{
		  height:36px;
		  margin-left:10%;
		  margin-top:25%;
		  font-size:28px;
		  font-weight: 450;
		  text-align:center;
		  color:black; 
		  z-index:2;
		  cursor:pointer;
		  position:relative;
	}
	#situation4{
		  height:40px;
		  margin-left:70%;
		  margin-top:-100%;
		  font-size:28px;
		  font-weight: 450;
		  text-align:center;
		  color:black; 
		  z-index:2;
		  cursor:pointer;
		  position:absolute;
	}
	#situation5{
		  height:40px;
		  margin-left:150%;
		  margin-top:-70%;
		  font-size:28px;
		  font-weight: 450;
		  text-align:center;
		  color:black; 
		  z-index:2;
		  cursor:pointer;
		  position:relative;
	}
	#situation6{
		  height:40px;
		  margin-left:20%;
		  margin-top:-20%;
		  font-size:28px;
		  font-weight: 450;
		  text-align:center;
		  color:black; 
		  z-index:2;
		  cursor:pointer;
		  position:relative;
	}
	

	.hovers{
		  position:absolute;
		  top:3px;
		  width:70%;
		  height:80px;
		  background-color:#f5dedc;
		  border-radius:40px;
		  border:2px solid #f5dedc;
		  z-index:1;
		  margin-top:-35%;
		  margin-left:-42%;
		  transition:0.5s;
	}

	.situation1:hover ~ .hovers{
		  background-color:#e37479;
		  border:2px solid #e37479;
		  transform:translate(122%, 95%);  
		  height: 80px;
	}
	
	.situation2:hover ~ .hovers{
	 	background-color:#e37479;
		border:2px solid #e37479;
	  	transform:translate(432px, 78%);  
	  	width:40px;
	  	height:80px;
	}
	
	.situation3:hover ~ .hovers{
		  background-color:#e37479;
		  border:2px solid #e37479;
	  	  transform:translate(208px, 420%); 
	  	  width: 40%;
	  	  height: 40px;
	}
	
	.situation4:hover ~ .hovers{
		  background-color:#e37479;
		  border:2px solid #e37479;
	  	  transform:translate(255%, -170%); 
	  	  width: 40%;
	  	  height: 40px;
	}
	
	.situation5:hover ~ .hovers{
		  background-color:#e37479;
		  border:2px solid #e37479;
	  	  transform:translate(512px, 9%);  
	  	  width:40px;
	  	  height:120px;
	}
	
	.situation6:hover ~ .hovers{
		  background-color:#e37479;
		  border:2px solid #e37479;
	  	  transform:translate(95%, -5%);
	  	  height: 40px;
	}

	#title{
		position:absolute;
		top:-150px;
		font-size: 30px;
		margin-left:-30%;
		z-index:3;
	}	
</style>

</head>
<body>
<%@ include file="../view/header.jsp" %>
		<div class="wrapper">
			<div id="title"><h1>당신의<br> 상황<br>은?</h1></div>
			<div class="situation1" id="situation1" onclick="location.href='${pageContext.request.contextPath}/food.do?choice=${param.choice}&situation=1'">비오는날</div>
			<div class="situation2" id="situation2" onclick="location.href='${pageContext.request.contextPath}/food.do?choice=${param.choice}&situation=2'">해장</div>
			<div class="situation3" id="situation3" onclick="location.href='${pageContext.request.contextPath}/food.do?choice=${param.choice}&situation=3'">점심</div>
			<div class="situation4" id="situation4" onclick="location.href='${pageContext.request.contextPath}/food.do?choice=${param.choice}&situation=4'">저녁</div>
			<div class="situation5" id="situation5" onclick="location.href='${pageContext.request.contextPath}/food.do?choice=${param.choice}&situation=5'">술자리</div>
			<div class="situation6" id="situation6" onclick="location.href='${pageContext.request.contextPath}/food.do?choice=${param.choice}&situation=6'">다이어트</div>	
			
			<div class="hovers"></div>
		</div>
<%@ include file="../view/footer.jsp" %>		
</body>
</html>