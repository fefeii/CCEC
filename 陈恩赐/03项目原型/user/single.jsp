<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Single</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
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
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!----details-product-slider--->
				<!-- Include the Etalage files -->
					<link rel="stylesheet" href="css/etalage.css">
					<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
						jQuery(document).ready(function($){
			
							$('#etalage').etalage({
								thumb_image_width: 300,
								thumb_image_height: 400,
								
								show_hint: true,
								click_callback: function(image_anchor, instance_id){
									alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
								}
							});
							// This is for the dropdown list example:
							$('.dropdownlist').change(function(){
								etalage_show( $(this).find('option:selected').attr('class') );
							});

					});
				</script>
				<!----//details-product-slider--->	
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

       <div class="single">
         <div class="wrap">
     	    <div class="rsidebar span_1_of_left">
				   <section  class="sky-form">
                   	  <h4>场合</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>运动 (20)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>运动鞋 (48)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>休闲 (45)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>休闲 (45)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>其它 (1)</label>
						    </div>
						 </div>
                   	 <h4>类别</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>公寓 (70)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>运动鞋 (48)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>运动鞋 (48)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>高跟鞋 (38)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>其它 (1)</label>
						    </div>
						</div>
					  <h4>款式</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>运动 (20)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>芭蕾舞女演员 (5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>泵 (7)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>嗨顶 (2)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>其它 (1)</label>
						    </div>
						</div>
				  </section>
		          <section  class="sky-form">
					<h4>品牌</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>阿迪达斯的斯特拉·麦卡特尼</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>亚瑟士</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>布洛赫</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>布洛赫的孩子</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>凯裴佐</label>
								<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>凯裴佐孩子</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>耐克</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>尊巴</label>
							</div>
						</div>
		         </section>
		         <section  class="sky-form">
					<h4>鞋跟高度</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>公寓 (20)</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Under 1in(5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>1in - 1 3/4 in(5)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>2in - 2 3/4 in(3)</label>
								<label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>3in - 3 3/4 in(2)</label>
							</div>
						</div>
		        </section>
		        <section  class="sky-form">
					<h4>价格</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>$50.00 and $100.00</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$100.00 and $200.00</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$200.00 and $300.00</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$300.00 and $400.00</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>$400.00 以上</label>
							</div>
						</div>
		        </section>
		        <section  class="sky-form">
					<h4>颜色</h4>
						<div class="row row1 scroll-pane">
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>红色</label>
							</div>
							<div class="col col-4">
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i></label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>黑色</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>黄色</label>
								<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>橙色</label>
							</div>
						</div>
		        </section>
		</div>
	    <c:set var="pics" value="${fn:split(param.prepicture, ',')}"/>
		<div class="cont span_2_of_3">
			  <div class="labout span_1_of_a1">
				<!-- start product_slider -->
				     <ul id="etalage">
							<li>
								<a href="optionallink">
									<img class="etalage_thumb_image" src="images/${pics[0]}.jpg" />
									<img class="etalage_source_image" src="images/${pics[0]}.jpg" />
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/${pics[1]}.jpg" />
								<img class="etalage_source_image" src="images/${pics[1]}.jpg" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/${pics[2]}.jpg" />
								<img class="etalage_source_image" src="images/${pics[2]}.jpg" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/${pics[3]}.jpg" />
								<img class="etalage_source_image" src="images/${pics[3]}.jpg" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="images/${pics[0]}.jpg" />
								<img class="etalage_source_image" src="images/${pics[0]}.jpg" />
							</li>

						</ul>
					
					
			<!-- end product_slider -->
			</div>
			<div class="cont1 span_2_of_a1">
				<h3 class="m_3">${param.pname }</h3>
				
				<div class="price_single">
<!-- 							  <span class="reducedfrom">$66.00</span> -->
							  <span class="actual">$ ${param.price}</span><a hrefd="#">${param.pdescribe}</a>
							</div>
				<ul class="options">
					<h4 class="m_9">Select a Size</h4>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<div class="clear"></div>
				</ul>
				<div class="btn_form">
				   <form>
					 <input type="submit" value="buy now" title="">
				  </form>
				</div>
				<ul class="add-to-links">

    			   <li><img src="images/wish.png" alt=""/><a href="#">加入列表</a></li>
    			</ul>
    			<p class="m_desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
    			
                <div class="social_single">	
				   <ul>	
					  <li class="fb"><a href="#"><span> </span></a></li>
					  <li class="tw"><a href="#"><span> </span></a></li>
					  <li class="g_plus"><a href="#"><span> </span></a></li>
					  <li class="rss"><a href="#"><span> </span></a></li>		
				   </ul>
			    </div>
			</div>
			<div class="clear"></div>
     
     
         <ul id="flexiselDemo3">
			<li><img src="images/pic11.jpg" /><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li>
			<li><img src="images/pic10.jpg" /><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li>
			<li><img src="images/pic9.jpg" /><div class="grid-flex"><a href="#">Zumba</a><p>Rs 850</p></div></li>
			<li><img src="images/pic8.jpg" /><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li>
			<li><img src="images/pic7.jpg" /><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li>
		 </ul>
	    <script type="text/javascript">
		 $(window).load(function() {
			$("#flexiselDemo1").flexisel();
			$("#flexiselDemo2").flexisel({
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		
			$("#flexiselDemo3").flexisel({
				visibleItems: 5,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	 <div class="toogle">
     	<h3 class="m_3">产品详情</h3>
     	<p class="m_text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
     </div>					
	 <div class="toogle">
     	<h3 class="m_3">产品评论</h3>
     	<p class="m_text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
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
			        <dt><a href="#"><span>Please Select a Country</span></a></dt>
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
						<li><span class="m_8">注册电子邮件，享受15%的折扣</span>
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
       	   	  <p>Copyright &copy; 2014.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a></p>
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