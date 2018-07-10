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
	<form class="layui-form" action="editbio">
	<input name="bio.id" value="${bio.id }" type="hidden">
		<div class="layui-inline">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
				<input 
				type="text" 
				name="bio.name" 
				autocomplete="off"
				readonly="true" 
				value="${bio.name}"
				class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">电话</label>
			<div class="layui-input-inline">
				<input type="text" readonly="true" 
				value="${bio.phone}" name="bio.phone" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">专业学校</label>
			<div class="layui-input-inline">
				<input type="text" readonly="true" 
				value="${bio.school}" name="bio.school" autocomplete="off"
					class="layui-input">
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">邮箱</label>
			<div class="layui-input-inline">
				<input type="text" readonly="true" 
				value="${bio.email}" name="bio.email" lay-verify="email"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<br><br>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">薪资</label>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text"
				value="${bio.low}" name="bio.low" placeholder="￥"
						autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid">-</div>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text"
				value="${bio.high}" name="bio.high" placeholder="￥"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">职位</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" 
				value="${bio.job	}" name="bio.job" required lay-verify="required"
					placeholder="请输入职位名称" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">工作类型</label>
			<div class="layui-input-block">
				<select name="bio.type" lay-verify="required">
					<option value="${bio.type }">
<s:property value="%{bio.type}"/>
					</option>
					<option value="实习生">实习生</option>
					<option value="全职">全职</option>
					<option value="暑假工">暑假工</option>

				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">工作地点</label>
			<div class="layui-input-block">
				<select name="bio.location" lay-verify="required" lay-search="">
						<option value="${bio.location }">
<s:property value="%{bio.location}"/>
					</option>
						<option value="北京">北京</option>
						<option value="上海">上海</option>
						<option value="天津">天津</option>
						<option value="重庆">重庆</option>
						<option value="哈尔滨">哈尔滨</option>
						<option value="长春">长春</option>
						<option value="沈阳">沈阳</option>
						<option value="呼和浩特">呼和浩特</option>
						<option value="石家庄">石家庄</option>
						<option value="乌鲁木齐">乌鲁木齐</option>
						<option value="兰州">兰州</option>
						<option value="西宁">西宁</option>
						<option value="西安">西安</option>
						<option value="银川">银川</option>
						<option value="郑州">郑州</option>
						<option value="济南">济南</option>
						<option value="太原">太原</option>
						<option value="合肥">合肥</option>
						<option value="武汉">武汉</option>
						<option value="南京">南京</option>
						<option value="成都">成都</option>
						<option value="贵阳">贵阳</option>
						<option value="昆明">昆明</option>
						<option value="南宁">南宁</option>
						<option value="拉萨">拉萨</option>
						<option value="杭州">杭州</option>
						<option value="南昌">南昌</option>
						<option value="广州">广州</option>
						<option value="福州">福州</option>
						<option value="台北">台北</option>
						<option value="海口">海口</option>
						<option value="香港">香港</option>
						<option value="澳门">澳门</option>
				</select>
			</div>
		</div>

		<div class="layui-inline">
			<label class="layui-form-label">到职日期</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" 
				value="${bio.workTime}" name="bio.workTime" id="date" class="layui-input"
					placeholder="yyyy-MM-dd" />
			</div>
		</div>
		<br> <br>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">个人简介</label>
			<div class="layui-input-block">
				<textarea name="bio.profile" placeholder="请输入内容"
					class="layui-textarea">
<s:property value="%{bio.profile}"/>
					</textarea>
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