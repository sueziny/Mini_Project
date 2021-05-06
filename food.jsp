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
  	font-family: "SeoulNamsan"";
}

	* {
 	 box-sizing:border-box;
	font-family: SeoulNamsan;
	}
	
	

	#all{
	 height: 100%;
     width: 100%;
     margin: 0;
     overflow: hidden;
     display: flex;
     justify-content: center;
     align-items: center;
	  }
	  
	.wrapper{
     width: 680px;
     position: relative;
	}
	
	.btn {
    border: none;
    position: relative;
    background: none;
    padding: 28px 70px;
    display: inline-block;
    text-transform: uppercase;
    margin: 20px;
    color: inherit;
    letter-spacing: 2px;
    font-size: 0.3em;
    outline: none;
    transition: all 0.4s;
    cursor: pointer;
    font-size:30px;
    font-weight: 470;	
	}

	.btn:after {
    content: "";
    position: absolute;
    z-index: -1;
    transition: all 04.s;
	}

	.taste{
	margin-top: 90px;
	margin-left: 100px;
    perspective: 800px;
    display: inline-block;
	}
	.case{
    perspective: 800px;
    margin-left: 100px;
    display: inline-block;
	}
	.random{
    perspective: 800px;
    margin-left: 100px;
    display: inline-block;
	}

	.btn-3d {
    color: #fff;
    display: block;
    outline: 1px solid transparent;
    transform-style: preserve-3d;
	}


	#hea{
	 	 font-size: 40px;
		 text-align: justify;
	 	 margin-left: 200px;
	}
	
	.btn-three {
     background-color: #1ABC9C;
	}
	.btn-three:after {
     width: 20%;
     height: 100%;
     left: -20%;
     top: 0;
     background: #16A085;
     transform-origin:100% 0%;
     transform: rotateY(-90deg);
	}
	
	.btn-three:hover {
     transform: rotateY(25deg);   
	}

</style>


</head>
<body>
<%@ include file="../view/header.jsp" %>

<div id="all">
<h1 id ="hea"> 세 개의 <br>기준이 있어요</h1>
<div class="wrapper">
	
	<div class="taste"><button class="btn btn-3d btn-three" onclick="location.href='food_taste1.jsp?choice=1'">취향으로</button></div>
	<div class="case"><button class="btn btn-3d btn-three" onclick="location.href='food_case.jsp?choice=2'">상황으로</button></div>
	<div class="random"><button class="btn btn-3d btn-three" onclick="location.href='${pageContext.request.contextPath}/food.do?choice=3'">아무거나</button></div>

</div>
</div>
	<%@ include file="../view/footer.jsp" %>
</body>
</html>