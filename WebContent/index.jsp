<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
</head>
<body>

<s:if test="#session.role=='company'">
<s:include value="./parent/company.jsp"></s:include>
</s:if>
<s:elseif test="#session.role=='user'">
<s:include value="./parent/user.jsp"></s:include>
</s:elseif>
<s:else>
<s:include value="./parent/pre_login.jsp"></s:include>
</s:else>

<s:include value="./parent/content.jsp"></s:include>
职位类表之前应该有分类

<s:include value="./parent/list_job.jsp"></s:include>
<s:debug></s:debug>

</body>
</html>