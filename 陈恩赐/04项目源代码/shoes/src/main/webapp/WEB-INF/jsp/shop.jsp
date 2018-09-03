<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script src="js/jquery.easydropdown.js"></script>
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
		<div align = "center">
			<form action="/doSearch" method ="post">
				<label>请输入要查询的商品名：</label><input type = "text" name = "name" id = "txt_type"> 
				<input type ="submit" value = "提交" >
			</form>
		</div>
		
		<div class="cont span_2_of_3">
		  <div class="mens-toolbar">
              <div class="sort">
               	<div class="sort-by">
		            <label>排序</label>
<!-- 		            <select > -->
<!-- 		                            <option value=""><a href="#">流行</a> -->
<!-- 		                                       </option> -->
<!-- 		                            <option value="desc"> -->
<!-- 		                               	 	价格：高到底 </option> -->
<!-- 		                            <option value="asc"> -->
<!-- 		                        	   		     价格：低到高 </option>  </option> -->
<!-- 		            </select> -->
<!-- 		           <a href=""><img src="images/arrow2.gif" alt="" class="v-middle"></a> -->
		            <a id="desc" href="#" onclick ="desc_sort()">价格：高到底</a>
		             <a id ="asc" href="#" onclick = "asc_sort()">价格：低到高</a>
		            
               </div>
    		</div>
    		<script type="text/javascript" src="js/jquery.min.js"></script>
    		<script>
	    		function desc_sort(){
	    			var val = document.getElementById("txt_type").value;
	    			document.getElementById("desc").href = "/doSort?way=desc&type="+val; 
					
	    		}
	    		function asc_sort(){
	    			var val = document.getElementById("txt_type").value;
	    			document.getElementById("asc").href = "/doSort?way=asc&type="+val; 
					
	    		}
    		</script>
    		
    		
	          <div class="pager">   
	           <div class="limiter visible-desktop">
	            <label>展示</label>
	            <select>
	                            <option value="" selected="selected">
	                    9                </option>
	                            <option value="">
	                    15                </option>
	                            <option value="">
	                    30                </option>
	                        </select> 每一页        
	             </div>
	       		<ul class="dc_pagination dc_paginationA dc_paginationA06">
				    <li><a href="#" class="previous">页数</a></li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
			  	</ul>
		   		<div class="clear"></div>
	    	</div>
     	    <div class="clear"></div>
	       </div>
			   
				    
					  
		    	      
		    	      <c:forEach items="${goods }" var="item" varStatus ="ide">
		    	      <c:set var="pics" value="${fn:split(item.prepicture, ',')}"/>
						 <ul class="list2">
						  <li>
						  	<img src="images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="/doAddCart?productid=${item.productid}&pname=${item.pname}&price=${item.price}&picture=${pics[0]}">加入包裹 </a>
								<ul class="sub-icon1 list">
									<li><h3>sed diam nonummy</h3><a href=""></a></li>
									<li><p>洛伦·伊普姆·杜洛埃坐在神坛上，神圣化了  <a href="">adipiscing elit, sed diam</a></p></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
						<div class="box1">
				    <div class="col_1_of_single1 span_1_of_single1"><a href="single?pname=${item.pname }&price=${item.price}&prepicture=${item.prepicture}&pdescribe=${item.pdescribe}">
				     <div class="view1 view-fifth1">
				     
				  	  <div class="top_box">
					  	<h3 class="m_1">${item.pname }</h3>
					  	<p class="m_2">${item.pdescribe}</p>
				         <div class="grid_img">
						   <div class="css3"><img src="images/${pics[0] }.jpg" height="173" width ="250" alt=""/></div>
					          <div class="mask1">
	                       		<div class="info">快速视图</div>
			                  </div>
	                    </div>
                       <div class="price">£${item.price}</div>
					   </div>
					    </div>
					   <span class="rating1">
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
						 
						 <ul class="list2">
						  <li>
						  	<img src="images/plus.png" alt=""/>
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">加入包裹 </a>
								<ul class="sub-icon1 list">
									<li><h3>sed diam nonummy</h3><a href=""></a></li>
									<li><p>洛伦·伊普姆·杜洛埃坐在神坛上，神圣化了  <a href="">adipiscing elit, sed diam</a></p></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</a></div>
				  <div class="clear"></div>
			  </div>
			  
			  <div class="clear"></div>
			</div>
		   </div>
	     <div class="footer">
       	   <div class="footer-top">
       		<div class="wrap">
       			   <div class="col_1_of_footer-top span_1_of_footer-top">
				  	 <ul class="f_list">
				  	 	<li><img src="images/f_icon.png" alt=""/><span class="delivery">所有订单都免费送货 </span></li>
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