<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>企业完善信息</title>


<!-- layui -->

<link rel="stylesheet" href="	./layui/css/layui.css" type="text/css"
	media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="./layui/selflayui.js"></script>

</head>
<body>
	<s:include value="./parent/company.jsp"></s:include>
	企业完善自己信息 公司名称，公司法人，简介，地点，电话，邮件
	<form class="layui-form" action="">
		<div class="layui-inline">
			<label class="layui-form-label">公司名称</label>
			<div class="layui-input-inline">
				<input 
				type="text" 
				readonly="true"
				value="${sessionScope.companyobj.company_name }"
				name="company.company_name" 
				autocomplete="off"
				class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">公司法人</label>
			<div class="layui-input-inline">
				<input 
				type="text" 
				readonly="true"
				value="${sessionScope.companyobj.username }"
				name="company.username" 
				autocomplete="off"
				class="layui-input">
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">公司电话</label>
			<div class="layui-input-inline">
				<input 
				type="text" 
				value="${sessionScope.companyobj.phone }"
				name="company.phone" 
				autocomplete="off"
				class="layui-input">
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">公司地点</label>
			<div class="layui-input-inline">
				<input 
				type="text" 
				value="${sessionScope.companyobj.location }"
				name="company.location" 
				autocomplete="off"
				class="layui-input">
			</div>
		</div>
<br><br>
		<div class="layui-inline">
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-inline">
				<input 
				type="text" 
				readonly="true"
				value="${sessionScope.companyobj.email }"
				name="company.email" 
				lay-verify="email"
				autocomplete="off"
				class="layui-input">
			</div>
		</div>

<br><br>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">公司简介</label>
			<div class="layui-input-block">
				<textarea name="company.profile" placeholder="请输入内容" class="layui-textarea">
				${sessionScope.companyobj.profile }
				</textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>

</body>
</html>