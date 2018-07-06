<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>完善个人信息</title>

<!-- layui -->

<link rel="stylesheet" href="./layui/css/layui.css" type="text/css"
	media="all" />
<script src="./layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="./layui/selflayui.js"></script>

</head>
<body>
<s:include value="./parent/user.jsp"></s:include>
完善个人信息

<form class="layui-form" action="EditProfile">
		<div class="layui-inline">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
			
				<input 
				type="text" 
				name="user.username" 
				autocomplete="off"
				class="layui-input"
				readonly="true"
				value="${sessionScope.userobj.username }">
			</div>
		</div>
    <div class="layui-inline">
      <label class="layui-form-label">邮箱</label>
      <div class="layui-input-inline">
        <input 
        type="text" 
        name="user.email" 
        lay-verify="email" 
        autocomplete="off" 
        class="layui-input"
        readonly="true"
        value="${sessionScope.userobj.email }"
        >
      </div>
    </div>

		<div class="layui-inline">
			<label class="layui-form-label">电话</label>
			<div class="layui-input-inline">
				<input type="text" name="user.phone" autocomplete="off"
					class="layui-input">
			</div>
		</div>
    <div class="layui-form-item">
    <label class="layui-form-label">单选框</label>
    <div class="layui-input-block">
    <s:if test="#session.userobj.sex=='男'.toString()">
      <input type="radio" name="user.sex" value="男" title="男" checked="checked"/>
      <input type="radio" name="user.sex" value="女" title="女" >    
    </s:if>
    <s:else>
      <input type="radio" name="user.sex" value="男" title="男">
      <input type="radio" name="user.sex" value="女" title="女" checked="checked">    
    </s:else>

    </div>
 </div>

		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">个人简介</label>
			<div class="layui-input-block">
				<textarea name="user.profile" placeholder="请输入内容" class="layui-textarea">
				<s:property value="#session.userobj.profile"/>
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