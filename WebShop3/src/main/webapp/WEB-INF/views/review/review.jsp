<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>review</title>
<meta charset="utf-8">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product_responsive.css">
</head>
<body>
<!-- Reviews -->
<div class="row">
	<div class="col">
		<div class="reviews">
			<div class="reviews_title">reviews</div>
			<div class="reviews_container">
				<ul>
					<!-- Review -->
					<!-- rno로 리플에 파라미터값 보내야함 -->
					<c:forEach items="${readreview}" var="review">
					<li class=" review clearfix">
					<div class="review_image"><img src="/resources/images/customer/${review.rimg}" alt=""></div>
						<div class="review_content">
							<div class="review_name">${review.reviewer}</div>
							<div class="review_name"><a href="#">${review.reviewtitle}</a></div>
							<div class="review_date">Nov 29, 2017</div>
							<div class="rating rating_4 review_rating" data-rating="4">
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
								<i class="fa fa-star"></i>
							</div>
							<div class="review_text">
								<p>${review.reviewtext}</p>
									<c:import url="/review/reply">
										<c:param name="rno" value='${review.rno}' />
									</c:import> 
							</div>
						</div>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>



<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/styles/bootstrap4/popper.js"></script>
<script src="/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/resources/plugins/easing/easing.js"></script>
<script src="/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/resources/js/product_custom.js"></script>
</body>
</html>