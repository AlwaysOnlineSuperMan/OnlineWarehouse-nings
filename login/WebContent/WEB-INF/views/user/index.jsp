<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="zh">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="css/default.css">
<link rel="stylesheet" type="text/css" href="css/styles.css">
<script type="text/javascript" src="/login/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="/login/js/html5shiv.min.js"></script>

<script type="text/javascript">
	function toLogin() {
		if(!checkToLogin())return false;
		
		
		return true;
	}
	function checkToLogin() {
		if ($("#userNo").val() == "") {
			alert("账号不能能够为空！");
			$("#userNo").focus();
			return false;
		} else if ($("#userNo").val().length < 6) {
			$("#userNoSpen").html("账号至少六位");
			return false;
		}

		if ($("#userPwd").val() == "") {
			alert("密码不能能够为空！");
			$("#userPwd").focus();
			return false;
		}
		return true;
	}
</script>

<script type="text/javascript">
	$(function() {
		$("input[name='userNo']").blur(function() {
			if ($(this).val().length < 6) {
				$("#userNoSpen").html("账号至少六位");
				return false;
			}
		}).focus(function() {
			$("#userNoSpen").html("");
		});
	});
</script>
</head>
<body>
	<form action="user/login" method="post" id="form" autocomplete="off"
		onsubmit="return toLogin()">
		<article class="htmleaf-container">
			<header class="htmleaf-header">
				<h1>
					用户登录界 <span>A Material Design Login
						Form</span>
				</h1>
				<div class="htmleaf-links"></div>
			</header>
			<div class="panel-lite">
				<div class="thumbur">
					<div class="icon-lock"></div>
				</div>
				<h4>用户登录</h4>
				<div class="form-group">
					<input required="required" class="form-control" name="userNo"
						id="userNo" /><label class="form-label">用户名 </label> <span id="userNoSpen"></span>
				</div>
				<div class="form-group">
					<input type="password" required="required" class="form-control"
						name="userPwd" id="userPwd" /><label class="form-label">密
						码</label><span id="userPwdSpen"></span> 
				</div>
				<a href="javascript:void(0)">忘记密码 ? </a>
				<button class="floating-btn" onsubmit="return toLogin()">
					<i class="icon-arrow" onsubmit="return toLogin()"></i>
				</button>
			</div>

		</article>
	</form>
</body>
</html>