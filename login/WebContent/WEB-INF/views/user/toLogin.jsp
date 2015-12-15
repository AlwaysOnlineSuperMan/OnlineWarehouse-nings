<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/testlogin/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
/* function tologin(){
	var userNo = document.getElementById("userNo").value;
	var userPwd = document.getElementById("userPwd").value;
	
	if(userNo==""){
		alert("账号不能能够为空！");
		return false;
	}
	if(userPwd==""){
		alert("密码不能能够为空！");
		return false;
	}
	return true;
} */

</script>
<script type="text/javascript">
$(function(){
	$("form").submit( function () {
		if($("#userNo").val()==""){
			alert("账号不能能够为空！");
			$("#userNo").focus();
			return false;
		}else if($("#userNo").val().length<6){
			$("#userNoSpen").html("账号至少六位");
			return false;
		}
		
		if($("#userPwd").val()==""){
			alert("密码不能能够为空！");
			$("#userPwd").focus();
			return false;		
			}
		return true;
	} );
	

			
	$("input[name='userNo']").blur( 
				function () {
					if($(this).val().length<6){
						$("#userNoSpen").html("账号至少六位");
						return false;
				   }
			   } 
	).focus( 
				function () {
					  $("#userNoSpen").html("");
				} 
		);
	});

</script>
</head>
<body>
<div align="center">
<h1>登陆</h1>

<form action="user/login" method="post"  id="form" >
<!-- onsubmit="return tologin()" -->
<table >
<tr>
	<td><fmt:message key="user.no"/></td>
	<td><input type="text" name="userNo" id="userNo"></td>
	<td><span id="userNoSpen"></span></td>
</tr>
<tr>
	<td><fmt:message key="user.pwd"/></td>
	<td><input type="password" name="userPwd" id="userPwd"></td>
		<td><span id="userPwdSpen"></span></td>
</tr>

</table>
<input type="submit" value="登陆"><input type="reset" value="重置">
</form>
</div>
</body>
</html>