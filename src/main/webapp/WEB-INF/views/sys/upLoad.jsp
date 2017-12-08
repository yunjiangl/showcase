<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>中国南方电网</title>
</head>
<script type="text/javascript" src="/public/js/fileinput.js"></script>
<script type="text/javascript" src="/public/js/locales/zh.js"></script>
<link href="/public/css/bootstrap.min.css" rel="stylesheet">
<script src="/public/plugins/jquery-3.2.1.min.js"></script>
<script src="/public/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/public/css/public.css">
<link rel="stylesheet" type="text/css" href="/public/css/upload.css">
<body>
	<div class="upload">
		<form action="/sys/file/uploadFile" method="post"
			enctype="multipart/form-data">
			<table cellpadding="0" cellspacing="0" border="0" class="t1">
				<tr>
					<td>标题:</td>
					<td><input type="text" name="menuName" value="${menu.menuName}">
						 <input type="text" name="menuId" value="${menu.menuId}" style="display: none;"> 
					</td>
				</tr>
				<tr class="m1">
					<td>文件夹选择：</td>
					<td><select class="n1" name="folder">
							<option value="">不选择文件夹</option>
							<c:forEach items="${folders}" var="folder">
								<option value="${folder.folderName}.${folder.folderId}">${folder.folderName}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr class="m1">
					<td>文件上传</td>
					<td>
						<div class="htmleaf-container">
							<div class="container kv-main">
								<font class="font"></font><input  type="file"
									multiple  name="files" />
							</div>
						</div>
					</td>
				</tr>
			</table>
			<button value="submit" class="btn btn-primary btn-small">确定</button>
		</form>
		
	</div>
</body>
</html>
