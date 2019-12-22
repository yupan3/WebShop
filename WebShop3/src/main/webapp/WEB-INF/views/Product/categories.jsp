<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Categories</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/categories.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/categories_responsive.css">
</head>
<body>
<div class="super_container">
	<%@include file="../include/header.jsp"%>

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="/resources/images/categories.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_container">
						<div class="home_content">
							<div class="home_title">Clothes</div>
							<div class="breadcrumbs">
								<ul>
									<li><a href="/Product/index">Home</a></li>
									<li>Top</li>
									<li><a href="#">Pants</li>
									<li><a href="#">Shoes</li>
									<li><a href="#">Etc</li>
									<!-- add -->
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Products -->

	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-12">
					
					<!-- Sidebar Left -->

					<div class="sidebar_left clearfix">

						<!-- Categories -->
						<div class="sidebar_section">
							<div class="sidebar_title">Categories</div>
							<div class="sidebar_section_content">
								<ul>
									<li><a href="#">A (Number)</a></li>
									<li><a href="#">B (Number)</a></li>
									<li><a href="#">C (Number)</a></li>
									<li><a href="#">D (Number)</a></li>
								</ul>
							</div>
						</div>

						<!-- Price -->
						<div class="sidebar_section">
							<div class="sidebar_title">Price</div>
							<div class="sidebar_section_content">
								<div class="filter_price">
									<div id="slider-range" class="slider_range"></div>
									<p><input type="text" id="amount" class="amount" readonly style="border:0; font-weight:bold;"></p>
									<div class="clear_price_btn">Clear Price</div>
								</div>
							</div>
						</div>

						<!-- Best Sellers -->

						<div class="sidebar_section">
							<div class="sidebar_title">Best Sellers</div>
							<div class="sidebar_section_content bestsellers_content">
								<ul>
									<!-- Best Seller Item -->
									<li class="clearfix">
										<div class="best_image"><img src="/resources/images/best_1.jpg" alt=""></div>
										<div class="best_content">
											<div class="best_title"><a href="/Product/product">Blue dress with dots</a></div>
											<div class="best_price">$45</div>
										</div>
										<div class="best_buy">+</div>
									</li>

									<!-- Best Seller Item -->
									<li class="clearfix">
										<div class="best_image"><img src="/resources/images/best_2.jpg" alt=""></div>
										<div class="best_content">
											<div class="best_title"><a href="/Product/product">White t-shirt</a></div>
											<div class="best_price">$45</div>
										</div>
										<div class="best_buy">+</div>
									</li>

									<!-- Best Seller Item -->
									<li class="clearfix">
										<div class="best_image"><img src="/resources/images/best_3.jpg" alt=""></div>
										<div class="best_content">
											<div class="best_title"><a href="/Product/product">Blue dress with dots</a></div>
											<div class="best_price">$45</div>
										</div>
										<div class="best_buy">+</div>
									</li>

									<!-- Best Seller Item -->
									<li class="clearfix">
										<div class="best_image"><img src="/resources/images/best_4.jpg" alt=""></div>
										<div class="best_content">
											<div class="best_title"><a href="/Product/product">White t-shirt</a></div>
											<div class="best_price">$45</div>
										</div>
										<div class="best_buy">+</div>
									</li>

								</ul>
							</div>
						</div>

						<!-- Size -->
						<div class="sidebar_section sidebar_options">
							<div class="sidebar_section_content">

								<!-- Option Item -->
								<div class="sidebar_option d-flex flex-row align-items-center justify-content-start">
									<div class="option_image"><img src="/resources/images/option_1.png" alt=""></div>
									<div class="option_content">
										<div class="option_title">30 Days Returns</div>
										<div class="option_subtitle">No questions asked</div>
									</div>
								</div>

								<!-- Option Item -->
								<div class="sidebar_option d-flex flex-row align-items-center justify-content-start">
									<div class="option_image"><img src="/resources/images/option_2.png" alt=""></div>
									<div class="option_content">
										<div class="option_title">Free Delivery</div>
										<div class="option_subtitle">On all orders</div>
									</div>
								</div>

								<!-- Option Item -->
								<div class="sidebar_option d-flex flex-row align-items-center justify-content-start">
									<div class="option_image"><img src="/resources/images/option_3.png" alt=""></div>
									<div class="option_content">
										<div class="option_title">Secure Payments</div>
										<div class="option_subtitle">No need to worry</div>
									</div>
								</div>

								<!-- Option Item -->
								<div class="sidebar_option d-flex flex-row align-items-center justify-content-start">
									<div class="option_image"><img src="/resources/images/option_4.png" alt=""></div>
									<div class="option_content">
										<div class="option_title">24/7 Support</div>
										<div class="option_subtitle">Just call us</div>
									</div>
								</div>

							</div>
						</div>

					</div>

					<div class="current_page">Top</div>
				</div>
				<div class="col-12">
					<div class="product_sorting clearfix">
						<div class="view">
							<div class="view_box box_view"><i class="fa fa-th-large" aria-hidden="true"></i></div>
							<div class="view_box detail_view"><i class="fa fa-bars" aria-hidden="true"></i></div>
						</div>
						<div class="sorting">
							<ul class="item_sorting">
								<li>
									<span class="sorting_text">Show all</span>
									<i class="fa fa-caret-down" aria-hidden="true"></i>
									<ul>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>Show All</span></li>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "price" }'><span>Price</span></li>
										<li class="product_sorting_btn" data-isotope-option='{ "sortBy": "stars" }'><span>Stars</span></li>
									</ul>
								</li>
								<li>
									<span class="sorting_text">Show</span>
									<span class="num_sorting_text">12</span>
									<i class="fa fa-caret-down" aria-hidden="true"></i>
									<ul>
										<li class="num_sorting_btn"><span>3</span></li>
										<li class="num_sorting_btn"><span>6</span></li>
										<li class="num_sorting_btn"><span>12</span></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>






