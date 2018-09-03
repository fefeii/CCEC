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
        
        
        function checkUserName() {
			//得到用户输入的用户名
			var uname = document.getElementById("account").value;
			//按照规则来校验
			var umg = document.getElementById("usernamemsg");

			//4-15位，字母开头，字母数字组合
			//正则表达式
			var reg_user = /^[a-zA-Z][a-zA-Z0-9]{3,14}$/;
			//验证 test
			//匹配
			var flag = reg_user.test(uname);

			if(flag) {
				//判断一下组合,uname是否包含数字
				var reg_user_number = /[0-9]/; // /\d/
				//使用test匹配
				if(reg_user_number.test(uname)) {
					umg.innerHTML = "格式正确";
					return true;
				} else {
					//格式错误.没有包含数字
					umg.innerHTML = "格式错误.没有包含数字";
					return false;
				}
			} else {
				umg.innerHTML = "用户名不能为空,且必须字母开头，4-15位,字母数字组合"
				return false;
			}

		}
		
		
		function checkPwd() {
			//得到用户输入的用户名
			var pwd = document.getElementById("pwd").value;
			//按照规则来校验
			var pwdmsg = document.getElementById("pwdmsg");

			//字母数字组合,6-20位
			//正则表达式
			var reg_pwd = /^[a-zA-Z0-9]{6,20}$/;
			//验证 test
			//匹配
			var flag = reg_pwd.test(pwd);

			if(flag) {
				//判断一下组合,uname是否包含数字
				var reg_pwd_number = /\d/; // 
				//使用test匹配
				if(reg_pwd_number.test(pwd)) {
					var reg_pwd_number2 = /[a-zA-Z]/; // 
					if(reg_pwd_number2.test(pwd)) {
						pwdmsg.innerHTML = "格式正确";
						return true;
					} else {
						//格式错误.没有包含数字
						pwdmsg.innerHTML = "格式错误.没有包含字母";
						return false;
					}
					
				} else {
					//格式错误.没有包含数字
					pwdmsg.innerHTML = "格式错误.没有包含数字";
					return false;
				}

			} else {
				pwdmsg.innerHTML = "格式错误";
				return false;
			}

		}
		
		
		function checkSex() {
			//得到用户输入的用户名
			var sex = document.getElementById("sex").value;
			//按照规则来校验
			var sexmsg = document.getElementById("sexmsg");

			//字母数字组合,6-20位
			//正则表达式
			var reg_sex =/^\s*$/g;
			//验证 test
			//匹配
			var flag = reg_sex.test(sex);

			if(flag) {
						sexmsg.innerHTML = "格式错误";
						return false;
					} 
			else {
						//格式错误.没有包含数字
						sexmsg.innerHTML = "格式正确";
						return true;
					}
					

		}
		
		function checkEmail() {
			//得到用户输入的用户名
			var email = document.getElementById("email").value;
			//按照规则来校验
			var emailmsg = document.getElementById("emailmsg");

			//字母数字组合,6-20位
			//正则表达式
			var reg_email =/^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
			//验证 test
			//匹配
			var flag = reg_email.test(email);

			if(flag) {
						emailmsg.innerHTML = "邮箱格式正确";
						return true;
					} 
			else {
						//格式错误.没有包含数字
						emailmsg.innerHTML = "邮箱格式错误";
						return false;
					}
					

		}
		
		function checkephone() {
			//得到用户输入的用户名
			var tel = document.getElementById("tel").value;
			//按照规则来校验
			var telmsg = document.getElementById("telmsg");

			//字母数字组合,6-20位
			//正则表达式
			var reg_tel =/^[1][3,4,5,7,8][0-9]{9}$/;
			//验证 test
			//匹配
			var flag = reg_tel.test(tel);

			if(flag) {
						telmsg.innerHTML = "手机格式正确";
						return true;
					} 
			else {
						//格式错误.没有包含数字
						telmsg.innerHTML = "手机格式错误";
						return false;
					}
					

		}
		
		function checkAll() {
				if (checkUserName()&&checkPwd()&&checkephone()&&checkEmail()&&checkSex()) {
							return true;
						} else{
							return false;
						}
					}
        
        
        
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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
           
<c:import url="header.jsp" charEncoding="utf-8" />
     
  <div class="register_account">
  <div class="container">
          	<div class="wrap">
    	      <h4 class="title">创建帐户</h4>
    	      <li>${tip3 }</li>
         
                    <form class="form-horizontal" action="/HE/shop/reg" method="post" onsubmit="return checkAll()">    			
                     <div class="col_1_of_2 span_1_of_2">
    			
    			
    			 <div class="form-group">
						<label for="username" class="col-md-2 control-label">用户名</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="usernamemsg">*4-15位，字母开头，字母数字组合</span>
		   			 <div><input type="text" id="account" name="account" class="form-control" value="" onblur="checkUserName()"/></div></div>
		    			
		    			<div class="form-group">
						<label for="pwd" class="col-md-2 control-label">密码</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="pwdmsg">字母数字组合,6-20位</span>
		    			<div><input type="text" id="pwd" name="pwd" class="form-control" value="" onblur="checkPwd()" /></div></div>
		    			
		    			
		    			<div class="form-group">
						<label for="sex" class="col-md-2 control-label">性别</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="sexmsg">不为空</span>
		    			<div><input type="text" id="sex" name="sex" class="form-control" value="" onblur="checkSex()" ></div></div>
		    		
		    	 </div>
		    	 
		    	 
		    	  <div class="col_1_of_2 span_1_of_2">	
		    	  <div class="form-group">
						<label for="email" class="col-md-2 control-label">邮箱</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="emailmsg">不能为空,满足邮箱格式 user@xx.com</span>
		    	  <div><input type="text" id="email" name="email" class="form-control" value="" onblur="checkEmail()"></div></div>
		    	  
		    	  
		    	  
		    	  
		    	  <div class="form-group">
						<label for="tel" class="col-md-2 control-label">电话</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="telmsg">不能为空,必须为11位</span>
		    		<div><input type="text" id="tel" name="tel" class="form-control" value=""  onblur="checkephone()"></div></div>
		    		
		          </div>
		       
					<button class="grey">提交</button>

				
		         <p class="terms">通过点击“创建帐户”，您同意 <a href="#">条款,条件</a>.</p>
		         <div class="clear"></div>
		    </form>
    	  </div> 
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