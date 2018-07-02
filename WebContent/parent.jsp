<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<script type=text/javascript>
$(function(){
	$('#mobanwang_com li').hover(function(){
		$(this).children('ul').stop(true,true).show('slow');
	},function(){
		$(this).children('ul').stop(true,true).hide('slow');
	});
	
	$('#mobanwang_com li').hover(function(){
		$(this).children('div').stop(true,true).show('slow');
	},function(){
		$(this).children('div').stop(true,true).hide('slow');
	});
});
</script>
<div class="container">
    <div class="div3">
        <p>>题库管理模块</p>
    </div>
<ul id="mobanwang_com" class="first-menu">
  <li><a href="index.jsp" style="color:#ff0; background:none; border:none;" target="_self">题库管理</a></li>
  <li><a href="#" target="_self">课程列表</a>
    <ul style="display: none;" id="subMusic" class="second-menu">
      <li><a href="#" class="mobanwang" target="_self">JAVA</a>
        <ul class="third-menu">
        <!--JAVA课程题目列表 -->
        <!-- <% session.setAttribute("abc","111"); %> -->
          <li><a href="javabank?course=JAVA&type=select">选择</a></li>
          <li><a href="javabank?course=JAVA&type=fill">填空</a></li>
          <li><a href="javabank?course=JAVA&type=program">程序设计</a></li>
          <li><a href="javabank?course=JAVA&type=analysis">简析题</a></li>
        </ul>
      </li>
      <li><a href="#" class="mobanwang" target="_self">JSP</a>
        <ul class="third-menu">
        <!-- JSP课程题目列表 -->
          <li><a href="show.jsp?course=JSP&type=select">选择</a></li>
          <li><a href="show.jsp?course=JSP&type=fill">填空</a></li>
          <li><a href="show.jsp?course=JSP&type=program">程序设计</a></li>
          <li><a href="show.jsp?course=JSP&type=analysis">简析题</a></li>
        </ul>
      </li>
      <li><a href="#" class="mobanwang" target="_self">数据库</a>
        <ul class="third-menu">
        <!-- 数据库课程题目列表 -->
          <li><a href="show.jsp?course=database&type=select">选择</a></li>
          <li><a href="show.jsp?course=database&type=fill">填空</a></li>
          <li><a href="show.jsp?course=database&type=dbdesign">数据库设计</a></li>
          <li><a href="show.jsp?course=database&type=analysis">简析题</a></li>
        </ul>
      </li>
      <li><a href="#" class="mobanwang" target="_self">数据结构</a>
        <ul class="third-menu">
          <li><a href="show.jsp?course=structure&type=select">选择</a></li>
          <li><a href="show.jsp?course=structure&type=fill">填空</a></li>
          <li><a href="show.jsp?course=structure&type=algorithm">算法分析</a></li>
        </ul>
      </li>
      <li><a href="#" class="mobanwang" target="_self">计算机网络</a>
        <ul class="third-menu">
          <li><a href="show.jsp?course=internet&type=select">选择</a></li>
          <li><a href="show.jsp?course=internet&type=fill">填空</a></li>
          <li><a href="show.jsp?course=internet&type=discrimination">辨析</a></li>
          <li><a href="show.jsp?course=internet&type=analysis">简答</a></li>
        </ul>
       <li><a href="#" class="mobanwang" target="_self">Linux程序设计</a>
        <ul class="third-menu">
          <li><a href="show.jsp?course=linux&type=select">选择</a></li>
          <li><a href="show.jsp?course=linux&type=fill">填空</a></li>
          <li><a href="show.jsp?course=linux&type=analysis">简答</a></li>
          <li><a href="show.jsp?course=linux&type=program">程序设计</a></li>
        </ul>
      </li>
      <li><a href="#" class="mobanwang" target="_self">软件测试</a>
        <ul class="third-menu">
          <li><a href="show.jsp?course=test&type=select">选择</a></li>
          <li><a href="show.jsp?course=test&type=fill">填空</a></li>
          <li><a href="show.jsp?course=test&type=analysis">简答</a></li>
          <li><a href="show.jsp?course=test&type=case">用例设计</a></li>
        </ul>
      </li>
    </ul>
  </li>
  <li><a href="#" target="_self">知识点</a>
    <ul id="subNews" class="second-menu">
      <li><a href="point?course=JAVA" class="mobanwang" target="_self">JAVA</a>
        <ul class="third-menu">
          <li><a href="javapoint?course=JAVA&type=package">封装</a></li>
          <li><a href="javapoint?course=JAVA&type=inherit">继承</a></li>
          <li><a href="javapoint?course=JAVA&type=polymorphism">多态</a></li>
        </ul>
      </li>
      <li><a href="point?course=JSP" class="mobanwang" target="_self">JSP</a>
        <ul class="third-menu">
          <li><a href="pointshow.jsp?course=JSP&type=grammar">语法</a></li>
          <li><a href="pointshow.jsp?course=JSP&type=mvc">MVC</a></li>
          <li><a href="pointshow.jsp?course=JSP&type=jdbc">JDBC</a></li>
          <li><a href="pointshow.jsp?course=JSP&type=file">文件操作</a></li>
        </ul>
      </li>
      <li><a href="point?course=database" class="mobanwang" target="_self">数据库</a>
        <ul class="third-menu">
          <li><a href="pointshow.jsp?course=database&type=sql">SQL语法</a></li>
          <li><a href="pointshow.jsp?course=database&type=concept">概念模型</a></li>
          <li><a href="pointshow.jsp?course=database&type=physical">物理模型</a></li>
          <li><a href="pointshow.jsp?course=database&type=er">ER图</a></li>
          <li><a href="pointshow.jsp?course=database&type=relation">关系</a></li>
          <li><a href="pointshow.jsp?course=database&type=trigger">触发器</a></li>
          <li><a href="pointshow.jsp?course=database&type=index">索引</a></li>
        </ul>
      </li>
      <li><a href="point?course=structure" class="mobanwang" target="_self">数据结构</a>
        <ul class="third-menu">
          <li><a href="pointshow.jsp?course=structure&type=link">链表</a></li>
          <li><a href="pointshow.jsp?course=structure&type=tree">二叉树</a></li>
          <li><a href="pointshow.jsp?course=structure&type=graph">图</a></li>
        </ul>
      </li>
      <li><a href="point?course=internet" class="mobanwang" target="_self">计算机网络</a>
        <ul class="third-menu">
          <li><a href="pointshow.jsp?course=internet&type=netstru">网络结构</a></li>
          <li><a href="pointshow.jsp?course=internet&type=subnet">子网划分</a></li>
          <li><a href="pointshow.jsp?course=internet&type=protocol">网络协议</a></li>
        </ul>
      </li>
      <li><a href="point?course=linux" class="mobanwang" target="_self">Linux程序设计</a>
        <ul class="third-menu">
          <li><a href="pointshow.jsp?course=linux&type=command">Linux基本命令</a></li>
          <li><a href="pointshow.jsp?course=linux&type=filesys">Linux文件系统</a></li>
          <li><a href="pointshow.jsp?course=linux&type=folder">Linux目录结构</a></li>
          <li><a href="pointshow.jsp?course=linux&type=c">Linux C语言</a></li>
        </ul>
      </li>
    </ul>
  </li>
  <li><a href="#" class="mobanwang" target="_self">题库后台管理</a>
      <ul id="subNews" class="second-menu">
           <li><a href="updatetopic.jsp" class="mobanwang" target="_self">添加题目</a></li>
           <li><a href="updatetopic.jsp" class="mobanwang" target="_self">删除题目</a></li>
           <li><a href="update.jsp" class="mobanwang" target="_self">修改题目</a></li>
      </ul>
  <li><a href="#" class="mobanwang" target="_blank">知识点后台管理</a>
      <ul id="subNews" class="second-menu">
          <li><a href="updatepoints.jsp" class="mobanwang" target="_self">添加知识点</a></li>
          <li><a href="updatepoints.jsp" class="mobanwang" target="_self">删除知识点</a></li>
          <li><a href="updatepoints.jsp" class="mobanwang" target="_self">修改知识点</a></li>
      </ul>
</li>
  <li><a href="#" class="mobanwang" target="_blank">导入信息</a>
      <ul id="subNews" class="second-menu">
	      <li><a href="#" class="mobanwang" target="_self">导入课程信息</a></li>
          <li><a href="#" class="mobanwang" target="_self">导入教师信息</a></li>
          <li><a href="#" class="mobanwang" target="_self">导入知识点信息</a></li>
      </ul>
</li>
</ul>
</div>