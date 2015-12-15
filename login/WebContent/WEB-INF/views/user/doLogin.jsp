<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
       <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName

()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>

</head>
<body>
<h1>登陆成功</h1>
<f:form ></f:form>
<table>
<tr>
	<td>用户ID</td>
	<td><c:out value="${userLogin.userId }" escapeXml="true"/></td>
</tr>

<tr>
	<td>用户NO</td>
	<td><c:out value="${userLogin.userNo } escapeXml="true"/></td>
</tr>

<tr>
	<td>用户名称</td>
	<td><c:out value="${userLogin.userName} escapeXml="true"/></td>
</tr>
<tr>
	<td>用户密码</td>
	<td><c:out value="${userLogin.userPwd} escapeXml="true"/></td>
</tr>

</table>
<a href="user/reLogin">重新登陆</a>
</body>
</html>