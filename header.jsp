<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>골라조</title>
<style type="text/css">
	@font-face {
   	src: url("fonts/08SeoulNamsanL_0.ttf"); 
  	font-family: "SeoulNamsanL";
  	font-family: 'Recipekorea';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/Recipekorea.woff') format('woff');
	}
	html {

    position: relative;

    min-height: 100%;
	}
html,body {
	  width: 100%;
	  height: 100%;
	   margin:0;
	  padding:0;
	  box-sizing:border-box;
	}
	
	* {
		margin:0;
		padding:0;
		box-sizing: border-box;
	}
	body{
		
	}
	
	ul {
		list-style: none;
		
	}
	
	a {
		text-decoration: none;
		outline: none;
	}
	
	header {
		width:100%;
		height:80px;
		display: flex;
		align-items: center;
		justify-content: space-between;
		background:url('/GollaJo/image/black.jpg') 100%;
		background-size:cover;
		opacity:0.7;
		border-radius:30px;
	}
	.container{
		margin:0 auto;
		border-radius:20px;
		margin:20px;
	}
	header > h2 {
		margin-left:20px;
	}
	
	header > nav {
		width:200px;
		height:100%;
	}
	
	header ul {
		width:100%;
		height: 100%;
		display: flex;
		font-weight: 900;
	}
	
	header ul > li {
		font-size:20px;
		height: 100%;
		display: flex;
		align-items: center;
		padding-left:20px;
		
	}
	header ul > li > a{
		font-family: 'Recipekorea';
		color:white;
	}
	#logo{
		widht:50px;
		height:50px;
		display: flex;
		align-items: center;
		margin-bottom:5px;
		margin-left:10px;
	}
	h1{
		font-family: 'Recipekorea';
	}
</style>	
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script type="javascript">

</script>
</head>
<body>
<div class="container">
		<header>
			<a href="/GollaJo/index.jsp"><img src="/GollaJo/image/logo2.png" id="logo"></a>
			<nav>
				<ul>
				<c:choose>
					<c:when test="${!empty vo}">
						<li style="padding-left:100px;"><a href="logout.do">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="/GollaJo/login/signIn.jsp">로그인</a></li>
						<li><a href="/GollaJo/login/signUp.jsp">회원가입</a></li>
					</c:otherwise>	
				</c:choose>
				</ul>			
			</nav>
		</header>
	</div>
</body>
</html>