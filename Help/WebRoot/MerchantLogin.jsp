<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
<head>
<title>商家登录页面</title>
<!-- Merchant Theme files -->
<link href="Merchant/css/MerchantLoginStyle.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Merchant Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.useso.com/css?family=Roboto:500,900italic,900,400italic,100,700italic,300,700,500italic,100italic,300italic,400' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
</head>

<body>
<div class="login">
	<h2></h2>
	<div class="login-top">
		<h1>登录页面</h1>
		<div class="tip">
			<s:property value="#request.tip" />
		</div>
		<div class="tip">
			<s:fielderror/>
		</div> 
		<form  action="MerchantLogin" method="post">
			<input type="text"  name="merchant.merchantID" placeholder="User Id">
			<input type="password"   name="merchant.merchantPassword" placeholder="Password">
	    <div class="forgot">
	    	<a href="#">忘记密码？</a>
	    	<input type="submit" value="登录" >
	    </div>
	    </form>
	</div>
	<div class="login-bottom-merchant">
		<h3>没有账号？&nbsp;<a href="MerchantRegisterHome.jsp">点此注册</a></h3>
	</div>
</div>	
<div class="copyright">
	<p>Copyright &copy; 2016 Clouds Help项目开发小组</p>
</div>
</body>
</html>