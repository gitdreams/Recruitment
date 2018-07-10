<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 该页面显示当前登录用户所收到的消息 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!-- layui -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="	./layui/css/layui.css" type="text/css"
	media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>
<title>消息列表</title>
</head>
<body>
	<s:include value="./parent/user.jsp"></s:include>
	消息列表

	<div class="layui-col-md12">
		<div class="layui-card">
			<div class="layui-card-header">企业对自己的职位的管理，头可以有职位名称，时间
				可以有一个表格（姓名，应聘职位，电话，）判断是不是企业登录浏览的，如果不是的话就只能浏览</div>
			<div class="layui-card-body">
				企业职位内容

				<table class="layui-table" lay-even="" lay-skin="row">
					<colgroup>
						<col width="80">
						<col width="80">
						<col width="200">
						<col>
					</colgroup>
					<thead>
						<tr>
							<th>公司</th>
							<th>简历ID</th>
							<th>消息</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="mapmessage" var="map">
							<tr>
								<s:iterator value="value" var="info">
									<td><s:property value="#info.company" /></td>
									<td>
									<s:url action="lookbio" var="lookbio">
									<s:param name="bio.id" value="#info.id"></s:param>
									</s:url>
									<a href="${lookbio }"><s:property value="#info.bio_id" /></a></td>
									<td><s:property value="#info.message" /></td>
								</s:iterator>
							</tr>
						</s:iterator>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>