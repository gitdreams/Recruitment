<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 该页面用于企业发布职位   -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发布职位</title>

<!-- layui -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="	./layui/css/layui.css" type="text/css"
	media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="./layui/selflayui.js"></script>
<script type="text/javascript" src="../static/js/jquery-1.3.2.min.js"></script>
</head>
<body>
	<s:include value="./parent/company.jsp"></s:include>
	企业发布职位


	<form class="layui-form" action="addJob">
		<div class="layui-form-item">
			<label class="layui-form-label">职位</label>
			<div class="layui-input-block">
				<input type="text" name="work.work" required lay-verify="required"
					placeholder="请输入职位名称" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
		<label class="layui-form-label">职位类型</label>
		<div class="layui-input-block">
		<!-- 
			<select name="modules1" lay-verify="required" lay-search="" id="firstselect">
				<option value=""></option>
				<s:iterator value="firstlist" var="list1">
					<option value="first" var="select">
					<s:property value="#list1.first"/>
					</option>
				</s:iterator>
			</select>
			-->

			<select name="work.type" lay-verify="required" lay-search="">
				<option value=""></option>
				<s:iterator value="secondlist" var="list">
					<option value="second">
						<s:property value="#list.second"/>
					</option>
				</s:iterator>
			</select>
		</div>

			<!-- 
								<option value="">请选择工作类型111</option>
				<s:iterator value="typelist" var="list">
					<option value="first">
								<s:property value="#list.first"/>
							</option>
				</s:iterator>
			-->
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">地点</label>
			<div class="layui-input-block">
				<select name="work.location" lay-verify="required">
					<option value=""></option>
					<option value="0">北京</option>
					<option value="1">上海</option>
					<option value="2">广州</option>
					<option value="3">深圳</option>
					<option value="4">杭州</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">工作经验</label>
			<div class="layui-input-block">
				<input type="text" name="work.experience" required lay-verify="required"
					placeholder="请输入该职位所需工作经验（例：经验不限，一年以上）" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">薪资</label>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text" name="work.low" placeholder="￥"
						autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid">-</div>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text" name="work.high" placeholder="￥"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">到期日期</label>
			<div class="layui-input-block">
				<input type="text" name="work.jobtime" id="date" class="layui-input"
					placeholder="yyyy-MM-dd" />
			</div>
		</div>
		<br> <br>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">职位简介</label>
			<div class="layui-input-block">
				<textarea name="work.profile" placeholder="请输入内容" class="layui-textarea"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即发布</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>

</body>
</html>