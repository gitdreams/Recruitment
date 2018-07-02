<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 该页面是选择注册页面，可以选择企业用户注册，和应聘用户注册 -->
<body>
	<!-- 页面主体START -->
	<s:include value="./parent/background.jsp"></s:include>
	<div class="content_box cleafix">
		<div class="register_type worker fl">
			<h3>找工作</h3>
			<h4>应聘者</h4>
			<div class="worker_image"></div>
			<div class="btn_group">
				<a href="user_registration.jsp">去找工作</a>
			</div>
		</div>
		<div class="divider fl"></div>
		<div class="register_type hr fl">
			<h3>招人</h3>
			<h4>招聘公司</h4>
			<div class="hr_image"></div>
			<div class="btn_group">
				<a href="company_registration.jsp">去发布职位</a>
			</div>
		</div>
	</div>
	<footer class="page_footer">
	<p>
		已有帐号，请<a href="user_login.jsp">登录</a>
	</p>
	</footer>
	<script type="text/javascript"
		src="//www.lgstatic.com/passport/static/pkg/vendor_c7a7c93.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/passport/static/pkg/pc/page/register-land/main.html_aio_4bd10f8.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/passport/static/pkg/lg-analytics_acdc44c.js"></script>
	<script type="text/javascript"
		src="https://passport.lagou.com/upload/oss.js"></script>
</body>
</html>