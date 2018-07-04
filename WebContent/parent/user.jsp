<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="//www.lgstatic.com/www/static/dep/mCustomScrollbar/css/mCustomScrollbar_ac2fb8b.css" />
<link rel="stylesheet" type="text/css"
	href="//www.lgstatic.com/www/static/pkg/layout_ca829b5.css" />
<link rel="stylesheet" type="text/css"
	href="//www.lgstatic.com/www/static/pkg/index/page/index/main.html_aio_6538dc6.css" />
<link rel="stylesheet" type="text/css"
	href="//www.lgstatic.com/www/static/pkg/widgets_1a33497.css" />
<link rel="stylesheet" type="text/css"
	href="//www.lgstatic.com/www/static/pkg/index/page/index/main.html_aio_2_7ace53f.css" />
</head>
<body>

	<!-- 黑色导航 -->
	<div id="lg_tbar">

		<div class="inner">

			<div class="lg_tbar_l">
				<a rel="nofollow" href="./index.jsp"
					class="lg_app" target="_blank">网上招聘系统</a> <a rel="nofollow"
					href="company_login.jsp" class="lg_os">企业入口</a>
			</div>


			<ul class="lg_tbar_r">
				<!-- if has unread message, add class unreaded -->
				<li class="msg_dropdown"><a class="msg_group"
					href="message.jsp" rel="nofollow"> 消息 <em
						class="msg_amount hide" id="headMsgAmount"></em>
				</a> <!-- <div class="lg_msg_popup">
						<div class="lg_msg_pu_body" id="lgPopupMsgBody"></div>
						<div class="lg_msg_pu_footer">
							<a href="https://www.lagou.com/message/settingsdetail.html"
								target="_blank" class="lg_msg_setting fl"><i
								class="lg_msg_avatar setting_i"></i>&nbsp;</a> <a
								href="https://www.lagou.com/message/msgdetail.html"
								class="lg_msg_more fr">查看更多</a>
						</div>
					</div> --></li>
				<li><a href="userbio.jsp" class="bl" rel="nofollow">我的简历</a></li>
				<li><a href="delivery.jsp" class="bl" id="deliveryLink"
					rel="nofollow">投递箱</a> <em class="noticeDot dn"
					id="noticeDot_delivery"></em></li>
				<li><a href="collection.jsp" class="bl" rel="nofollow">收藏夹</a></li>

				<a href="./edit_profile.jsp" rel="nofollow">帐号设置</a>

				<li><a href="./company_login.jsp" rel="nofollow">去企业版</a></li>
				<s:url action="logout" var="logout"></s:url>
				<li><a href="${logout }" rel="nofollow">退出</a></li>
			</ul>


		</div>
	</div>


	<!-- 白色导航 -->
	<!-- 用户的白色导航有 首页， 公司， -->

	<div id="lg_tnav">

		<div class="inner">
			<div class="lg_tnav_l">
				<a href="./index.jsp">
					<h1>招聘网</h1>
				</a>

			</div>
			<ul class="lg_tnav_wrap">
				<li><a href="./index.jsp" class="current">首页</a></li>
				<li><a href="./look_job.jsp">浏览职位</a></li>
				<li><a rel="nofollow" href="./edit_bio.jsp" target="_blank">撰写简历</a></li>
			</ul>
		</div>
	</div>

</body>
</html>