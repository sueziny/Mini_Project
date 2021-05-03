<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
@font-face {
    src: url("fonts/08SeoulNamsanM_0.ttf"); 
  	font-family: 'SeoulNamsan';
}


*{
	box-sizing: border-box;
	font-family: 'SeoulNamsan';
}


body {
	margin: 0px;
	position: relative;
	width:100%;
	
	overflow: scroll;
}

#wrap{
 	width:100%;
	padding-top:1%;
	text-align: right;
}

#id{
	font-size: 20px;
	font-weight: bold;
}

#head{
	float:right;
	text-align:right;
	width:30%;
}

#question{
	position:relative;
	padding : 2% 2%;
	height:200px;
	border: none;	
	outline:none;
	margin:0 auto;
	}	
	
input[name=answer1]{
	background-color: rgb(231, 76, 60);
	}	
	
input[name=answer2]{
	background-color: rgb(46, 204, 113);
	}
	
input[name=answer1], [name=answer2]{
	width:100%;
	height:60px;
	border-radius: 5px;
	border : none;	
	font-size : 25px;
	display:inline-block;
	cursor: pointer;
	text-align:center;
    vertical-align:middle;
  	margin-bottom : 3%;
  	margin-left: 1%;
  	margin-right: 1%;
}	

#buttons{
	
	text-align: center;
	margin-top:10%;
	margin-bottom: 3%;
}

input[type=textarea]{
	height: 70%;
}

#content {
	margin: 0 auto;
	padding: 10px;
	top:50%;
	left:70%;
	width:70%
} 

.context {
	width:100%;
	height:50%;
	margin:0 auto;
	border: 2px solid #dddddd;
	border-radius: 5px;  
	position: relative;
	text-align: left;
}
    	
#viewAndtime{
	display: inline-block;
	text-align: right;
}

#title{
	width:70%;
	display: inline-block;
	text-align:left;
	font-size: 35px;
}

#tolist{
	width:100px;
	text-align: center;
}

#list{
	margin-top:2%;
	margin-bottom:5%;
	text-decoration: none;
}

#chart{
	position:absolute;
	text-align:center;
	width: 100%;
	margin-left:17%;
	padding:auto auto;	
}

</style>
</head>
<body>
<%@ include file="view/header.jsp" %>
<form action="boardRegister.do" method="post" style="border:1px soild #ccc" id=content>
	<input type="hidden" name="user_idx" value="${vo.userIdx}">
		<div id="wrap">
           <div id="head">
		       <h3>번호 : ${board.boardIdx}</h3><span id="viewAndtime"> ${board.registerDatetime} 조회수 : ${board.viewCount}</span> 
		   </div>    		     
		   <div id="title">
			   	${board.title}
		   </div>   
    		<div class="context">
	    		<div id="question">	
	    			${board.question}
	    			
	    		</div>
	    	
	    		<div id="buttons">
	               <div id="chart">
	    				<%@ include file="chart.jsp" %>
	    			</div>
	            </div>
	    	</div>
	    	<div id="list">
    	<a href="board_list.jsp">목록으로</a>
    	</div>
    </div>	 
</form>
<%@ include file="view/footer.jsp" %>
</body>
</html>
