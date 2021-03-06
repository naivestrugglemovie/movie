<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>登录</title>
<link rel="stylesheet" href="userCss/normalize.css">
<link rel="stylesheet" href="userCss/login.css">
<link rel="stylesheet" href="userCss/sign-up-login.css">
<link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<link rel="stylesheet" href="userCss/inputEffect.css" />
<link rel="stylesheet" href="userCss/tooltips.css" />
<link rel="stylesheet" href="userCss/spop.min.css" />

<script src="js/jquery.min.js"></script>
<script src="js/snow.js"></script>
<script src="js/jquery.pure.tooltips.js"></script>
<script src="js/spop.min.js"></script>

<script>	
	(function() {
		// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
		if (!String.prototype.trim) {
			(function() {
				// Make sure we trim BOM and NBSP
				var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
				String.prototype.trim = function() {
					return this.replace(rtrim, '');
				};
			})();
		}

		[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
			// in case the input is already filled..
			if( inputEl.value.trim() !== '' ) {
				classie.add( inputEl.parentNode, 'input--filled' );
			}

			// events:
			inputEl.addEventListener( 'focus', onInputFocus );
			inputEl.addEventListener( 'blur', onInputBlur );
		} );

		function onInputFocus( ev ) {
			classie.add( ev.target.parentNode, 'input--filled' );
		}

		function onInputBlur( ev ) {
			if( ev.target.value.trim() === '' ) {
				classie.remove( ev.target.parentNode, 'input--filled' );
			}
		}
	})();
	
	$(function() {	
		$('#login #login-password').focus(function() {
			$('.login-owl').addClass('password');
		}).blur(function() {
			$('.login-owl').removeClass('password');
		});
		$('#login #register-password').focus(function() {
			$('.register-owl').addClass('password');
		}).blur(function() {
			$('.register-owl').removeClass('password');
		});
		$('#login #register-repassword').focus(function() {
			$('.register-owl').addClass('password');
		}).blur(function() {
			$('.register-owl').removeClass('password');
		});
		$('#login #forget-password').focus(function() {
			$('.forget-owl').addClass('password');
		}).blur(function() {
			$('.forget-owl').removeClass('password');
		});
	});
	
	function goto_register(){
		$("#register-username").val("");
		$("#register-password").val("");
		$("#register-repassword").val("");
		$("#register-code").val("");
		$("#tab-2").prop("checked",true);
	}
	
	function goto_login(){
		$("#login-username").val("");
		$("#login-password").val("");
		$("#tab-1").prop("checked",true);
	}
	
	function goto_forget(){
		$("#forget-username").val("");
		$("#forget-password").val("");
		$("#forget-code").val("");
		$("#tab-3").prop("checked",true);
	}
	
	function login(){//登录
		var username = $("#login-username").val(),
			password = $("#login-password").val(),
			validatecode = null,
			flag = false,
			flagAccount = -1;
		//判断用户名密码是否为空
		if(username == ""){
			//window.location.href="index.jsp";
			$.pt({
        		target: $("#login-username"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"用户名不能为空"
        	});
			flag = true;
		}
		if(password == ""){
			$.pt({
        		target: $("#login-password"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"密码不能为空"
        	});
			flag = true;
		}
		//格式错误 请填写手机号或邮箱或用户名
		var regExp1 = new RegExp("^[a-zA-Z0-9_]{6,18}$");
		var regExp2 = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
		var regExp3 = new RegExp("^1[3|4|5|8][0-9]\d{4,8}$");
		if(regExp1.test(username))
			flagAccount = 1;
		else if(regExp2.test(username))
			flagAccount = 2;
		else if(regExp3.test(username))
			flagAccount = 3;
		else{
			$.pt({
        		target: $("#login-username"),
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:"格式错误 请填写手机号或邮箱或用户名"
        	});
			flag = true;
		}
		
		if(flag){
			return false;
		}else{//登录
			//调用后台登录验证的方法
			var data = {
				userPwd:password
			};
			if(flagAccount == 1)
				data.userAccount = username;
			else if(flagAccount == 2)
				data.userEmail = username;
			else if(flagAccount == 3)
				data.userTel = username;
			$.post("<c:url value='/user.s?method=login' />",data,function(data){
				if(data != null && data != ""){
					if(data.indexOf("密码") != -1){
						$.pt({
			        		target: $("#login-password"),
			        		position: 'r',
			        		align: 't',
			        		width: 'auto',
			        		height: 'auto',
			        		content: data
			        	});
					}else if(data.indexOf("账号") != -1){
						$.pt({
			        		target: $("#login-username"),
			        		position: 'r',
			        		align: 't',
			        		width: 'auto',
			        		height: 'auto',
			        		content: data
			        	});
					}else{
						alert(data);
					}
				}else{
					//登录成功
					var path = $("#refererPath").val();
					//alert(path);
					if(path != null && path != ""){
						window.location.href=$("#refererPath").val();
					}else{
						window.location.href="index.jsp";
					}
				}
			});
			return false;
		}
	}
	//重置密码
	function updateUser(num){
		var objName,objCode,objPwd,objPwd2,objVerify;
		if(num == 1){
			objName = $("#forget-username");
			objCode = $("#forget-code");
			objPwd = $("#forget-password");
			objPwd2 = $("#forget-password2");
			objVerify = $("#forget-verify");
		}else if(num == 2){
			objName = $("#register-username");
			objCode = $("#register-code");
			objPwd = $("#register-password");
			objPwd2 = $("#register-password2");
			objVerify = $("#register-verify");
		}
		var username = objName.val(),
			code = objCode.val(),
			password = objPwd.val(),
			password2 = objPwd2.val(),
			verify = objVerify.val(),
			flag = false,
			validatecode = null;
		//判断用户名密码是否为空
		var tar;
		var text;
		if(username == ""){
			tar = objName;
			text = "用户名不能为空";
		}else if(code == ""){
			tar = objCode;
			text = "手机号或邮箱不能为空";
		}else if(password == ""){
			tar = objPwd;
			text = "密码不能为空";
		}else if(password2 == ""){
			tar = objPwd2;
			text = "确认密码不能为空";
		}else if(verify == ""){
			tar = objVerify;
			text = "验证码不能为空";
		}
		if(tar != null){
			$.pt({
        		target: tar,
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:text
        	});
			flag = true;
		}
		if(flag){
			return false;
		}else{//重置密码
			var data = {
				userAccount : username,
				code : code,
				userPwd : password,
				userPwd2 : password2,
				verify : verify
			};
			$.post("<c:url value='/user.s?method=updateUser&num="+num+"' />",data,function(data){
				if(data != null && data != ""){
					var tar1;
					if(data.indexOf("手机号/邮箱 与用户名不匹配") != -1){
						tar1 = objCode;
					}else if(data.indexOf("手机号/邮箱 已被其他用户绑定") != -1){
						tar1 = objCode;
					}else if(data.indexOf("手机号/邮箱 不存在或未绑定用户") != -1){
						tar1 = objCode;
					}else if(data.indexOf("用户名") != -1){
						tar1 = objName;
					}else if(data.indexOf("手机号/邮箱") != -1){
						tar = objCode;
					}else if(data.indexOf("确认密码") != -1){
						tar1 = objPwd2;
					}else if(data.indexOf("两次输入的密码不相同") != -1){
						tar1 = objPwd2;
					}else if(data.indexOf("密码") != -1){
						tar1 = objPwd;
					}else if(data.indexOf("验证码") != -1){
						tar1 = objVerify;
					}else{
						alert(data);
						return false;
					}
					if(tar1 != null && tar1 != ""){
						$.pt({
			        		target: tar1,
			        		position: 'r',
			        		align: 't',
			        		width: 'auto',
			        		height: 'auto',
			        		content:data
			        	});
					}
				}else{
					var str;
					if(num == 1){
						str = "重置密码";
					}else if(num == 2){
						str = "注册";
					}
					spop({			
						template: '<h4 class="spop-title">'+str+'成功</h4>即将于5秒后返回登录',
						position: 'top-center',
						style: 'success',
						autoclose: 5000,
						onOpen : function(){
							var second = 4;
							var showPop = setInterval(function(){
								if(second == 0){
									clearInterval(showPop);
								}
								$('.spop-body').html('<h4 class="spop-title">'+str+'成功</h4>即将于'+second+'秒后返回登录');
								second--;
								},1000);
						},
						onClose : function(){
							goto_login();
						}
					});
				}
			});
			return false;
		}
	}
	
	//发送验证码
	function sendVerify(num){
		var code;
		var username;
		var objCode;
		var objName;
		var objBtn;
		if(num == 1){
			code = $("#forget-code").val();
			username = $("#forget-username").val()
			objCode = $("#forget-code");
			objName = $("#forget-username");
			objBtn = $("#verifyBtn");
		}else if(num == 2){
			code = $("#register-code").val();
			username = $("#register-username").val()
			objCode = $("#register-code");
			objName = $("#register-username");
			objBtn = $("#verifyBtn2");
		}
		var flag = false;
		if(username == ""){
			$.pt({
        		target: objName,
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:'请填写要修改密码的用户名'
        	});
			flag = true;
		}
		if(code == ""){
			$.pt({
        		target: objCode,
        		position: 'r',
        		align: 't',
        		width: 'auto',
        		height: 'auto',
        		content:'请填写接收验证码的手机号或者邮箱'
        	});
			flag = true;
		}
		
		if(flag){
			return false;
		}else{
			var data = {
					code : code,
					userAccount :  username
			};
			$.post("<c:url value='/user.s?method=sendVerify&num="+num+"' />",data,function(data){
				if(data != null && data != ""){
					var tar;
					if(data.indexOf("手机号/邮箱 与用户名不匹配") != -1){
						tar = objCode;
					}else if(data.indexOf("用户名") != -1){
						tar = objName;
					}else if(data.indexOf("手机号/邮箱") != -1){
						tar = objCode;
					}else{
						alert(data);
						return false;
					}
					if(tar != null && tar != ""){
						$.pt({
			        		target: tar,
			        		position: 'r',
			        		align: 't',
			        		width: 'auto',
			        		height: 'auto',
			        		content:data
			        	});
					}
					return false;
				}else{
					//验证码发送成功
					objBtn.attr("disabled", true); 
					if(num == 1){
						out1(60);
					}else if(num == 2){
						out2(60);
					}
						
				}
			});
			return false;
		}
	}
	
	function out1(t){
		var i = t ;
		var btn = $('#verifyBtn');
		if(i==0){
			btn.val("发送验证码");
			btn.attr("disabled", false);
			return;
		}
		btn.val(" " + i+" s ");
		i--;
		setTimeout("out1("+i+")",1000);
	}
	function out2(t){
		var i = t ;
		var btn = $('#verifyBtn2');
		if(i==0){
			btn.val("发送验证码");
			btn.attr("disabled", false);
			return;
		}
		btn.val(" " + i+" s ");
		i--;
		setTimeout("out2("+i+")",1000);
	}
	
	
</script>
<style type="text/css">
html{width: 100%; height: 100%;}

body{

	background-repeat: no-repeat;

	background-position: center center #2D0F0F;

	background-color: #00BDDC;

	background-image: url(images/snow1.jpg);

	background-size: 100% 100%;

}

.snow-container { position: fixed; top: 0; left: 0; width: 100%; height: 100%; pointer-events: none; z-index: 100001; }


</style>
</head>
<body>
	<input type="hidden" id="refererPath" value="${refererPath}">
	<!-- 雪花背景 -->
	<div class="snow-container"></div>
	<!-- 登录控件 -->
	<div id="login">
		<input id="tab-1" type="radio" name="tab" class="sign-in hidden" checked />
		<input id="tab-2" type="radio" name="tab" class="sign-up hidden" />
		<input id="tab-3" type="radio" name="tab" class="sign-out hidden" />
		<div class="wrapper">
			<!-- 登录页面 -->
			<div class="login sign-in-htm">
				<form class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<div id="owl-login" class="login-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					<div class="pad input-container">
						<section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="login-username" 
									autocomplete="off" placeholder="用户名/手机号/邮箱" tabindex="1" maxlength="50" />
								<label class="input__label input__label--hideo" for="login-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="login-password" placeholder="请输入密码" tabindex="2" maxlength="50"/>
								<label class="input__label input__label--hideo" for="login-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
						</section>
					</div>
					<div class="form-actions">
						<a tabindex="4" class="btn pull-left btn-link text-muted" onClick="goto_forget()">忘记密码?</a>
						<a tabindex="5" class="btn btn-link text-muted" onClick="goto_register()">注册</a>
						<input class="btn btn-primary" type="button" tabindex="3" onClick="login()" value="登录" 
							style="color:white;"/>
					</div>
				</form>
			</div>
			<!-- 忘记密码页面 -->
			<div class="login sign-out-htm">
				<form action="#" method="post" class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<div id="owl-login" class="forget-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					<div class="pad input-container">
						<section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="forget-username" autocomplete="off" placeholder="请输入用户名"/>
								<label class="input__label input__label--hideo" for="forget-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="forget-code" autocomplete="off" placeholder="请输入手机号/邮箱"/>
								<label class="input__label input__label--hideo" for="forget-code">
									<i class="fa fa-fw fa-wifi icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="forget-password" placeholder="请重置密码" />
								<label class="input__label input__label--hideo" for="forget-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="forget-password2" placeholder="确认密码" />
								<label class="input__label input__label--hideo" for="forget-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="forget-verify" placeholder="请输入验证码" />
								<label class="input__label input__label--hideo" for="forget-verify">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
						</section>
					</div>
					<div class="form-actions">
						<a class="btn pull-left btn-link text-muted" onClick="goto_login()">返回登录</a>
						<input id="verifyBtn" class="btn btn-primary" type="button" onClick="sendVerify(1)" value="发送验证码" 
							style="color:white;"/>
						<input class="btn btn-primary" type="button" onClick="updateUser(1)" value="重置密码" 
							style="color:white;"/>
					</div>
				</form>
			</div>
			<!-- 注册页面 -->
			<div class="login sign-up-htm">
				<form action="#" method="post" class="container offset1 loginform">
					<!-- 猫头鹰控件 -->
					<div id="owl-login" class="register-owl">
						<div class="hand"></div>
						<div class="hand hand-r"></div>
						<div class="arms">
							<div class="arm"></div>
							<div class="arm arm-r"></div>
						</div>
					</div>
					<div class="pad input-container">
						<section class="content">
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-username" 
									autocomplete="off" placeholder="请输入用户名" maxlength="20"/>
								<label class="input__label input__label--hideo" for="register-username">
									<i class="fa fa-fw fa-user icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="register-password" placeholder="请输入密码" maxlength="20"/>
								<label class="input__label input__label--hideo" for="register-password">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="password" id="register-password2" placeholder="请确认密码" maxlength="20"/>
								<label class="input__label input__label--hideo" for="register-password2">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-code" autocomplete="off" placeholder="请输入邮箱/手机号"/>
								<label class="input__label input__label--hideo" for="register-code">
									<i class="fa fa-fw fa-wifi icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
							<span class="input input--hideo">
								<input class="input__field input__field--hideo" type="text" id="register-verify" placeholder="请输入验证码"/>
								<label class="input__label input__label--hideo" for="register-verify">
									<i class="fa fa-fw fa-lock icon icon--hideo"></i>
									<span class="input__label-content input__label-content--hideo"></span>
								</label>
							</span>
						</section>
					</div>
					<div class="form-actions">
						<a class="btn pull-left btn-link text-muted" onClick="goto_login()">返回登录</a>
						<input id="verifyBtn2" class="btn btn-primary" type="button" onClick="sendVerify(2)" value="发送验证码" 
							style="color:white;"/>
						<input class="btn btn-primary" type="button" onClick="updateUser(2)" value="注册" 
							style="color:white;"/>
					</div>
				</form>
			</div>
			
		</div>
	</div>
	<c:if test="${! empty msg }">
		<script type="text/javascript">
			alert("${msg}");
		</script>
	</c:if>
	
</body>
</html>