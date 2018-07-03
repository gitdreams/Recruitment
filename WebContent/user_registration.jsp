<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 该页面用于用户注册 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册页面</title>

<s:include value="./parent/background.jsp"></s:include>
<script type="text/javascript" src="../static/js/system.js"></script>

<link rel="stylesheet" type="text/css"
	href="//www.lgstatic.com/passport/static/pkg/pc/page/login/main.html_aio_dda183c.css" />

</head>
<body>

	<section class="content_box cleafix">
	<div class="left_area fl">
		<div class="form_head">用户注册</div>
			<s:fielderror></s:fielderror>
		<div>
			<s:form class="active" action="user_registration" method="post">
				<div>
					<input type="text" class="input input_white" name="user.email"
						placeholder="请输入常用邮箱">
				</div>
				<div class="input_item clearfix">
					<input type="text" class="input input_white" name="user.username"
						placeholder="请输入用户名">
				</div>
				<div class="input_item clearfix">
					<input type="password" class="input input_white" name="user.password"
						placeholder="请输入密码">
				</div>
				<div class="input_item clearfix">
					<input type="password" class="input input_white" name="repass"
						placeholder="确认密码">
				</div>
				<div class="input_item btn_group clearfix">
					<input type="submit"
						class="btn btn_green btn_active btn_block btn_lg" value="注&nbsp;册">
				</div>
			</s:form>
		</div>
	</div>
	<div class="divider fl"></div>
	<div class="right_area fl">
		<h5>已有账号</h5>
		<a href="login.jsp" class="register_now">立即登录</a>
	</div>
	</section>

</body>
</html>