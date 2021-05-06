<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0">
<title>골라조</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>

<script>
$(function(){
	$('#submit').click(function(){
		var cnt=$('input[name=place1]').length;
		if(cnt==0){
			alert("사람을 더 추가 해주세용");
			return false;
		}	
	})
});
var arr = new Array();
$(function(){
	$('#send').click(function(){
		arr=[];
		$("#list").empty();
		var place = $('#place').val();
		
		$.ajax({
		           url:'https://dapi.kakao.com/v2/local/search/keyword.json?page=1&size=5&sort=accuracy&query='+encodeURIComponent(place),
		           type:'GET',
		           headers: {'Authorization':'KakaoAK b34741aed522ecc3ae0a134939eab620'},
		           
		   success:function(data){
			   console.log(data);
			   
		       for(var i=0; i<data.documents.length; i++){
		    		arr.push(data.documents[i])
		    	   	var num = i+1;
		   	   	   	$('#list').append("<button id='btn'><input type='hidden' id='num' value="+num+"><span>"+data.documents[i].place_name+"</span><p>"+data.documents[i].address_name+"</p><br></button>");
		       }
		   },
		   error : function(e){
			   
		   }
		});//ajax
	});//click

});
$(document).on("click", "#btn", function(){
	
    var temp=$(this).find("#num").val();
    temp=temp-1;
    console.log(temp);
    console.log(arr[temp]);
	$('#pList').append("<img alt="+arr[temp].place_name+" src='${pageContext.request.contextPath}/image/person.png' id='person'>");
	$('#pList').append('<input type="hidden" name="place1" value='+arr[temp].x+','+arr[temp].y+'>');

});

$(document).on("mouseenter", "#person", function(){
	var point=$(this).attr('alt');
	$('#place').val(point);
	$(this).attr('src','${pageContext.request.contextPath}/image/xB.png')
});
$(document).on("mouseleave", "#person", function(){
	$('#place').val("");
	$(this).attr('src','${pageContext.request.contextPath}/image/person.png')
});
$(document).on("click", "#person", function(){
	var result = confirm('삭제하시겠습니까?');
	if(result){
		$(this).remove();
		$('#place').val("");
	}
	
});
</script>
<style>

#person{
	margin-top:10px;
	width:40px;
	height:50px;
	margin-right:10px;
}
.change{
	background:url('${pageContext.request.contextPath}/image/x.png');
}
/* #pList #person:hover{
	margin:20px;
 }*/
input[type=button]{
	width:150px;
}
#content{
	position: absolute; 
	padding: 20px; 
	width: 500px; 
	top: 50%; 
	left: 50%; 
	transform: translate(-50%, -50%);
	border:3px solid #ccc; 
	border-radius: 5px;"
	background-color:white;
	
}
input[type=text]{
	background-color:white;
	width: 90%;
	display: inline-block;
	border: none;
	padding:10px;
	background: white;
	border-radius: 5px;
	float:left;
}
#send{
	width: 40px;
	height:34px;
	display: inline-block;
	float:right;
	
}
#submit{
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
#submit:hover {
  	background-color:black;
  	color: #fff;
  	transform: translateY(-7px);
}
#btn{
	width:100%;
	height:30px;
	font-size: 0.6em;
	margin-top:5px;
	border:none;
	cursor:pointer;
	background-color: white;
}
#list button:hover{
	border:1px solid black;
}


</style>
</head>
<body>
<%@ include file="../view/header.jsp" %>

<div id = "content">
	<h1 align="center">중간지점 찾기</h1><br>
	<hr>
	<br>
	<input type="text" name="place" id="place">
	<img src="${pageContext.request.contextPath}/image/search.png" id="send" style="cursor:pointer;">
	<div id="list">
	
	</div>
	<form action="${pageContext.request.contextPath}/road.do">
		<div id="pList">
			
		</div>
			<input type="submit" name="send" id="submit" value="중간지점찾기">
		
	</form>
</div>
<%@ include file="../view/footer.jsp" %>
</body>
</html>