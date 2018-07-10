<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>撰写简历</title>


<!-- layui -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="	./layui/css/layui.css" type="text/css"
	media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="./layui/selflayui.js"></script>

</head>
<body>
	<s:include value="./parent/user.jsp"></s:include>
	浏览简历
	<form class="layui-form" action="message">
		<input name="message.bio_id" value="${bio.id }" type="hidden">
		<input name="message.company" value="${sessionScope.companyobj.company_name }" type="hidden">
		<div class="layui-inline">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="bio.name" autocomplete="off"
					readonly="true" value="${bio.name}" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">电话</label>
			<div class="layui-input-inline">
				<input type="text" readonly="true" value="${bio.phone}"
					name="bio.phone" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">专业学校</label>
			<div class="layui-input-inline">
				<input type="text" readonly="true" value="${bio.school}"
					name="bio.school" autocomplete="off" readonly="true"
					class="layui-input">
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-inline">
				<input type="text" readonly="true" value="${bio.email}"
					name="bio.email" lay-verify="email" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<br>
		<br>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">薪资</label>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text" readonly="true" value="${bio.low}"
						name="bio.low" placeholder="￥" autocomplete="off"
						class="layui-input">
				</div>
				<div class="layui-form-mid">-</div>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text" value="${bio.high}" readonly="true"
						name="bio.high" placeholder="￥" autocomplete="off"
						class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">职位</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" value="${bio.job}" name="bio.job"
					required lay-verify="required" placeholder="请输入职位名称"
					autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">工作类型</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" value="${bio.type}"
					name="bio.job" required lay-verify="required" placeholder="请输入职位名称"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">工作地点</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" value="${bio.location}"
					name="bio.location" required lay-verify="required" placeholder="请输入职位名称"
					autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">到职日期</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" value="${bio.workTime}"
					name="bio.workTime" id="date" class="layui-input"
					placeholder="yyyy-MM-dd" />
			</div>
		</div>
		<br> <br>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">个人简介</label>
			<div class="layui-input-block">
				<textarea name="bio.profile" readonly="true" placeholder="请输入内容"
					class="layui-textarea">
<s:property value="%{bio.profile}"/>
					</textarea>
			</div>
		</div>
		
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">留言</label>
			<div class="layui-input-block">
				<textarea name="message.message" placeholder="请输入内容"
					class="layui-textarea"></textarea>
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">提交修改</button>
			</div>
		</div>
	</form>

</body>
</html>