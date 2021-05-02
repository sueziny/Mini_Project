# Mini_Project
Mini Project

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>골라조</title>
	
<style type="text/css"> 
		.wrapper {
	
		display: grid;
		grid-template-columns: 200px 200px 200px 200px;
		grid-template-rows:600px;
		align-items: center;
		justify-content: center;
		grid-gap: 100px;
	}
	.wrapper > div {
		margin-top:200px;
		padding:100px 50px 100px 50px ;
		background-color:rgb(231, 76, 60);
		border-radius:30px;
	}
	.wrapper > div > a{
		text-align:center;
		margin-left:auto; 
		margin-right:auto;
		color:white;
	}
	@import url(https://fonts.googleapis.com/css?family=Raleway:400,500,800);
figure.snip1200 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 220px;
  max-width: 310px;
  max-height: 310px;
  width: 100%;
  background: #000000;
  color: #ffffff;
  text-align: center;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
  font-size: 16px;
}
figure.snip1200 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.45s ease-in-out;
  transition: all 0.45s ease-in-out;
}
figure.snip1200 img {
  max-width: 100%;
  position: relative;
  opacity: 0.9;
}
figure.snip1200 figcaption {
  position: absolute;
  top: 45%;
  left: 7%;
  right: 7%;
  bottom: 45%;
  border: 1px solid white;
  border-width: 1px 1px 0;
}
figure.snip1200 .heading {
  overflow: hidden;
  -webkit-transform: translateY(50%);
  transform: translateY(50%);
  position: absolute;
  bottom: 0;
  width: 100%;
}
figure.snip1200 h2 {
  display: table;
  margin: 0 auto;
  padding: 0 10px;
  position: relative;
  text-align: center;
  width: auto;
  text-transform: uppercase;
  font-weight: 400;
}
figure.snip1200 h2 span {
  font-weight: 800;
}
figure.snip1200 h2:before,
figure.snip1200 h2:after {
  position: absolute;
  display: block;
  width: 1000%;
  height: 1px;
  content: '';
  background: white;
  top: 50%;
}
figure.snip1200 h2:before {
  left: -1000%;
}
figure.snip1200 h2:after {
  right: -1000%;
}
figure.snip1200 p {
  top: 50%;
  -webkit-transform: translateY(-50%);
  transform: translateY(-50%);
  position: absolute;
  width: 100%;
  padding: 0 20px;
  margin: 0;
  opacity: 0;
  line-height: 1.6em;
  font-size: 0.9em;
}
figure.snip1200 a {
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  position: absolute;
  z-index: 1;
}
figure.snip1200:hover img,
figure.snip1200.hover img {
  opacity: 0.25;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}
figure.snip1200:hover figcaption,
figure.snip1200.hover figcaption {
  top: 7%;
  bottom: 7%;
}
figure.snip1200:hover p,
figure.snip1200.hover p {
  opacity: 1;
  -webkit-transition-delay: 0.35s;
  transition-delay: 0.35s;
}
</style>
	
<script type="text/javascript">
  $(".hover").mouseleave(
    function () {
      $(this).removeClass("hover");
    }
  );
  </script>
</head>
<body>
	<%@ include file="view/header.jsp" %>
	<div class="wrapper">
    		<figure class="snip1200">
  <img src="image/pasta.jpg" alt="sq-sample27" />
  <figcaption>
    <p>식사 메뉴를 아직 정하지 못했다면 정해드릴께요.</p>
    <div class="heading">
      <h2>음식<span> 고르기</span></h2>
    </div>
  </figcaption>
  <a href="food.jsp"></a>
</figure>
<figure class="snip1200">
  <img src="image/map.jpg" alt="sq-sample31" />
  <figcaption>
    <p>사랑하는 사람들과 만날 장소가 고민이신가요? 서로의 거리를 배려하는 그 곳을 보여드릴께요.</p>
    <div class="heading">
      <h2>중간지점<span> 고르기</span></h2>
    </div>
  </figcaption>
  <a href="#"></a>
</figure>
<figure class="snip1200">
  <img src="image/yesorno.jpg" alt="sq-sample32" />
  <figcaption>
    <p>단답형으로 대답 할 수 있는 고민이 있으시다면 도와드릴께요.</p>
    <div class="heading">
      <h2>YES?<span> No?</span></h2>
    </div>
  </figcaption>
  <a href="#"></a>
</figure>
<figure class="snip1200">
  <img src="image/board.jpg" alt="sq-sample32" />
  <figcaption>
    <p>요즘 재미있는게 없으신가요? 여기서 찾으세요.</p>
    <div class="heading">
      <h2>유쾌한 <span> 게시판</span></h2>
    </div>
  </figcaption>
  <a href="boardList.do?page=1"></a>
</figure>
	</div>
	<%@ include file="view/footer.jsp" %>
	
</body>
</html>

