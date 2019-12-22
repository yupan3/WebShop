<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<style>
@import url('https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800');
.tablewidth{
font-family: 'Open Sans', sans-serif;
	background: #fbd8a9;
	text-align: center;
	width:400px;
	height:80px;
	color: #2f2f2f;
}
</style>
<title>Product</title>
<meta charset="utf-8">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product_responsive.css">
</head>
<body>
	<ul class="d-flex flex-row align-items-start justify-content-start">
	<c:forEach items="${readsize}" var="size">
		<li><input type="radio" id="radio_1" name="product_radio"
			class="regular_radio radio_1"> <label for="radio_1">${size.psize}</label>
		</li>
	</c:forEach>
	</ul>
</body>
</html>