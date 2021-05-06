<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0"> 
<title>골라조</title>


<style>
@font-face {
    src: url("fonts/08SeoulNamsanM_0.ttf"); 
  	font-family: 'SeoulNamsan';
}


*{
	margin : 0px;
	font-family: 'SeoulNamsan';
}


h1{
	font-size: 40px;
}	

.content{
	display:flex;
	align-items: center;
	justify-content: center;
	margin-top:100px;
}
#piechart{
	display:flex;
	align-items: center;
	justify-content: center;
}
#content{
	position: absolute; 
	padding: 20px; 
	width: 700px; 
	top: 50%; 
	left: 50%; 
	transform: translate(-50%, -50%);
	border:1px solid #ccc; 
	border-radius: 5px;"
}
#search{
	text-align:center;
}

button{
	width:100%;
	margin-top:20px;
  	height: 45px;
  	font-size: 14px;
  	text-transform: uppercase;
  	letter-spacing: 2.5px;
  	font-weight: 500;
  	color: black;
 	background-color: white;
  	border: 1px solid gray;
  	border-radius: 45px;
  	transition: all 0.3s ease 0s;
  	cursor: pointer;
  	outline: none;
}
</style>
<body>
<%@ include file="../view/header.jsp" %>
<div id="content">
	<h2 align="left" >중간지점</h2><br>
	<span id="middle"></span>
	<hr>
	<br>
	<div id="map" style="width:100%;height:350px;"></div>
	<br>
	<span id="search"></span>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0980f09b20f5042a72b76ca552037508"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
var x;
var y;

$.ajax({
    url:'https://dapi.kakao.com/v2/local/search/keyword.json?y='+${y}+'&x='+${x}+'&radius=5000&size=1&query='+encodeURIComponent("지하철"),
    type:'GET',
    headers: {'Authorization':'KakaoAK b34741aed522ecc3ae0a134939eab620'},
    
	success:function(data){
		 console.log(data);
		 for(var i=0; i<data.documents.length; i++){
			 x=data.documents[i].x;
	    	 y=data.documents[i].y;
	    	 place=data.documents[i].place_name;
	    	 id=data.documents[i].id;
	    	 console.log(x);
	    	 console.log(y);
	    	 $('#middle').append("<h2 style='color:red;'>"+place+"</h2>");
	    	 $('#search').append("<button><a href='https://map.kakao.com/link/to/"+id+"'>길찾기</a></button>");
	    	 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	 	     mapOption = { 
	 	        center: new kakao.maps.LatLng(y,x), // 지도의 중심좌표
	 	        level: 3 // 지도의 확대 레벨
	 	    };
	 	
		 	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		 	
		 	// 마커가 표시될 위치입니다 
		 	var markerPosition  = new kakao.maps.LatLng(y,x); 
		 	
		 	// 마커를 생성합니다
		 	var marker = new kakao.maps.Marker({
		 	    position: markerPosition
		 	});
		 	// 마커가 지도 위에 표시되도록 설정합니다
		 	marker.setMap(map);
	     }   
		 
	},
	error : function(e){
		console.log(e);
	}
});//ajax

	
	    
</script>
<%@ include file="../view/footer.jsp" %>
</body>
</html>