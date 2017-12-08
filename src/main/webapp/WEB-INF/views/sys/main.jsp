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
<script type="text/javascript" src="/public/libs/jquery.min.js"></script>
<script type="text/javascript">
	/* $(document).ready(function(){
		$("#li").click(function(){
			alert(this).html();
			alert($("#list3id").html());
			
			$("#liii").hide();
			$("#liiii").show();
		})
	}) */
	function aaa(id){
		$.ajax({
			type : "get",
			url : "/sys/main/selectfolder",
			data: {"qwe":id}, 
			success : function(data) {
				for(var i=0;i<data.length;i++){  
			        //alert(data[i].fileName) 
			        var a=data[i].fileName;
			        var b=data[i].fileSuffix;
			        if(b=="doc"||b=="docx"){
			        	$("#liiii").append("<li><a><i class='fa fa-file-word-o'></i>"+a+"</a></li>");
			        }else{
			          $("#liiii").append("<li><a><i class='fa fa-file-excel-o'></i>"+a+"</a></li>");
			        }
			    }  
			}
		});
		
		$("#liii").hide();
		$("#liiii").show();
	}
	function bbb(id){
		$.ajax({
			type : "get",
			url : "/sys/main/selectfolder",
			data: {"qwe":id}, 
			success : function(data) {
				for(var i=0;i<data.length;i++){  
			        //alert(data[i].fileName) 
			        
			        var a=data[i].fileName;
			        var b=data[i].fileSuffix;
			        if(b=="doc"||b=="docx"){
			        	$("#liii2").append("<li><a><i class='fa fa-file-word-o'></i>"+a+"</a></li>");
			        }else{
			          $("#liii2").append("<li><a><i class='fa fa-file-excel-o'></i>"+a+"</a></li>");
			        }
			    }  
			}
		});
		
		$("#lii2").hide();
		$("#liii2").show();
	}
	function ccc(id){
		$.ajax({
			type : "get",
			url : "/sys/main/selectfolder",
			data: {"qwe":id}, 
			success : function(data) {
				for(var i=0;i<data.length;i++){  
			        //alert(data[i].fileName) 
			        
			        var a=data[i].fileName;
			        var b=data[i].fileSuffix;
			        if(b=="doc"||b=="docx"){
			        	$("#liii3").append("<li><a><i class='fa fa-file-word-o'></i>"+a+"</a></li>");
			        }else{
			          $("#liii3").append("<li><a><i class='fa fa-file-excel-o'></i>"+a+"</a></li>");
			        }
			    }  
			}
		});
		
		$("#lii3").hide();
		$("#liii3").show();
	}
	function ddd(id){
		$.ajax({
			type : "get",
			url : "/sys/main/selectfolder",
			data: {"qwe":id}, 
			success : function(data) {
				for(var i=0;i<data.length;i++){  
			        //alert(data[i].fileName) 
			        
			        var a=data[i].fileName;
			        var b=data[i].fileSuffix;
			        if(b=="doc"||b=="docx"){
			        	$("#liii4").append("<li><a><i class='fa fa-file-word-o'></i>"+a+"</a></li>");
			        }else{
			          $("#liii4").append("<li><a><i class='fa fa-file-excel-o'></i>"+a+"</a></li>");
			        }
			    }  
			}
		});
		
		$("#lii4").hide();
		$("#liii4").show();
	}
	function eee(id){
		$.ajax({
			type : "get",
			url : "/sys/main/selectfolder",
			data: {"qwe":id}, 
			success : function(data) {
				for(var i=0;i<data.length;i++){  
			        //alert(data[i].fileName) 
			        
			        var a=data[i].fileName;
			        var b=data[i].fileSuffix;
			        if(b=="doc"||b=="docx"){
			        	$("#liii5").append("<li><a><i class='fa fa-file-word-o'></i>"+a+"</a></li>");
			        }else{
			          $("#liii5").append("<li><a><i class='fa fa-file-excel-o'></i>"+a+"</a></li>");
			        }
			    }  
			}
		});
		
		$("#lii5").hide();
		$("#liii5").show();
	}
	function fff(id){
		$.ajax({
			type : "get",
			url : "/sys/main/selectfolder",
			data: {"qwe":id}, 
			success : function(data) {
				for(var i=0;i<data.length;i++){  
			        //alert(data[i].fileName) 
			        
			        var a=data[i].fileName;
			        var b=data[i].fileSuffix;
			        if(b=="doc"||b=="docx"){
			        	$("#liii6").append("<li><a><i class='fa fa-file-word-o'></i>"+a+"</a></li>");
			        }else{
			          $("#liii6").append("<li><a><i class='fa fa-file-excel-o'></i>"+a+"</a></li>");
			        }
			    }  
			}
		});
		
		$("#lii6").hide();
		$("#liii6").show();
	}
	function ggg(id){
		$.ajax({
			type : "get",
			url : "/sys/main/selectfolder",
			data: {"qwe":id}, 
			success : function(data) {
				for(var i=0;i<data.length;i++){  
			        //alert(data[i].fileName) 
			        
			        var a=data[i].fileName;
			        var b=data[i].fileSuffix;
			        if(b=="doc"||b=="docx"){
			        	$("#liii7").append("<li><a><i class='fa fa-file-word-o'></i>"+a+"</a></li>");
			        }else{
			          $("#liii7").append("<li><a><i class='fa fa-file-excel-o'></i>"+a+"</a></li>");
			        }
			    }  
			}
		});
		
		$("#lii6").hide();
		$("#liii6").show();
	}
