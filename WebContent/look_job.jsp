<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>浏览职位</title>

<!-- layui -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="./layui/css/layui.css" type="text/css"
	media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>

</head>
<body>
	<s:include value="./parent/user.jsp"></s:include>
	用户浏览职位
	<s:iterator value="mapwork" var="map">
		<s:iterator value="value" var="info">
			<s:property value="#info.work" />
			<s:property value="#info.company" />
			<s:property value="#info.type" />
			<s:property value="#info.experience" />
			<s:property value="#info.low" />
			<s:property value="#info.high" />
			<s:property value="#info.location" />

		</s:iterator>
	</s:iterator>
	<s:include value="./parent/list_job.jsp"></s:include>
</body>
</html>