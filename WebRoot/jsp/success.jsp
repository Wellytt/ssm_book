<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>注册成功，请登录！</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/index.css" />
</head>

<body>
	<div class="login_box">
		<div class="login_l_img">
			<img src="img/index1.png" />
		</div>
		<div class="login">
			<div class="login_logo">
				<a href="#"><img src="img/index2.png" /></a>
			</div>
			<div class="login_name">
				<p>注册成功，请登录！</p>
			</div>
			<form action="login.do" method="post">
				<input name="username" type="text" value="用户名"
					onfocus="this.value=''"
					onblur="if(this.value==''){this.value='用户名'}">
					<span id="password_text"
					onclick="this.style.display='none';document.getElementById('password').style.display='block';document.getElementById('password').focus().select();">密码</span>
				<input name="password" type="password" id="password"
					style="display:none;"
					onblur="if(this.value==''){document.getElementById('password_text').style.display='block';this.style.display='none'};" />
				<input value="登录" style="width:100%;" type="submit">
				<a href="register.jsp"><input value="注冊" style="width:100%;" type="button"></a>
			</form>
		</div>
		<div class="copyright">&copy;2017117101陈丹婷</div>
	</div>
</body>
</html>
