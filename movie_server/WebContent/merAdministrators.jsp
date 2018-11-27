<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
		<meta name="format-detection" content="telephone=no, email=no, date=no, address=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="format-detection" content="telephone=no" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style">
		<link href="merCss/bksystem.css" rel="stylesheet" type="text/css" /> 
		<link href="merFont/iconfont.css" rel="stylesheet" type="text/css" />
		<link href="merCss/module.css" rel="stylesheet" type="text/css" />
		<link href="merCss/pages.css" rel="stylesheet" type="text/css" />
		<title>个人信息</title>
		<script src="merJs/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="merJs/jquery.cookie.js" type="text/javascript"></script>
		<script src="merJs/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="merJs/HUpages.js" type="text/javascript"></script>
	</head>
	<body id="pagestyle" class="backgrounddd">
		 <div class="bk-con-message message-section" id="iframe_box">
			<div class="box-module height100b margin0">
				<div class="box-title">个人信息</div>
				<div class="box-content padding15">
					<div class="Promp_plate btn-green "><b>提示：</b>如果你喜欢我的框架，不妨捐赠，无论金额大小，都非常感谢，同时也是对我努力的回报，同时会更好的完善框架。
						<span  class="iconfont PrompClose">&#xe627</span>
					</div>
					<div class="clearfix ptb20">
						<div class="col-lg-6 padding15">
						   <div class="box-module boxcolor">
						   <div class="box-title btn-green clickBombbox selected" data-type="arrow">微信捐赠 <i class="iconfont icon-35_xiangxiajiantou arrow"></i></div>
						   <div class="box-content padding15 text-center Bombbox">
						   	<img src="merImages/stencil/wx.png" width="200px">
                          </div>
						   </div>
						</div>
						<div class="col-lg-6 padding15">
						   <div class="box-module boxcolor">
						   <div class="box-title btn-blue clickBombbox selected" data-type="arrow">支付宝捐赠 <i class="iconfont icon-35_xiangxiajiantou arrow"></i></div>
						   <div class="box-content padding15 text-center Bombbox" >
						   	<img src="merImages/stencil/zfb.jpg" width="200px">
                          </div>
						   </div>
						</div>
					</div>	
				</div>
			</div>
	    </div>
	</body>
</html>
<script>
	$(function() {
		$("#pagestyle").Hupage({
			slide: '#breadcrumb',
			scrollbar:function(e){
				e.niceScroll({
					      cursorcolor: "#dddddd",
					      cursoropacitymax: 1,
					      touchbehavior: false,
					      cursorwidth: "3px",
					      cursorborder: "0",
					      cursorborderradius: "3px",
				 });						
			},
			expand: function(thisBox, settings) {
				settings.scrollbar(thisBox);//设置当前页滚动样式
			}
		})
	})
</script>