<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/public/css/main.css">
<link rel="stylesheet" href="/public/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/public/css/public.css">
</head>
<body>
<ul>
<c:forEach	items="${FileListAll}" var="fa">
	<li id="li"><a><i class="fa fa-folder-open"></i> ${fa.folderName }</a></li>
</c:forEach>
</ul>
<c:forEach	items="${FileList}" var="fl">
<ul>
	<c:if test="${fl.fileSuffix=='doc'||fl.fileSuffix=='docx' }">
		<li><a><i class="fa fa-file-word-o"></i> ${fl.fileName }</a></li>
	</c:if>
	<c:if test="${fl.fileSuffix=='xls' ||fl.fileSuffix=='xlsx' }">
		<li><a><i class="fa fa-file-excel-o"></i> ${fl.fileName }</a></li>
	</c:if>
</ul>
</c:forEach>
</body>
</html>