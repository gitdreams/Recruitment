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
<s:debug></s:debug>
	<form class="layui-form" action="editJob">
	<input name="job.id" value="${job.id }" type="hidden">
	<input name="job.company" value="${job.company }" type="hidden">
		<div class="layui-form-item">
			<label class="layui-form-label">职位</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" 
				value="${job.work}" name="job.work" required lay-verify="required"
					placeholder="请输入职位名称" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">职位类型</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" 
				value="${job.type}" name="job.type" required lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">工作地点</label>
			<div class="layui-input-block">
				<input type="text" readonly="true" 
				value="${job.location}" name="job.location" required lay-verify="required"
					autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">工作经验</label>
			<div class="layui-input-block">
				<input type="text" 
				value="${job.experience}" name="job.experience" required
					lay-verify="required" placeholder="请输入该职位所需工作经验（例：经验不限，一年以上）"
					autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">薪资</label>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text" value="${job.low}" name="job.low" placeholder="￥"
						autocomplete="off" class="layui-input">
				</div>
				<div class="layui-form-mid">-</div>
				<div class="layui-input-inline" style="width: 100px;">
					<input type="text" value="${job.high}" name="job.high" placeholder="￥"
						autocomplete="off" class="layui-input">
				</div>
			</div>
		</div>
		<div class="layui-inline">
			<label class="layui-form-label">到期日期</label>
			<div class="layui-input-block">
				<input type="text" name="job.jobtime" readonly="true"  value="${job.jobtime}" name="bio.jobtime" id="date" class="layui-input"
					placeholder="yyyy-MM-dd" />
			</div>
		</div>
		<br> <br>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">职位简介</label>
			<div class="layui-input-block">
				<textarea name="job.profile" placeholder="请输入内容"
					class="layui-textarea">
${job.profile}
					</textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">提交修改</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>

</body>
</html>
