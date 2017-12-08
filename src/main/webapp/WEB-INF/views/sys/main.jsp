<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>控制台</title>
<link rel="stylesheet" href="/public/css/main.css">
<link rel="stylesheet" href="/public/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/public/css/public.css">
</head>
<body>
<!-- center-box start -->
<div class="center-box">
<!-- top start-->
	<div class="top">
			<ul class="main_01">
				<header>${msg0}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==1 }">
					<li><a href=""><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==1}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a href=""><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==1}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a href=""><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</dt>
					
					
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num0 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
			<ul class="main_02">
				<header>${msg1}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==2 }">
					<li><a href=""><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==2}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a href=""><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==2}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a href=""><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num1 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
	</div>
	<!-- top end -->
<div style="clear: both;"></div>
<!-- center start -->
	<div class="center">
		<ul class="main_03">
				<header>${msg2}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==3 }">
					<li><a href=""><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==3}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a href=""><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==4}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a href=""><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num2 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
			<ul class="main_04">
				<header>${msg3}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==4 }">
					<li><a href=""><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==4}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a href=""><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==4}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a href=""><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num3 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
	</div>
	<!-- center end -->
<div style="clear: both;"></div>	
	<!-- after start -->
	<div class="after">
		<ul class="main_05">
				<header>${msg4}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==5 }">
					<li><a href=""><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==5}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a href=""><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==5}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a href=""><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num4 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
			<ul class="main_06">
				<header>${msg5}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==6 }">
					<li><a href=""><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==6}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a href=""><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==6}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a href=""><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num5 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
			<ul class="main_07">
				<header>${msg6}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==7 }">
					<li><a href=""><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==7}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a href=""><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==7}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a href=""><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num6 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			
			</ul>
			
	</div>
	<!-- after end -->
</div>
<!-- ccenter-box end -->
</body>
</html>