<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src=/resources/jquery/jquery.ulslide.js"></script>
<font face="돋움"><span style="white-space: normal;"> </span></font>



<style>
/*********************************
3. Header
*********************************/

.header
{
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 12%;
	background: #FFFFFF;
	z-index: 100;
	padding-left: 6%;
	padding-right: 6%;
}
.header.scrolled
{
	height: 8%;
}
.header_inner
{
	width: 100%;
	height: 100%;
}

/*********************************
3.1 Header - Logo
*********************************/

.logo a
{	
	padding-left: 40%;
	text-align:center;
	font-size: 40px;
	color: #2f2f2f;
}

/*********************************
3.2 Header - Main Navigation
*********************************/

.main_nav
{
	
	padding-left: 10%;
	-webkit-transform: translateY(4px);
	-moz-transform: translateY(4px);
	-ms-transform: translateY(4px);
	-o-transform: translateY(4px);
	transform: translateY(4px);
}
.main_nav ul li
{
	display: inline-block;
	margin-right: 5%;
}
.main_nav ul li:last-child
{
	margin-right: 0;
}
.main_nav ul li a
{
	font-size: 15px;
	text-transform: uppercase;
	color: #2f2f2f;
	font-weight: 600;
	letter-spacing: 0.2em;
	-webkit-transition: all 200ms ease;
	-moz-transition: all 200ms ease;
	-ms-transition: all 200ms ease;
	-o-transition: all 200ms ease;
	transition: all 200ms ease;
}
.main_nav ul li a:hover
{
	color: #937c6f;
}



</style>


<!-- Main content -->
<section>
	<div class="super_container">
		<!-- Header -->
		<header class="header">
			<div class="header_inner">
				<div class="logo">
					<a href="#">D </a>
				</div>
				
				<!-- 여기부터 롤링배너 -->
				<script type="text/javascript">
					<script type="text/javascript">
					$(function() {
						$('#slide_banner').ulslide({
							statusbar : true,
							width : 1250, //슬라이드배너 가로사이즈
							height : 440, //슬라이드배너 세로사이즈
							affect : 'slide', //'fade'로 변경시 이미지가 투명하게 사라지면서 다음이미지가 보여짐
							axis : 'x', //슬라이드 방향 x=가로, y=세로
							navigator : '#slide_banner_navi a', //페이지네이션
							duration : 400,
							autoslide : 5000
						});
					});
				</script>

				<div class="slide_wrap">
					<div id="slide_banner">
						<li><a href="#"><img src="/resources/images/1.jpg"
								style=""></a></li>
						<li><a href="#"><img src="/resources/images/2.jpg"
								style=""></a></li>
						<li><a href="#"><img src="/resources/images/3.jpg"
								style=""></a></li>
					</div>
					<ul id="slide_banner_navi">
						<li><a href="#1"></a></li>
						<li><a href="#2"></a></li>
						<li><a href="#3"></a></li>
					</ul>
				</div>


				<!-- 여기까지 롤링배너 -->
				
				
				
				
				<!--  <nav class="main_nav">
					<ul>
						<li><a href="#">home</a></li>
						<li><a href="#">Product</a></li>
						<li><a href="#">Product</a></li>
						<li><a href="#">Product</a></li>
						<li><a href="#">Product</a></li>
					</ul>
				</nav>-->
			</div>
		</header>
	</div>
	<!-- 여기까지 탑 메뉴바 -->


</section>
<!-- /.content -->
