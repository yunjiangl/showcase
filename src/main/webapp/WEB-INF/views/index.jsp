<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>铜仁南方电网展示平台</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="public/css/bootstrap.min.css">
  <link rel="stylesheet" href="public/css/font-awesome.min.css">
  <link rel="stylesheet" href="public/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="public/css/all-skins.min.css">
  <link rel="stylesheet" href="public/css/main.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!-- ADD THE CLASS layout-boxed TO GET A BOXED LAYOUT -->
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper" id="rrapp" v-cloak>
  <header class="main-header">
    <a href="javascript:void(0);" class="logo">
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b><img src="public/images/logo.png"></b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
		  <li><a><i class="fa fa-lock"></i> 欢迎 {{user.userName}}</a></li>
		  <li><a href="javascript:;" @click="updatePassword"><i class="fa fa-lock"></i> &nbsp;修改密码</a></li>
          <li><a href="logout"><i class="fa fa-sign-out"></i></a></li>
		</ul>
      </div>
    </nav>
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">导航菜单</li>
        <li><a href=""><i class="fa fa-user"></i>用户管理</a></li>
        <li><a href=""><i class="fa fa-th-list"></i>分类管理</a></li>
        <li class="active">
          <a>
            <i class="fa fa-folder-open-o"></i>
              <span class="left-top" >
              文件管理
              </span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu" id="left">
            <li><a href="">生产管理</a></li>
            <li><a href="">规章制度</a></li>
            <li><a href="">精益化管理</a></li>
            <li><a href="">供电所指标</a></li>
            <li><a href="">营销管理</a></li>
            <li><a href="">事故事件通报学习-违章看板</a></li>
            <li><a href="">供电所</a></li>
            <li><a href="">党风廉政建设</a></li>
          </ul>
        </li>
      </ul>
<script type="text/javascript">
$(function(){
  $(".active #left li").hide();
  $(".left-top").click(function(){
    $(this).parent().find('li').slideToggle();
  });
})
</script>
    </section>
    <!-- /.sidebar -->
  </aside>
  <!-- =============================================== -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <ol class="breadcrumb" id="nav_title" style="position:static;float:none;">
        <li class="active"><i class="fa fa-home" style="font-size:20px;position:relative;top:2px;left:-3px;"></i> &nbsp; <a href="">首页</a></li>
        <li class="active">{{navTitle}}</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content" style="background:#f4f4f4;">
      <iframe scrolling="yes" frameborder="0" style="width:100%;min-height:200px;overflow:visible;background:#fff;" :src="main"></iframe>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
  
  <!-- 修改密码 -->
<div id="passwordLayer" style="display: none;">
	<form class="form-horizontal">
	<div class="form-group">
		<div class="form-group">
		   	<div class="col-sm-2 control-label">账号</div>
		    <span class="label label-success" style="vertical-align: bottom;">{{user.userName}}</span>
		</div>
		<div class="form-group">
		   	<div class="col-sm-2 control-label">原密码</div>
		   	<div class="col-sm-10">
		      <input type="password" class="form-control" v-model="password" placeholder="原密码"/>
		    </div>
		</div>
		<div class="form-group">
		   	<div class="col-sm-2 control-label">新密码</div>
		   	<div class="col-sm-10">
		      <input type="text" class="form-control" v-model="newPassword" placeholder="新密码"/>
		    </div>
		</div>
	</div>
	</form>
</div>

</div>
<!-- ./wrapper -->



<script src="public/libs/jquery.min.js"></script>
<script src="public/libs/vue.min.js"></script>
<script src="public/libs/router.js"></script>
<script src="public/libs/bootstrap.min.js"></script>
<script src="public/libs/app.js"></script>
<script src="public/plugins/layer/layer.js"></script>
<script src="public/js/index.js"></script>
</body>
</html>
