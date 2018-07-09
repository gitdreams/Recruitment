<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>浏览简历</title>


</head>
<body>
<s:include value="./parent/company.jsp"></s:include>
企业浏览简历
<s:debug></s:debug>
<div class="layui-col-md12">
      <div class="layui-card">
        <div class="layui-card-header">
        	标题可以是一个超链接连接到简历的详细信息简历一
        	可以有一个表格（姓名，应聘职位，电话，）
        </div>
        <div class="layui-card-body">
          		简历内容
        </div>
      </div>
    </div>
    
</body>
</html>