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
<link rel="stylesheet" href="	./layui/css/layui.css" type="text/css" />
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

				<s:select lay-verify="required" lay-search=""
					list="#session.secondlist" name="work.type" listKey="second"
					listValue="second" headerKey="0" headerValue="" />
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
				<select name="work.location" lay-verify="required" lay-search="">
					<option value="">${sessionScope.companyobj.location}</option>
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

		<div class="layui-form-item">
			<label class="layui-form-label">工作经验</label>
			<div class="layui-input-block">
				<input type="text" name="work.experience" required
					lay-verify="required" placeholder="请输入该职位所需工作经验（例：经验不限，一年以上）"
					autocomplete="off" class="layui-input">
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
				<textarea name="work.profile" placeholder="请输入内容"
					class="layui-textarea"></textarea>
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
