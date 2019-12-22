<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product</title>
<meta charset="utf-8">
<meta name="description" content="Wish shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/resources/styles/bootstrap4/bootstrap.min.css">
<link href="/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product.css">
<link rel="stylesheet" type="text/css" href="/resources/styles/product_responsive.css">
<style>
.box-selected-opt{
display:table;
table-layout:fixed;
width:100%;
min-height:48px;
padding:6px 5px 6px 9px;
border:1px solid #ddd;
box-sizing:border-box;
-webkit-box-sizing:border-box

}
.wrap-select-opt{
max-height:250px;
overflow:hidden;
overflow-y:auto
display: block;
}

.box-selected-opt > div{
display:table-cell;
box-sizing:border-box;
-webkit-box-sizing:border-box;
vertical-align:middle
}

.box-selected-opt .opt{
padding-top:1px;
padding-right:10px;
color:#777;
font-size:12px;
line-height:18px
}

.box-selected-opt .amount{
width:102px;
white-space:nowrap
}

.box-selected-opt > div{
display:table-cell;
box-sizing:border-box;
-webkit-box-sizing:border-box;
vertical-align:middle
}

.box-selected-opt .amount{width:102px;white-space:nowrap}
.box-selected-opt .amount-control input,
.box-selected-opt .amount-control a{float:left;display:inline-block;width:26px;height:26px;box-sizing:border-box;-webkit-box-sizing:border-box;text-align:center;vertical-align:middle;overflow:hidden}
.box-selected-opt .amount-control input{width:24px;border:1px solid #eee;border-left:none;border-right:none;text-indent:0}
.box-selected-opt .amount-control a{background-color:#eee;font-size:0;line-height:0;text-indent:-999999px}
.box-selected-opt .amount-control a.opt-cnt-plus{background-image:url(/skin/musinsa/images/btn_opt_plus.png);background-repeat:no-repeat}
.box-selected-opt .amount-control a.opt-cnt-minus{background-image:url(/skin/musinsa/images/btn_opt_minus.png);background-repeat:no-repeat;}
.box-selected-opt .amount-control a.disabled{background-position:0 -26px}
.box-selected-opt .amount span{display:inline-block;margin-left:5px;margin-top:-1px;text-align:center;color:#aaa;font-size:11px;line-height:14px}
</style>
</head>
<body>

<%@include file="../include/header.jsp"%>

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="/resources/images/product.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_container">
						<div class="home_content">
							<div class="home_title">Top</div>
							<div class="breadcrumbs">
								<ul>
									<li><a href="/Product/index">Home</a></li>
									<li>Top</li>
									<li><a href="#">Pants</li>
									<li><a href="#">Shoes</li>
									<li><a href="#">Etc</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Product -->

	<div class="product">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="current_page">
						<ul>
							<li><a href="/Product/categories">Top</a></li>
							<li><a href="/Product/categories">KCM</a></li>
							<li>${productVO.pname}</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row product_row">

				<!-- Product Image -->
				<div class="col-lg-7">
					<div class="product_image">
						<div class="product_image_large"><img src="/resources/images/ProductImg/${productVO.pimg}" alt=""></div>
						<div class="product_image_thumbnails d-flex flex-row align-items-start justify-content-start">
							<div class="product_image_thumbnail" style="background-image:url(/resources/images/ProductImg/${productVO.pimg})" data-image="/resources/images/${productVO.pimg}"></div>
							<div class="product_image_thumbnail" style="background-image:url(/resources/images/ProductImg/${productVO.pimg2})" data-image="/resources/images/${productVO.pimg2}"></div>
							<div class="product_image_thumbnail" style="background-image:url(/resources/images/ProductImg/${productVO.pimg3})" data-image="/resources/images/${productVO.pimg3}"></div>
						</div>
					</div>
				</div>



				<!-- Product Content -->
					<div class="col-lg-5">
					<div class="product_content">
					<div>Test</div>
						<div class="product_name">${productVO.pname}</div>
						<div class="product_price">${productVO.pprice}</div>
						<div class="rating rating_4" data-rating="4">
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
							<i class="fa fa-star"></i>
						</div>
						<!-- Content -->
						<div class="product_text">
							<p>${productVO.pcontent}</p>
						</div>

						<!-- 사이즈 선택 selectBox -->
						<select id="productSize" name="productSize">
							<c:forEach items="${readinfo}" var="info">
							<option value="${info.psize}">${info.psize}</option>
							</c:forEach>
						</select>
						
						<!-- 컬러 선택 selectBox -->
						<select id="productColor" name="productColor">
							<option id="cOption" id="cOption" value="">전체</option>
						</select>  
						
						
						<!-- 상품별 가격/ 수량 체크 -->
						<div class=".wrap-select-opt" style="font-size: 12px;color: #000;"> <!-- 주문페이지 시작 -->
							<ul id="view_box">
							</ul>
						</div>
						
						<!-- 결제 총 가격 출력 -->
						<div class="product_name" id="totalPriceDiv" style=" position:static top20px;border: 4px ridge #bcbcbc;top:20px;padding:30px;font-size:20px;text-align:right;">
						 </div>
						<!-- <div id="priceDiv" style="display:none;">
							<ol id="selectprice">
							
							</ol>
						</div> -->
							
							<!-- <table id="selectprice" border="1">
							<tr>
							<th>가격</th>
								
							</tr>
							</table> -->
						<!-- 장바구니 추가 -->>
						<div class="button cart_button"><a href="#">add to cart</a></div>
					</div>
				</div>
			</div>	
			
			<!-- 리뷰 -->
			 <c:import url="/review/review">
				<c:param name="pno" value='${productVO.pnum}' />
			</c:import>
	<!-- 푸터 -->
	<%@include file="../include/footer.jsp"%>
</div>
</div>

<script type="text/javascript"></script>
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script src="/resources/styles/bootstrap4/popper.js"></script>
<script src="/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/resources/plugins/easing/easing.js"></script>
<script src="/resources/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/resources/js/product_custom.js"></script>

<script>
$( document ).ready(function() {
	var pprice=${productVO.pprice};
	var pnum=${productVO.pnum};
	var price=${productVO.pprice};
	var size; var inputid; var inputval; var resultprice;
	var color; var pricelist = new Array();
	 $('#productSize').change(colorSelect=function(){
		 size=$(this).val();
			$.ajax({
			type : "GET",
			url:'/Product/ajaxselectcolor',
			data:{"pnum":pnum,"size":size},
				success:function(data){
					if(data!==null){
						//$('#productColor').find("option").remove();
						$.each(data,function(index, value){
							$("#productColor").empty();
							$("#productColor").append("<option value=''>-------색상 선택--------</option>'");
							$("#productColor").append("<option value='"+data[index].pcolor+"'>"+data[index].pcolor+'</option>');
						});
					}else{
						$('#productColor').find('option').remove();	
						$('#productColor').append("<option value=''>재고가 없습니다.</option>");
					}
					
				},//data function
				error:function(request,status,error){
			        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
			    },//error
			}); // $.ajax
	});
	 $('#productColor').change(function(){
		 color=$(this).val();
		 var pid=color.concat(size); 
		 var value_id=$('#'+pid).text();
			if(value_id!=""){
				alert("이미 추가된 옵션입니다.");
			}else{
				$("#view_box").append("<li id='il_"+pid+"' class='box-selected-opt' style='list-style: none; text-align:-webkit-match-parent;'><div class='opt'><span id='spanSize'> Size :"+size+"</span><span id='spanColor'> Color : "+color+"</span></div><div class='opt'><input name='quantity_input' id='input_"+pid+"' type='number' pattern='[0-9]*' value='1' min=1 style='text-align:right; height:40px;border:0px;'></div><div id='priceDiv_"+pid+"' class='opt' style='display:none;text-align:right;'></div></li>");
				$('#priceDiv_'+pid).show("slow",function(){ //show다음에 콜백함수 실행				
					$('#priceDiv_'+pid).append("<input type='text' name='inputname' id='input_"+pid+"_price' value='"+pprice+"' readonly style='border:none; text-align=right;'>");
				});
			};
	});
	
	$(document).on("click","input[name=quantity_input]",function(){ //수량변동 일어났을때 움직이는 함수
		inputid=$(this).attr('id');
		inputval=$('#'+inputid).val();
		resultprice=pprice*inputval;
		$('#'+inputid+'_price').empty();
		$('#'+inputid+'_price').val(resultprice);
		var asd=$('#'+inputid+'_price').val();
		pricelist = new Array();
		$("input[name=inputname]").each(function(index, item){
			pricelist.push($(item).val());
		});
		totalresult(pricelist);
	});
	
	function totalresult(pricelist){ //수량변동에 따라 총가격 반환하는 함수
		var result=0;
		alert(typeof pricelist);
		for(var j=0;j<pricelist.length;j++){
			var trance=parseInt(pricelist[j]);
			result=result+trance;
		}
		$("#totalPriceDiv").empty();
		$("#totalPriceDiv").append(result+"원");
	}
	 
});


</script>

</body>
</html>
