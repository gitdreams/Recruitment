<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="./layui/css/layui.css" media="all">
<script src="./layui/layui.js" charset="utf-8"></script>


</head>

<body>
	<div class="container-body">
		<div class="clearfix">
			<div id="sidebar" class="sidebar"
				data-lg-tj-track-code="index_navigation" data-lg-tj-track-type="1">
				<div class="mainNavs">
				<!-- 从这开始 -->
					<div class="menu_box">
						<div class="menu_main job_hopping">
							<div class="category-list">
								<h2>技术</h2>
								<a href="">显示第一栏</a> <i class="arrow"></i>
							</div>
						</div>
						<div class="menu_sub dn">
							<dl>
								<dd>
									<a href="">2</a> <a href="">3</a>
								</dd>
							</dl>
						</div>
					</div>
				<!-- 到这结束是一个栏目 -->
					
					<div class="menu_box">
						<div class="menu_main job_hopping">
							<div class="category-list">
								<h2>技术</h2>
								<a href="">显示第一栏</a> <i class="arrow"></i>
							</div>
						</div>
						<div class="menu_sub dn">
							<dl>
								<dd>
									<a href="">2</a> <a href="">3</a>
								</dd>
							</dl>
						</div>
					</div>
					
					
				</div>
			</div>
		</div>

		<!--     <div class="subscribe">
        <a href="https://www.lagou.com/s/subscribe.html" target="_blank" rel="nofollow" data-lg-tj-id="4g00" data-lg-tj-no="idnull" data-lg-tj-cid="idnull">
            <span>订阅职位</span>
            <i></i>
        </a>
    </div> -->
		<!-- <div class="suggestCity"><strong>北京站</strong><span id="changeCity_btn">[切换城市]</span></div> -->
	</div>



	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/vendor_e3ddeee.js"></script>
	<script type="text/javascript">
		/*resourcemap*/
		require
				.config({
					paths : {
						"common/components/artTemplate/template-helper" : "//www.lgstatic.com/www/static/common/components/artTemplate/template-helper_69eaf51",
						"common/widgets/common/msgPopup" : "//www.lgstatic.com/www/static/common/widgets/common/msgPopup_ff38f07"
					}
				});
	</script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/index/page/index/main.html_aio_b1a1945.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/widgets_120b982.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/layout_32be855.js"></script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/index/page/index/main.html_aio_2_aa346e4.js"></script>
	<script type="text/javascript">
		window.global = window.global || {};
		global.userCtx = 'com.lagou.entity.User@7605c3fa';

		window.global = window.global || {};
		global.isLogin = true;
		global.isFirst = false;
		global.subSite = '北京';
		global.subSites = '全国,上海,杭州,广州,深圳,成都,武汉'.split(',');

		require([ 'common/widgets/header_c/modules/emailvalid/main' ]);

		require([ 'common/widgets/passport/passport' ], function() {

			require([ 'common/widgets/common/msgPopup' ]);
			// require('notice');

		});

		require([ 'common/widgets/header_c/layout/main' ]);

		require([ 'common/widgets/footer_c/layout/main' ]);

		require([ 'common/widgets/new_login_toolbar/main' ])

		//业务主模块入口
		require([ 'index/page/index/main' ]);
	</script>
	<script type="text/javascript"
		src="//www.lgstatic.com/www/static/pkg/lg-analytics_ea85146.js"></script>
	<script type="text/javascript"
		src="https://www.lagou.com/upload/oss.js"></script>
</body>
</body>
</html>