</script>
<body>
<!-- center-box start -->
<div class="center-box">
<!-- top start-->
	<div class="top">
			<ul class="main_01">
				<header><a href="">${msg0}</a></header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
				<div id="liii">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==1 }">
					
					<li id="li" onclick="aaa(${list3.folderId })"><a><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					<span hidden="" id="list3id">${list3.folderId }</span>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==1}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a id="lii"><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==1}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</div>
					 <font id="liiii">
					</font>
					
					</dt>
					
					
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num0 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
			<ul class="main_02">
				<header>${msg1}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
				<div id="lii2">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==2 }">
					<li  id="li" onclick="bbb(${list3.folderId })"><a><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					<span hidden="" id="list3id">${list3.folderId }</span>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==2}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==2}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</div>
					<font id="liii2">
					</font>
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
				<div id="lii3">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==3 }">
					<li  id="li" onclick="ccc(${list3.folderId })" ><a><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					<span hidden="" id="list3id">${list3.folderId }</span>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==3}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==4}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</div>
					<font id="liii3">
					</font>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num2 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
			<ul class="main_04">
				<header>${msg3}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
				<div id="lii4">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==4 }">
					<li  id="li" onclick="ddd(${list3.folderId })"><a><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					<span hidden="" id="list3id">${list3.folderId }</span>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==4}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==4}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</div>
					<font id="liii4">
					</font>
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
				<div id="lii5">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==5 }">
					<li  id="li" onclick="eee(${list3.folderId })"><a><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					<span hidden="" id="list3id">${list3.folderId }</span>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==5}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==5}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</div>
					<font id="liii5">
					</font>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num4 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
			<ul class="main_06">
				<header>${msg5}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
				<div id="lii6">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==6 }">
					<li  id="li" onclick="fff(${list3.folderId })"><a><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					<span hidden="" id="list3id">${list3.folderId }</span>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==6}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==6}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</div>
					<font id="liii6">
					</font>
					</dt>
				<nav>
					<a href="/sys/file/upLoadPage?menuId=${num5 }"><i class="fa fa-pencil fa-fw"></i></a>
					<a href=""><i class="fa fa-trash-o fa-lg"></i></a>
				</nav>
			</ul>
			<ul class="main_07">
				<header>${msg6}</header>
				<dt style="position: absolute; height: 150px; overflow: auto; width: 100%;">
				<div id="lii7">
					<c:forEach items="${fodellist }" var="list3">
					<c:if test="${list3.folderMenu==7 }">
					<li  id="li" onclick="ggg(${list3.folderId })"><a><i class="fa fa-folder-open"></i>${list3.folderName }</a></li>
					<span hidden="" id="list3id">${list3.folderId }</span>
					</c:if>
					</c:forEach>
					<c:forEach items="${filelist }" var="filelist">
						<c:if test="${filelist.fileMenu==7}">
							<c:if test="${filelist.fileSuffix=='doc'||filelist.fileSuffix=='docx' }">
								<li><a><i class="fa fa-file-word-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
						<c:if test="${filelist.fileMenu==7}">
							<c:if test="${filelist.fileSuffix=='xls' ||filelist.fileSuffix=='xlsx' }">
								<li><a><i class="fa fa-file-excel-o"></i>${filelist.fileName }</a></li>
							</c:if>
						</c:if>
					</c:forEach>
					</div>
					<font id="liii7">
					</font>
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