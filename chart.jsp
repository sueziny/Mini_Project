<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">


.vGraph {
	padding:30px 0;
	}
	
.vGraph ul {
	margin:0;
	padding:0; 
	height:20%;
	border:1px soild #ccc;
	border-right:0;
	list-style:none;
}

.vGraph ul:after{ 
	content:"";
	display:block; 
	clear:both;
}

.vGraph li{ 
	position:fixed;
	float:left; 
	display:inline; 
	width:180px; 
	height:100%; 
	margin:0 5.5%; 
	position:relative; 
	text-align:center; 
	white-space:nowrap;
}

.vGraph .gTerm{ 
	position:relative; 
	display:inline-block; 
	width:100%; 
	height:20px; 
	line-height:20px; 
	margin:0 -82% 70% -5%; 
	padding:100px 0 0 0; 
	vertical-align:bottom; 
	color:#767676; 
	font-weight:bold;
}

.vGraph .gBar{ 
	position:relative; 
	display:inline-block; 
	width:100%; 
	margin:-1px 0 0 0; 
	border:1px solid #767676; 
	border-bottom:0; 
	vertical-align:bottom;
}

.vGraph .gBar.a{

	background:rgb(231, 76, 60); 
}

.vGraph .gBar.b{

	background-color: rgb(46, 204, 113);
}

.vGraph .gBar span{ 
	position:absolute; 
	width:100%; 
	top:-20px; 
	left:0; 
	color:#767676;
}

</style>
<body>
	<div class="vGraph">
    	<ul>
    	<li><span class="gTerm"></span><span class="gBar a" style="height:${percent1}%"><span><b>${percent1}%</b></span></span></li>
    	<input type="button" name="answer1" maxlength="10" value="${board.answer1}" style="width: 200px"; required>
    	<font size="10"><b>VS</b></font>
    	<li><span class="gTerm"></span><span class="gBar b" style="height:${percent2}%"><span><b>${percent2}%</b></span></span></li>
    	<input type="button" name="answer2" maxlength="10" value="${board.answer2}" style="width: 200px"; required>
    	</ul>   		
    </div>
</body>
</html>