<!-- -------------------------- Product ------------------------------ -->


			<div class="row products_container">
				<div class="col">
					
					<!-- Products -->

					<div class="product_grid">

						<!-- Product -->
						 <c:forEach items="${list}" var="ProductVO">
						
						<div class="product">
							<div class="product_image">
							<img src='/resources/images/ProductImg/${ProductVO.pimg}' alt="">
							</div>
							<div class="rating rating_4" data-rating="4">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="product_content clearfix">
								<div class="product_info">
									<div class="product_name"><a href='/Product/read?pnum=${ProductVO.pnum}'>${ProductVO.pname}</a></div>
									<div class="product_price">${ProductVO.pprice}</div>
								</div>
								<div class="product_options">
									<div class="product_buy product_option"><img src="/resources/images/shopping-bag-white.svg" alt=""></div>
									<div class="product_fav product_option">+</div>
								</div>
							</div>
						</div>
						
						</c:forEach>  

					</div>
				</div>
					
			</div>

<!-- ------------------------Product-------------------------------- -->


			<div class="row page_num_container">
				<div class="col text-right">
					<ul class="page_nums">
						<li><a href="#">01</a></li>
						<li class="active"><a href="#">02</a></li>
						<li><a href="#">03</a></li>
						<li><a href="#">04</a></li>
						<li><a href="#">05</a></li>
					</ul>
				</div>
			</div>

		</div>
		
		<!-- Sidebar Right -->

		<div class="sidebar_right clearfix">

			<!-- Promo 1 -->
			<div class="sidebar_promo_1 sidebar_promo d-flex flex-column align-items-center justify-content-center">
				<div class="sidebar_promo_image" style="background-image: url(/resources/images/sidebar_promo_1.jpg)"></div>
				<div class="sidebar_promo_content text-center">
					<div class="sidebar_promo_title">30%<span>off</span></div>
					<div class="sidebar_promo_subtitle">On all shoes</div>
					<div class="sidebar_promo_button"><a href="/Product/checkout">check out</a></div>
				</div>
			</div>

			<!-- Promo 2 -->
			<div class="sidebar_promo_2 sidebar_promo">
				<div class="sidebar_promo_image" style="background-image: url(/resources/images/sidebar_promo_2.jpg)"></div>
				<div class="sidebar_promo_content text-center">
					<div class="sidebar_promo_title">30%<span>off</span></div>
					<div class="sidebar_promo_subtitle">On all shoes</div>
					<div class="sidebar_promo_button"><a href="/Product/checkout">check out</a></div>
				</div>
			</div>
		</div>

	</div>

	<!-- footer -->
	<%@include file="../include/footer.jsp"%>
</div>

<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/styles/bootstrap4/popper.js"></script>
<script src="/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/resources/plugins/easing/easing.js"></script>
<script src="/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/resources/plugins/malihu-custom-scrollbar/jquery.mCustomScrollbar.js"></script>
<script src="/resources/plugins/jquery-ui-1.12.1.custom/jquery-ui.js"></script>
<script src="/resources/js/categories_custom.js"></script>
</body>
</html>