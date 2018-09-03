<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>购物车</title>
		<link rel="stylesheet" href="css/style-1.css" />
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/js.js"></script>
		<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>   
<script src="js/bootstrap.min.js"></script>  
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this)();
                $(".dropdown dt a span")(text);
                $(".dropdown dd ul").hide();
                $("#result")("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value")();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
<!-- start menu -->     
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- end menu -->
<!-- top scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			var tip = document.getElementById("delete");
			if(tip!=null){
				alert(tip.value);
			}
			
			
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
	</head>
		
	<body>
	<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" 
           uri="http://java.sun.com/jsp/jstl/functions" %>

 <c:import url="header.jsp" charEncoding="utf-8" />
		<div id="box">
			<div id="content_box">
				<div class="imfor_top">
					<div class="check_top">
						<input type="checkbox" id="all" />全选
					</div>
					<div class="pudc_top">商品</div>
					<div class="pices_top">单价</div>
					<div class="num_top">数量</div>
					<div class="totle_top">小计</div>
					<div class="del_top">操作</div>
				</div>
				<br><br>
				<a href ="/HE/shop/index">${tip_cart}</a>
				<c:forEach items="${goods }" var="item" varStatus ="ide">
					<div class="imfor">
						<div class="check">
							<input type="checkbox" class="Each" />
						</div>
						<div class="pudc"><img src="images/${item.picture}.jpg" />${item.pname}</span>
						</div>
						<div class="pices">${item.price }</div>
						<div class="num"><span class="reduc">&nbsp;-&nbsp;</span><input type="text" value="${item.pnum} " /><span class="add">&nbsp;+</span></div>
						<div class="totle">${item.price_total}</div>
						<div class="del"><a href="/HE/shop/doDeleteCart?cartid=${item.cartid }" class="btn btn-default">删除</a></div>
					
					</div>
				</c:forEach>
			</div>
			<%				HttpSession se = request.getSession();
							String name = (String)se.getAttribute("tip_cart_delete");
			%>
			<%if(se.getAttribute("tip_cart_delete")!=null){ %>
			<input type = "hidden" id ="delete" value =<%=name %>>
			<%} %>
			
			
			<div class="foot">
<!-- 				<div class="foot_add">添加一行</div> -->
				<div class="foot_del">全部删除</div>
				<div class="foot_cash">结算</div>
				<div class="foot_tol"><span>合计：￥</span><span id="susum">0</span></div>
			</div>
		</div>
	</body>

</html>