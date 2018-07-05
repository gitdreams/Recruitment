<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- 该页面用于用户搜藏职位展现 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>收藏页面</title>
</head>
<body>
<s:include value="./parent/user.jsp"></s:include>
收藏夹 查 收藏表 就知道该user收藏了那些的职位
<s:include value="./parent/list_job.jsp"></s:include>
</body>
</html>