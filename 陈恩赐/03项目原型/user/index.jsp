<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
 
       <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>
       <div class="index-banner">
       	  <div class="wmuSlider example1" style="height: 560px;">
			  <div class="wmuSliderWrapper">
				  <article style="position: relative; width: 100%; opacity: 1;"> 
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>洛伦姆，我是杜洛埃</p>
						    <div class="btn"><a href="shop">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
					</article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>洛伦姆，我是杜洛埃</p>
						    <div class="btn"><a href="shop">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>洛伦姆，我是杜洛埃</p>
						    <div class="btn"><a href="shop">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner2.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>洛伦姆，我是杜洛埃</p>
						    <div class="btn"><a href="shop">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<img src="images/banner1.jpg" alt=""/> 
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>洛伦姆，我是杜洛埃</p>
						    <div class="btn"><a href="shop">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
			      </article>
				</div>
                <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                	<li><a href="#">3</a></li>
                	<li><a href="#">4</a></li>
                  </ul>
                 <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a><ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li><li><a href="#" class="">1</a></li><li><a href="#" class="">2</a></li><li><a href="#" class="">3</a></li><li><a href="#" class="">4</a></li></ul></div>
            	 <script src="js/jquery.wmuSlider.js"></script> 
				 <script type="text/javascript" src="js/modernizr.custom.min.js"></script> 
						<script>
       						 $('.example1').wmuSlider();         
   						</script> 	           	      
             </div>
             <div class="main">
                <div class="wrap">
             	  <div class="content-top">
             		<div class="lsidebar span_1_of_c1">
					  <p>洛伦姆，我是杜洛埃, consectetuer adipiscing</p>
					</div>
					<div class="cont span_2_of_c1">
					  <div class="social">	
					     <ul>	
						  <li class="facebook"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"><a href="#"> </a></div><div class="border hide"><p class="num">1.51K</p></div></li>
						 </ul>
			   		   </div>
					   <div class="social">	
						   <ul>	
							  <li class="twitter"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">1.51K</p></div></li>
						  </ul>
			     		</div>
						 <div class="social">	
						   <ul>	
							  <li class="google"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">1.51K</p></div></li>
						   </ul>
			    		 </div>
						 <div class="social">	
						   <ul>	
							  <li class="dot"><a href="#"><span> </span></a><div class="radius"> <img src="images/radius.png"></div><div class="border hide"><p class="num">1.51K</p></div></li>
						  </ul>
			     		</div>
						<div class="clear"> </div>
					  </div>
					  <div class="clear"></div>			
				   </div>
				  <div class="content-bottom">
				   <div class="box1">
				    <div class="col_1_of_3 span_1_of_3"><a href="single">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">洛伦姆，我是杜洛埃</h3>
					  	<p class="m_2">Lorem ipsum</p>
				         <div class="grid_img">
						   <div class="css3"><img src="images/pic.jpg" alt=""/></div>
					          <div class="mask">
	                       		<div class="info">快速视图</div>
			                  </div>
	                    </div>
                       <div class="price">£480</div>
					   </div>
					    </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
		    	      
		    	      <c:forEach items="${goods }" var="item" varStatus ="ide">
		    	      <c:set var="pics" value="${fn:split(item.prepicture, ',')}"/>
						 <ul class="list">
						  <li>
						  	<img src="images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">加入包裹 </a>
								<ul class="sub-icon1 list">
									<li><h3>sed diam nonummy</h3><a href=""></a></li>
									<li><p>洛伦姆，我是杜洛埃, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
			    	<c:if test="${ide.count %3 == 0 }"><div class="box1"></c:if>
				    <div class="col_1_of_3 span_1_of_3"><a href="single?pname=${item.pname }&price=${item.price}&prepicture=${item.prepicture}&pdescribe=${item.pdescribe}">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<h3 class="m_1">${item.pname }</h3>
					  	<p class="m_2">Lorem ipsum</p>
					    <div class="grid_img">
						   <div class="css3"><img src="images/${pics[0]}.jpg" height="173" width ="250" alt=""/></div>
					          <div class="mask">
	                       		<div class="info">快速视图</div>
			                  </div>
	                    </div>
                       <div class="price">£${item.price}</div>
					   </div>
					    </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
 					</c:forEach>
 					
 					
 					
						 <ul class="list">
						  <li>
						  	<img src="images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">加入包裹 </a>
								<ul class="sub-icon1 list">
									<li><h3>sed diam nonummy</h3><a href=""></a></li>
									<li><p>洛伦姆，我是杜洛埃, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				  <div class="clear"></div>
			    </div>
			  </div>
			 </div>
        </div>
        
          <%	HttpSession se = request.getSession(); 
   			int pageNow = (Integer)se.getAttribute("page");
//    			int pageTotal = (Integer)se.getAttribute("totalPage");
//    			int total = (Integer)se.getAttribute("total");
   			int pageSize = (Integer)se.getAttribute("pageSize");
   			int pageNext = pageNow +pageSize;
   			int pagePre = pageNow -pageSize;

   			System.out.println("---"+pageNow);
   		 %>
        

        <form action="index " method ="get" id ="page_sort">
      	  <div class="row">
			  <div class="col-md-1"></div>
			  <div class="col-md-1"></div>
			  <div class="col-md-1"></div>
			  <div class="col-md-1"></div>
			  <div class="col-md-1"><input type = "button" value ="上一页" class = "btn" onclick = 'actionChangePre()'></div>
			  <div class="col-md-1"><%=pageNow/pageSize +1%>/</div>
			  <div class="col-md-1"><%=8/pageSize +1 %></div>
			  <div class="col-md-1"><input type = "button" value ="下一页" class = "btn" onclick = 'actionChangeNext()'></div>
			  <div class="col-md-1"></div>
			  <div class="col-md-1"></div>
			  <div class="col-md-1"></div>
			  <div class="col-md-1"></div>
			</div>
			<input type = "hidden" name ="page" value = "">
			
		</form>
   		 <input type ="hidden" value ='<%=pagePre %>' id = 'pre'  >
   		 <input type ="hidden" value ='<%=pageNext %>' id ='next' >
<%--    		 <input type ="hidden" value ='<%=pageTotal %>' id ='total' > --%>
		
		<script>
			var pagenext = document.getElementById("next").value;
			var pagepre = document.getElementById("pre").value;
//  			var total = document.getElementById("total").value;
			var total = 8;
			var tar = document.getElementById("page_sort");
		
			function actionChangeNext(){
			if(pagenext<=total){
				
				document.forms[0].page.value = pagenext;
				document.forms[0].submit();
			}else{
				alert("当前是最后一页");
			}
// 			 	$("form").attr('action',next);
			
				
			}
			
			function actionChangePre(){
			if(pagepre>=0){
				document.forms[0].page.value = pagepre;
				document.forms[0].submit();
			}else{
				alert("当前为第一页!");
			}
				
			}
		
		</script>
<br><br>

        
        <div class="footer">
       	  <div class="footer-top">
       		<div class="wrap">
       			   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	 <ul class="f_list">
				  	 	<li><img src="images/f_icon.png" alt=""/><span class="delivery"> 所有订单都免费送货 </span></li>
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
			                <li><a href="#">Australia<img class="flag" src="images/as.png" alt="" /><span class="value">AS</span></a></li>
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
						<li><span class="m_8">Sign up for email and Get 15% off</span>
						<div class="search">	  
							<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="Subscribe" id="submit" name="submit">
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