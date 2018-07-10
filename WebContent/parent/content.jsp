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
									<s:url action="typeJob" var="typeJob">
									<s:param name="job.type" value="#second"></s:param>
									</s:url>
										<a href="${typeJob }"> 
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
									<s:url action="typeJob" var="typeJob">
									<s:param name="job.type" value="#job"></s:param>
									</s:url>
										<a href="${typeJob }"> 
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
		src="//www.lgstatic.com/www/static/pkg/widgets_120b982.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/index/page/index/main.html_aio_2_aa346e4.js"></script>
	<script type="text/javascript">
		window.global = window.global || {};
		//业务主模块入口
		require([ 'index/page/index/main' ]);
	</script>
</body>
</body>
</html>