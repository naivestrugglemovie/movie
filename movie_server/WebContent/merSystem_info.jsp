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
		<title>系统设置</title>
		<script src="merJs/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="merJs/jquery.cookie.js" type="text/javascript"></script>
		<script src="merJs/jquery.nicescroll.js" type="text/javascript"></script>
		<script src="merJs/HUpages.js" type="text/javascript"></script>
	</head>

	<body id="pagestyle" class="padding15">
		<div class="Bombbox-info Tab-Module">
			<ul class="tab_memu box">
				<li class="boxbox-flex2">
					<a href="javascript:void(0)" class="memu_title btn btn-border clickBombbox selected" data-id="0">基本设置</a>
				</li>
				<li class="boxbox-flex2">
					<a href="javascript:void(0)" class="memu_title btn btn-border clickBombbox" data-id="1">邮件设置</a>
				</li>
				<li class="boxbox-flex2">
					<a href="javascript:void(0)" class="memu_title btn btn-border clickBombbox" data-id="2">联系方式设置</a>
				</li>
			</ul>
			<div class="tab-box tabcontent">
				<div class="tab-conent prompt_style active">
					<ul class="clearfix add_style">
					    <li class="cell-item">
						   <label class="cell-left label_name">网站名称:</label>
						   <div class="cell-right"><input name="" type="text" class="col-xs-6 col-lg-12"></div>  
					    </li>
					    <li class="cell-item">
						   <label class="cell-left label_name">网站域名:</label>
						   <div class="cell-right"><input name="" type="text" class="col-xs-6 col-lg-12"></div>  
					    </li>
					    <li class="cell-item">
						   <label class="cell-left label_name">上传文件类型:</label>
						   <div class="cell-right"><input name="" type="text" class="col-xs-6 col-lg-12" placeholder="请使用“|”隔开"></div>  
					    </li>
					    <li class="cell-item">
						   <label class="cell-left label_name">关键词:</label>
						   <div class="cell-right"><input name="" type="text" placeholder="5个左右,8汉字以内,用英文,隔开" class="col-xs-6 col-lg-12"></div>  
					    </li>
					     <li class="cell-item">
						   <label class="cell-left label_name">文件路径配置:</label>
						   <div class="cell-right"><input name="" type="text" placeholder="默认为空，为相对路径" class="col-xs-6 col-lg-12"></div>  
					    </li>
					     <li class="cell-item">
						   <label class="cell-left label_name">版权信息:</label>
						   <div class="cell-right"><input name="" type="text" placeholder="" class="col-xs-6 col-lg-12"></div>  
					    </li>
					     <li class="cell-item">
						   <label class="cell-left label_name">备案号:</label>
						   <div class="cell-right"><input name="" type="text" placeholder="" class="col-xs-4 col-lg-12"></div>  
					    </li>
					    <li class="cell-item">
						   <label class="cell-left label_name">统计代码:</label>
						   <div class="cell-right"><textarea class="textarea col-xs-4 col-lg-12 height200" ></textarea></div>  
					    </li>
					     <li class="cell-item">
						   <label class="cell-left label_name">屏蔽词:</label>
						   <div class="cell-right"><textarea class="textarea col-xs-4 col-lg-12 height200" ></textarea></div>  
					    </li>
					</ul>
					<div class="buttonstyle">
						<a href="javascript:" title="保存添加" class="btn padding10 bg-deep-blue">保存添加</a>
						
					</div>
					
				</div>
				<div class="tab-conent prompt_style ">

				</div>
				<div class="tab-conent prompt_style ">

				</div>
			</div>
		</div>
	</body>

</html>
<script>
	//内页框架
	$(function() {
		$("#pagestyle").Hupage({
			pagecontent:'.Bombbox-info',//自定义属性
			tabcontent:'.tabcontent',
			tabmemu:'.tab_memu',
			scrollbar: function(e) {
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
				 $(settings.pagecontent).css({height:$(window).height()-30});
				settings.scrollbar($(settings.tabcontent).css({height:$(window).height()-$(settings.tabmemu).outerHeight()-30}));
			}
		})
	})
</script>