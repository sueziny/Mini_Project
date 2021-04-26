# Mini_Project
Mini Project

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
@font-face {
    src: url("fonts/Recipekorea.ttf"); 
  	font-family: 'Recipekorea';
}

* {
	box-sizing: 100%;
	font-family:Recipekorea;
}
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
  display : block;
  border-radius: 5px;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
button {
  background-color:rgb(231, 76, 60);
  color: white;
  padding: 10px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border-radius: 5px;
  font-size : 17px;
}
button:hover {
  opacity:1;
}
.content {
	position: absolute; 
	padding: 20px; 
	width: 500px; 
	top: 50%; 
	left: 50%; 
	transform: translate(-50%, -50%);
	border:1px solid #ccc; 
	border-radius: 5px;"
}

</style>
<body>
<%@ include file="view/header.jsp" %>
<form action="/action_page.php">
  <div class="content">
  	<h2>로그인</h2><hr>
    <label for="아이디"><b>ID</b></label>
    <input type="text" placeholder="ID" name="아이디" required>
    <label for="비밀번호"><b>PASSWORD</b></label>
    <input type="password" placeholder="PASSWORD" name="비밀번호" required>
    <div class="clearfix">
      <button type="Login" class="signupbtn">로그인</button>
    </div>
  </div>
</form>
<%@ include file="view/footer.jsp" %>
</body>
</html>
</html>
