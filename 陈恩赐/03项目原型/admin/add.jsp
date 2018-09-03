
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
  		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script src="js/jquery.min.js"></script>   
		<script src="js/bootstrap.min.js"></script>  
		<link rel="stylesheet" href="css/main.css" />
 </HEAD>
 <script type="text/javascript" src="js/jquery.min.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			var tip = document.getElementById("delete");
			if(tip!=null){
				alert(tip.value);
			}
			
	</script>
 <BODY>

<form action ="/HE/admin/doAdd" method = "get">

    <h4 style="font-size:16px; text-align:center; font-weight:bold;">商品信息添加</h4>    
 <div class="content">
    	<div class="register-box">
        	<div class="wrap">
                <div class="register-box-con2">             	
                    <div class="register-box-con2-box clearfix mar-bottom20">
                    	<label class="register-box-con2-box-left"><em class="bitian">*</em>商品名称</label>
                        <div class="register-box-con2-box-right">
                        	<input type="text" name ="pname" class="login-box-cen-form-input w358" placeholder="请输入商品名称，不超过20个字" id="reg_info_company"/>
                        	<label id="reg_info_company_text"  class="err err-top40">不超过20个字</label>
                        </div>
                    </div>
                    <div class="register-box-con2-box clearfix mar-bottom20">
                    	<label class="register-box-con2-box-left"><em class="bitian"></em>商品类型</label>
                        <div class="register-box-con2-box-right">
                        	<input type="text" name = "ptypeid" class="login-box-cen-form-input w358" placeholder="请输入商品类型"  />
                        	
                        </div>
                    </div>
                    <div class="register-box-con2-box clearfix mar-bottom20">
                    	<label class="register-box-con2-box-left"><em class="bitian"></em>商品价格</label>
                        <div class="register-box-con2-box-right">
                        	<input type="text" name="price" class="login-box-cen-form-input w358" placeholder="商品价格" id="reg_info_address" />
                        	<label class="err err-top40" id="reg_info_address_text">公司所在地址，不超过40个字</label>
                        </div>
                    </div>
                    <div class="register-box-con2-box clearfix mar-bottom20">
                    	<label class="register-box-con2-box-left"><em class="bitian"></em>商品简介</label>
                        <div class="register-box-con2-box-right">
                        	<textarea name="pdescribe" class="login-box-cen-form-textarea w358 h88" id="reg_info_textarea" placeholder="简介不超过200个字....."></textarea>
                        	<label class="err err-top90" id="reg_info_textarea_text">简介不超过200个字</label>
                        </div>
                    </div>
                    
                    <div class="register-box-con2-box clearfix mar-bottom20">
                    	<label class="register-box-con2-box-left"><em class="bitian">*</em>商品品牌</label>
                        <div class="register-box-con2-box-right">
                        	<input type="text" name = "pmodel" class="login-box-cen-form-input w358" placeholder="请输入商品品牌" id="reg_info_name" />

                        </div>
                    </div>

                    <div class="register-box-con2-box clearfix mar-bottom20">
                    	<label class="register-box-con2-box-left"><em class="bitian">*</em>商品图片</label>
                        <div class="register-box-con2-box-right">
                        	<label class="register-box-con2-box-upload">
                            	<input type="file" name="file" id="reg_info_file" />
                                <div class="register-box-con2-box-upload-ti"><em id="reg_info_file_w">上传</em><img id="reg_info_file_base64" style="display:none;"/></div>
                            </label>
                            <p class="register-box-con2-box-pw">1.支持图片格式JPG/PNG，图片大小不超过2M</p>
                            <p class="register-box-con2-box-pw">2.上传名片，便于联系开发者进行审核等重要事项</p>
                            <label class="err err-top160" id="reg_info_file_text">支持图片格式JPG/PNG，图片大小不超过2M</label>
                        </div>
                    </div>
                    <div class="register-box-con2-box clearfix mar-bottom20 mar-top50">
                    	<label class="register-box-con2-box-left"></label>
                        <div class="register-box-con2-box-right">
                        	<input type="submit" value="提交申请" class="login-box-cen-form-button w380" />
                        </div>
                    </div>
                    
                </div>
            </div>        	
        </div>	
    </div>
</div>
</form>

			<%				HttpSession se = request.getSession();
							String name = (String)se.getAttribute("tip_cart_delete");
			%>
			<%if(se.getAttribute("tip_cart_delete")!=null){ %>
			<input type = "hidden" id ="delete" value =<%=name %>>
			<%} %>

 </BODY>
</HTML>
