<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>管理员列表</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="stylesheet" href="/public/css/bootstrap.min.css">
<link rel="stylesheet" href="/public/css/font-awesome.min.css">
<link rel="stylesheet" href="/public/plugins/jqgrid/ui.jqgrid-bootstrap.css">
<link rel="stylesheet" href="/public/plugins/ztree/css/metroStyle/metroStyle.css">
<link rel="stylesheet" href="/public/css/main.css">
<script src="/public/libs/jquery.min.js"></script>
<script src="/public/plugins/layer/layer.js"></script>
<script src="/public/libs/bootstrap.min.js"></script>
<script src="/public/libs/vue.min.js"></script>
<script src="/public/plugins/jqgrid/grid.locale-cn.js"></script>
<script src="/public/plugins/jqgrid/jquery.jqGrid.min.js"></script>
<script src="/public/plugins/ztree/jquery.ztree.all.min.js"></script>
<script src="/public/js/common.js"></script>
</head>
<body>
<div id="rrapp" v-cloak>
	<div v-show="showList">
		<div class="grid-btn">
			<div class="form-group col-sm-2">
				<input type="text" class="form-control" v-model="q.username" @keyup.enter="query" placeholder="用户名">
			</div>
			<a class="btn btn-default" @click="query">查询</a>
			<a v-if="hasPermission('sys:user:save')" class="btn btn-primary" @click="add"><i class="fa fa-plus"></i>&nbsp;新增</a>
			<a v-if="hasPermission('sys:user:update')" class="btn btn-primary" @click="update"><i class="fa fa-pencil-square-o"></i>&nbsp;修改</a>
			<a v-if="hasPermission('sys:user:delete')" class="btn btn-primary" @click="del"><i class="fa fa-trash-o"></i>&nbsp;删除</a>
		</div>
	    <table id="jqGrid"></table>
	    <div id="jqGridPager"></div>
    </div>
    
    <div v-show="!showList" class="panel panel-default">
		<div class="panel-heading">{{title}}</div>
		<form class="form-horizontal">
			<div class="form-group">
			   	<div class="col-sm-2 control-label">用户名</div>
			   	<div class="col-sm-10">
			      <input type="text" class="form-control" v-model="user.username" placeholder="登录账号"/>
			    </div>
			</div>
			<div class="form-group">
			   	<div class="col-sm-2 control-label">密码</div>
			   	<div class="col-sm-10">
			      <input type="text" class="form-control" v-model="user.password" placeholder="密码"/>
			    </div>
			</div>
			<div class="form-group">
			   	<div class="col-sm-2 control-label">邮箱</div>
			   	<div class="col-sm-10">
			      <input type="text" class="form-control" v-model="user.email" placeholder="邮箱"/>
			    </div>
			</div>
			<div class="form-group">
			   	<div class="col-sm-2 control-label">手机号</div>
			   	<div class="col-sm-10">
			      <input type="text" class="form-control" v-model="user.mobile" placeholder="手机号"/>
			    </div>
			</div>
			<div class="form-group">
			   	<div class="col-sm-2 control-label">角色</div>
			   	<div class="col-sm-10">
				   	<label v-for="role in roleList" class="checkbox-inline">
					  <input type="checkbox" :value="role.roleId" v-model="user.roleIdList">{{role.roleName}}
					</label>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-2 control-label">状态</div> 
				<label class="radio-inline">
				  <input type="radio" name="status" value="0" v-model="user.status"/> 禁用
				</label>
				<label class="radio-inline">
				  <input type="radio" name="status" value="1" v-model="user.status"/> 正常
				</label>
			</div>
			<div class="form-group">
				<div class="col-sm-2 control-label"></div> 
				<input type="button" class="btn btn-primary" @click="saveOrUpdate" value="确定"/>
				&nbsp;&nbsp;<input type="button" class="btn btn-warning" @click="reload" value="返回"/>
			</div>
		</form>
	</div>
</div>

<script src="/public/js/sys/user.js"></script>
</body>
</html>