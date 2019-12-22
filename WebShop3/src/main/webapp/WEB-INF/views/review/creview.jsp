<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>CreateReview</title>
<meta charset="utf-8">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product_responsive.css">
</head>
<body>
<!-- Leave a Review -->

		<div class="row">
			<div class="col">
				<div class="review_form_container">
					<div class="review_form_title">leave a review</div>
					<div class="review_form_content">
						<form action="#" id="review_form" class="review_form">
							<div class="d-flex flex-md-row flex-column align-items-start justify-content-between">
								<input type="text" class="review_form_input" placeholder="Name" required="required">
								<input type="email" class="review_form_input" placeholder="E-mail" required="required">
								<input type="text" class="review_form_input" placeholder="Subject">
							</div>
							<textarea class="review_form_text" name="review_form_text" placeholder="Message"></textarea>
							<button type="submit" class="review_form_button">leave a review</button>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>
</html>