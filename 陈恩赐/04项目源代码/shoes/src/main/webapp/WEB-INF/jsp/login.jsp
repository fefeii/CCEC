<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
       <div class="login">
          <div class="wrap">
				<div class="col_1_of_login span_1_of_login">
					<h4 class="title">新顾客</h4>
					<h5 class="sub_title">注册账户</h5>
					<p>上帝保佑我们，上帝保佑我们，上帝保佑我们。如果您有什么问题，请联系我们。在伏隔山和伏隔山，你可以在那里找到你想要的东西</p>
					<div class="button1">
					   <a href="register"><input type="submit" name="Submit" value="继续"></a>
					 </div>
					 <div class="clear"></div>
				</div>
				<div class="col_1_of_login span_1_of_login">
				  <div class="login-title">
	           		<h4 class="title">已注册</h4>
					 <div class="comments-area">
					 <li>${tip2 }</li>
				
						<form action="/dologin" method="post">
							<p>
								<label>名字</label>
								<span>*</span>
								<input type="text" name="account" value="">
							</p>
							<p>
								<label>密码</label>
								<span>*</span>
								<input type="password" name="pwd" value="">
							</p>
							 <p id="login-form-remember">
								<label><a href="#">忘记密码? </a></label>
							 </p>
							 <p>
								<input type="submit" value="登录">
							</p>
						</form>
					</div>
			      </div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
        <div class="footer">
       	  <div class="footer-top">
       		<div class="wrap">
       			   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	 <ul class="f_list">
				  	 	<li><img src="images/f_icon.png" alt=""/><span class="delivery">所有订单都免费送货</span></li>
				  	 </ul>
				   </div>
				   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	<ul class="f_list">
				  	 	<li><img src="images/f_icon1.png" alt=""/><span class="delivery">顾客服务 :<span class="orange"> (800) 000-2587 (freephone)</span></span></li>
				  	 </ul>
				   </div>
				   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	<ul class="f_list">
				  	 	<li><img src="images/f_icon2.png" alt=""/><span class="delivery">快速交付 & 免费回报</span></li>
				  	 </ul>
				   </div>
				  <div class="clear"></div>
			 </div>
       	 </div>
       	 <div class="footer-middle">
       	 	<div class="wrap">
       	 		<div class="section group">
				<div class="col_1_of_middle span_1_of_middle">
					<dl id="sample" class="dropdown">
			        <dt><a href="#"><span>请选择一个国家</span></a></dt>
			        <dd>
			            <ul>
			                <li><a href="#">澳大利亚<img class="flag" src="images/as.png" alt="" /><span class="value">AS</span></a></li>
			                <li><a href="#">Sri Lanka<img class="flag" src="images/srl.png" alt="" /><span class="value">SL</span></a></li>
			                <li><a href="#">Newziland<img class="flag" src="images/nz.png" alt="" /><span class="value">NZ</span></a></li>
			                <li><a href="#">Pakistan<img class="flag" src="images/pk.png" alt="" /><span class="value">Pk</span></a></li>
			                <li><a href="#">United Kingdom<img class="flag" src="images/uk.png" alt="" /><span class="value">UK</span></a></li>
			                <li><a href="#">United States<img class="flag" src="images/us.png" alt="" /><span class="value">US</span></a></li>
			            </ul>
			         </dd>
   				    </dl>
   				 </div>
				<div class="col_1_of_middle span_1_of_middle">
					<ul class="f_list1">
						<li><span class="m_8">注册电子邮件，获得15%</span>
						<div class="search">	  
							<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="Subscribe" id="submit" name="提交">
							<div id="response"> </div>
			 			</div><div class="clear"></div>
			 		    </li>
					</ul>
				</div>
				<div class="clear"></div>
			   </div>
       	 	</div>
       	 </div>
       	<div class="footer-bottom">
       	 	<div class="wrap">
       	 		<div class="section group">
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">商城</h3>
					<ul class="sub_list">
						<h4 class="m_10">男士</h4>
					    <li><a href="shop">男鞋</a></li>
			            <li><a href="shop">男衣</a></li>
			            <li><a href="shop">男配饰</a></li>
			        </ul>
			             <ul class="sub_list">
				            <h4 class="m_10">女士</h4>
				            <li><a href="shop">女鞋</a></li>
				            <li><a href="shop">女衣</a></li>
				            <li><a href="shop">女配饰</a></li>
				         </ul>
				         <ul class="sub_list">
				            <h4 class="m_10">儿童</h4>
				            <li><a href="shop">童鞋</a></li>
				            <li><a href="shop">童衣</a></li>
				            <li><a href="shop">儿童配饰</a></li>
				         </ul>
				        <ul class="sub_list">
				            <h4 class="m_10">款式</h4>
				            <li><a href="shop">保时捷设计运动</a></li>
				            <li><a href="shop">保时捷设计鞋子</a></li>
				            <li><a href="shop">保时捷设计衣服</a></li>
				        </ul>
				        <ul class="sub_list">
				            <h4 class="m_10">阿迪达斯新标签</h4>
				            <li><a href="shop">阿迪达斯新鞋</a></li>
				            <li><a href="shop"> 阿迪达斯衣服</a></li>
				        </ul>
				        <ul class="sub_list1">
				            <h4 class="m_10">定制</h4>
				            <li><a href="shop">mi阿迪达斯</a></li>
				            <li><a href="shop">mi团队</a></li>
				            <li><a href="shop">新品上市</a></li>
				        </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">体育</h3>
					<ul class="list1">
					    <li><a href="shop">篮球</a></li>
			            <li><a href="shop">足球</a></li>
			            <li><a href="shop">足球鞋</a></li>
			            <li><a href="shop">捕食者</a></li>
			            <li><a href="shop">F50</a></li>
			            <li><a href="shop">足球衣</a></li>
			            <li><a href="shop">高尔夫球</a></li>
			            <li><a href="shop">高尔夫鞋</a></li>
			            <li><a href="shop">高尔夫衣</a></li>
			            <li><a href="shop">户外</a></li>
			            <li><a href="shop">户外鞋</a></li>
			            <li><a href="shop">户外衣</a></li>
			            <li><a href="shop">橄榄球</a></li>
			            <li><a href="shop">跑步</a></li>
			            <li><a href="shop">跑鞋</a></li>
			            <li><a href="shop">宣扬</a></li>
			            <li><a href="shop">超新星</a></li>
			            <li><a href="shop">跑衣</a></li>
			            <li><a href="shop">游泳</a></li>
			            <li><a href="shop">网球</a></li>
			            <li><a href="shop">网鞋</a></li>
			            <li><a href="shop">网衣</a></li>
			            <li><a href="shop">训练</a></li>
			            <li><a href="shop">训练鞋</a></li>
			            <li><a href="shop">训练衣</a></li>
			            <li><a href="shop">培训配件</a></li>
			            <li><a href="shop">芯片</a></li>
			            <li><a href="shop">全体育</a></li>
			         </ul>
				</div>
						<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">经典系列</h3>
					<ul class="list1">
					    <li><a href="shop">原版鞋</a></li>
			            <li><a href="shop">瞪羚</a></li>
			            <li><a href="shop">桑巴舞</a></li>
			            <li><a href="shop">LA 教练</a></li>
			            <li><a href="shop">超级明星</a></li>
			            <li><a href="shop">SL</a></li>
			            <li><a href="shop">ZX</a></li>
			            <li><a href="shop">校园</a></li>
			            <li><a href="shop">特使</a></li>
			            <li><a href="shop">龙</a></li>
			            <li><a href="shop">原创衣服</a></li>
			            <li><a href="shop">火鸟</a></li>
			            <li><a href="shop">原创新款</a></li>
			            <li><a href="shop">原创男衣</a></li>
			            <li><a href="shop">原创女衣</a></li>
			            <li><a href="shop">原创童衣</a></li>
			            <li><a href="shop">原创</a></li>
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">产品类型</h3>
					<ul class="list1">
					    <li><a href="shop">短裙</a></li>
					    <li><a href="shop">裤和紧身衣</a></li>
					    <li><a href="shop">短裙</a></li>
					    <li><a href="shop">球衣</a></li>
					    <li><a href="shop">连帽衫&跟踪上衣</a></li>
					    <li><a href="shop">包</a></li>
					    <li><a href="shop">夹克</a></li>
					    <li><a href="shop">嗨顶</a></li>
					    <li><a href="shop">运动衫</a></li>
					    <li><a href="shop">袜子</a></li>
					    <li><a href="shop">泳装</a></li>
					    <li><a href="shop">运动服</a></li>
					    <li><a href="shop">帽子</a></li>
					    <li><a href="shop">足球鞋</a></li>
					    <li><a href="shop">其他配件</a></li>
					    <li><a href="shop">凉鞋和拖鞋</a></li>
					    <li><a href="shop">裙子和衣服</a></li>
					    <li><a href="shop">球</a></li>
				
		            </ul>
				</div>
				<div class="col_1_of_5 span_1_of_5">
					<h3 class="m_9">设备</h3>
					<ul class="list1">
					   <li><a href="shop">商店仪</a></li>
					   <li><a href="shop">顾客服务</a></li>
					   <li><a href="shop">常见问题解答</a></li>
					   <li><a href="shop">网上购物与我们联系</a></li>
					   <li><a href="shop">阿迪达斯产品s</a></li>
					   <li><a href="shop">尺码表 </a></li>
					   <li><a href="shop">订购 </a></li>
					   <li><a href="shop">付款 </a></li>
					   
		            </ul>
		            <ul class="sub_list2">
		               <h4 class="m_10">公司信息</h4>
			           <li><a href="shop">关于我们</a></li>
			           <li><a href="shop">职业生涯</a></li>
			           <li><a href="shop">新闻</a></li>
			        </ul>
				</div>
				<div class="clear"></div>
			</div>
       	 	</div>
       	 </div>
       	<div class="copy">
       	   <div class="wrap">
       	   	  <p>Copyright &copy; 2014.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
       	   </div>
       	 </div>
       </div>
       <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
        <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>

</body>
</html>