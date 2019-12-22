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
	<div class="in_stock_container">
		<table class="tablewidth" border="1">
			<tr>
				<th>사이즈</th>
				<th>색상</th>
				<th>재고</th>
			</tr>
			<c:forEach items="${readsize}" var="size">
			<tr>
				<td><span>${size.psize}</span></td>
				<td><span>없지렁이</span></td>
				<td><span>${size.pinventory}</span></td>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>