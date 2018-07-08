<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<!-- layui -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="	./layui/css/layui.css" type="text/css"
	media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>

</head>
<body>
<s:debug></s:debug>
	<div class="layui-col-md12">
		<div class="layui-card">
			<div class="layui-card-header">企业对自己的职位的管理，头可以有职位名称，时间
				可以有一个表格（姓名，应聘职位，电话，）判断是不是企业登录浏览的，如果不是的话就只能浏览</div>
			<div class="layui-card-body">
				企业职位内容

				<s:iterator value="mapwork" var="map">
					<h2>
						<s:property value="key" />
					</h2>
					<s:iterator value="value" var="info">
						<s:property value="#info.profile" />
					</s:iterator>
				</s:iterator>
			</div>
		</div>
	</div>
</body>
</html>