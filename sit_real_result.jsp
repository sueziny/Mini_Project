<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	margin : 0px;
	font-family: 'SeoulNamsan';
}


h1{
	font-size: 40px;
}	

.content{
	position: absolute; 
	padding: 20px; 
	width: 700px; 
	top: 50%; 
	left: 50%; 
	transform: translate(-50%, -50%);
	border:1px solid #ccc; 
	border-radius: 5px;"
}
#piechart{
	display:flex;
	align-items: center;
	justify-content: center;
}

</style>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
		
		var find = false;
		var item ="${param.confirm}";
		var index;
		var cnt;
      	if(localStorage.length!=0){
      		for(var i=0; i<localStorage.length; i++){
      			k = localStorage.key(i);
    			var value = JSON.parse(localStorage.getItem(k));
      			if(value.menu==item){
      				find=true;
      				cnt = value.value 
      				break;
      			}
           	}
      	}
      	if(find==false){
      		index=localStorage.length+1;
      		var obj={
      			menu:item,
      			value:1,
      			
      		};

          	localStorage.setItem(index,JSON.stringify(obj));
      	}else{
      		obj = {
      			menu:item,
      			value:cnt+1,
      		};

          	localStorage.setItem(k,JSON.stringify(obj));
      	}
      	
      	/*var obj2={
      		menu:"",
      		value:0,
      	};*/
      	
      	
	    google.charts.load('current', {'packages':['corechart']});
	    google.charts.setOnLoadCallback(drawChart);
	
	    function drawChart() {

	    	// 차트 데이터 설정
	    	var data = new google.visualization.DataTable();
	    	data.addColumn('string','메뉴');
	    	data.addColumn('number','횟수');
	    	for(var s=0; s<localStorage.length; s++){
	      		k = localStorage.key(s);
				value = JSON.parse(localStorage.getItem(k));
				data.addRow([value.menu,value.value]);		      	
	      	}
	    	var options = {
	    		title: '나의 음식 선택!'
	    	};
			var chart = new google.visualization.PieChart(document.getElementById('piechart'));
			chart.draw(data, options);
	    }
</script>
</head>

<body>
<%@ include file="../view/header.jsp" %>

<div class = "content">
	<div id="piechart" style="width: 600px; height: 500px;"></div>
</div>

<%@ include file="../view/footer.jsp" %>
</body>
</html>