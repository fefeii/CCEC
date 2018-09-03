<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <div class="header-top">
	 <div class="wrap"> 
		<div class="logo">
			<a href="index"><img src="images/logo.png" alt=""/></a>
	    </div>
	    <div class="cssmenu">
		   <ul>
			 <li class="active"><a href="register"> 注册</a></li> 
			 <li><a href="shop">店铺</a></li> 
			 <li><a href="login">账户</a></li> 
			 <li><a href="checkout-1">结算</a></li> 
			 <li><a href="loginout">退出</a></li>
			  <li><a href="update">修改资料</a></li>
			 <li>${tip1 } </li>
		   </ul>
		</div>
		<ul class="icon2 sub-icon2 profile_img">
			<li><a class="active-icon c2" href="/HE/shop/admLogin"> </a>
				<ul class="sub-icon2 list">
					<li><h3>产品</h3><a href=""></a></li>
					<li><p>  <a href="/HE/shop/index">管理员登录</a></p></li>
				</ul>
			</li>
		</ul>
		<div class="clear"></div>
 	</div>
   </div>
   <div class="header-bottom">
   	<div class="wrap">
   		<!-- start header menu -->
		<ul class="megamenu skyblue">
		    <li><a class="color1" href="/HE/shop/index">首页</a></li>
			<li class="grid"><a class="color2" href="/HE/shop/doSearchByType?type=男士">男士</a>
				
	
				</li>
  			   <li class="active grid"><a class="color4" href="/HE/shop/doSearchByType?type=女士">女士</a>
				
    			</li>				
				<li><a class="color5" href="/HE/shop/doSearchByType?type=童鞋">童鞋</a>
				
				</li>
				
				<li><a class="color9" href="/HE/shop/doSearchByType?type=足球">足球</a>
				
				</li>
				<li><a class="color10" href="/HE/shop/doSearchByType?type=训练">训练</a></li>
				<li><a class="color11" href="/HE/shop/doSearchByType?type=户外">户外</a></li>
				<li><a class="color12" href="/HE/shop/doSearchByType?type=篮球">篮球</a></li>
		   </ul>
		   <div class="clear"></div>
     	</div>
       </div>