<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 该页面用于企业用户发布招聘信息 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>投递箱</title>


<!-- layui -->
<link rel="stylesheet" href="./layui/css/layui.css" type="text/css" />
<script src="./layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="./layui/selflayui.js"></script>

</head>
<body>
	<s:include value="./parent/user.jsp"></s:include>
	投递箱：简历，公司，消息列表，查delivery表就好
	<form class="layui-form" action="deliver">
	<div class="layui-form-item">
	<label class="layui-form-label">选择简历</label>
	<div class="layui-input-block">

		<s:select lay-verify="required" lay-search=""
			list="bio" name="job" listKey="job"
			listValue="job" headerKey="0" headerValue="" />
	</div>
	</div>
	
	<div class="layui-form-item">
	<label class="layui-form-label">选择公司</label>
	<div class="layui-input-block">

		<s:select lay-verify="required" lay-search=""
			list="worklist" name="delivery.company" listKey="company"
			listValue="company" headerKey="" headerValue="" />
	</div>
	</div>
	<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">投递	</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
</form>


投递之后的简历列表在message页面
</body>
</html>