<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="./layui/css/layui.css" media="all">
<script src="./layui/layui.js" charset="utf-8"></script>


</head>

<body>

	<div class="container-body">
		<div class="clearfix">
			<div id="sidebar" class="sidebar"
				data-lg-tj-track-code="index_navigation" data-lg-tj-track-type="1">
				<div class="mainNavs">
					<!-- 从这开始 -->

					<s:iterator value="maplist" var="map">
						<div class="menu_box">
							<div class="menu_main">
								<div class="category-list">
									<h2>
										<s:property value="key" />
									</h2>
									<s:iterator value="value" var="second">
									<s:action name="ListJob?jobType=#second" var="listjob"></s:action>
										<a href="${listjob }"> 
										<s:property value="#second" />
										</a>
										<i class="arrow"></i>
									</s:iterator>
								</div>
							</div>

							<div class="menu_sub dn">
								<dl>
									<dd>
									<s:iterator value="value" var="job">
									<s:action name="ListJob?jobType=#job" var="listjob"></s:action>
										<a href="${listjob }"> 
										<s:property value="#job" />
										</a>
										<i class="arrow"></i>
									</s:iterator>
									</dd>

								</dl>
							</div>
						</div>
					</s:iterator>

				</div>
			</div>
		</div>



	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/vendor_e3ddeee.js"></script>

	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/index/page/index/main.html_aio_b1a1945.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/widgets_120b982.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/layout_32be855.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/index/page/index/main.html_aio_2_aa346e4.js"></script>
	<script type="text/javascript">
		window.global = window.global || {};
		global.userCtx = 'com.lagou.entity.User@7605c3fa';
		window.global = window.global || {};

		require([ 'common/widgets/header_c/layout/main' ]);
		require([ 'common/widgets/new_login_toolbar/main' ])
		//业务主模块入口
		require([ 'index/page/index/main' ]);
	</script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/lg-analytics_ea85146.js"></script>
	<script type="text/javascript"
		src="https://www.lagou.com/upload/oss.js"></script>
</body>
</body>
</html>