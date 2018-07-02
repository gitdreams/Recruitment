<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 该页面用于用户登录 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<s:include value="./parent/background.jsp"></s:include>
	<script type="text/javascript" src="../static/js/system.js"></script>

	<link rel="stylesheet" type="text/css"
		href="//www.lgstatic.com/passport/static/pkg/pc/page/login/main.html_aio_dda183c.css" />
</head>
<body>
	<section class="content_box cleafix">
	<div class="left_area fl">
		<div class="form_head">密码登录</div>
		<div>
			<s:form class="active">
				<div>
					<input type="text" class="input input_white" name=""
						placeholder="请输入常用手机号/邮箱">
				</div>
				<div class="input_item clearfix">
					<input type="password" class="input input_white" name=""
						placeholder="请输入密码">
				</div>
				<div class="input_item clearfix">
					<a rel="nofollow"
						href="https://passport.lagou.com/accountPwd/toReset.html"
						class="forgot_pwd">忘记密码？</a>
				</div>
				<div class="input_item btn_group clearfix">
					<input type="submit"
						class="btn btn_green btn_active btn_block btn_lg" value="登&nbsp;录">
				</div>
			</s:form>
		</div>
	</div>
	<div class="divider fl"></div>
	<div class="right_area fl">
		<h5>还没有帐号:</h5>
		<a href="registration.jsp" class="register_now">立即注册</a>
	</div>
	</section>
</body>
</html>
