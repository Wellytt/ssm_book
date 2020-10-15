<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>图书管理系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
    <script type="text/javascript" src="js/libs/modernizr.min.js"></script>
</head>
<body>
	<div class="topbar-wrap white">
		<div class="topbar-inner clearfix">
			<div class="topbar-logo-wrap clearfix">
				<h1 class="topbar-logo none">
					<a href="index.html" class="navbar-brand">后台管理</a>
				</h1>
			</div>
		</div>
	</div>
	<div class="container clearfix">
		<div class="sidebar-wrap">
			<div class="sidebar-title">
				<h1>图书管理系统</h1>
			</div>
			<div class="sidebar-content">
				<ul class="sidebar-list">
					<li><a><i class="icon-font">&#xe003;</i>常用操作</a>
						<ul class="sub-menu">
							<li><a href="jsp/allbook.jsp"><i class="icon-font">&#xe008;</i>图书管理</a></li>
							<li><a href="jsp/index.jsp"><i class="icon-font">&#xe006;</i>注销</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!--/sidebar-->
		<div class="main-wrap">

			<div class="crumb-wrap">
				<div class="crumb-list">
					<i class="icon-font"></i>首页<span class="crumb-step">&gt;</span><span
						class="crumb-name">图书管理</span>
				</div>
			</div>
			<div class="search-wrap">
				<div class="search-content">
					<form action="findbyname.do" method="post">
						<table class="search-tab">
							<tr>
								<th width="70">查书:</th>
								<td><input class="common-text" placeholder="请输入图书名字"
									name="bookName" value="" id="" type="text"></td>
								<td><input class="btn btn-primary btn2" name="sub"
									value="查询" type="submit"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="result-wrap">
				<form name="myform" id="myform" method="post">
					<div class="result-title">
						<div class="result-list">
							<a href="addbook.jsp?bookID=${obj.getBookID()}&bookName=${obj.getBookName()}&bookAuthor=${obj.getBookAuthor() }
							&bookCounts=${obj.getBookCounts()}&bookPrice=${obj.getBookPrice()}">
							<i class="icon-font"></i>新增图书</a>
						</div>
					</div>
					<div class="result-content">
						<table class="result-tab" width="100%">
							<tr>
								<th class="tc" width="5%">书号</th>
								<th>书名</th>
								<th>作者</th>
								<th>数量</th>
								<th>单价</th>
								<th>操作</th>
							</tr>
							<c:forEach items="${book}" var="obj">
								<tr>
									<td class="tc">${obj.getBookID()}</td>
									<td>${obj.getBookName()}</td>
									<td>${obj.getBookAuthor() }</td>
									<td>${obj.getBookCounts() }</td>
									<td>${obj.getBookPrice() }</td>
									<td><a class="link-update"
										href="updatebook.jsp?bookID=${obj.getBookID() }&bookName=${obj.getBookName()}&bookAuthor=${obj.getBookAuthor() }
										&bookCounts=${obj.getBookCounts()}&bookPrice=${obj.getBookPrice()}">修改</a>
										| <a class="link-del"
										href="deletebook.do?bookID=${obj.getBookID() }">删除</a></td>
								</tr>
							</c:forEach>
							<div class="list-page">
								当前页面是第${pageNum }页<br />
								<c:if test="${pageNum >1}">
									<a href="allbook.do?pageNum=${pageNum-1 }">上一页</a>
								</c:if>
								<c:if test="${pageNum <3}">
									<a href="allbook.do?pageNum=${pageNum+1 }">下一页</a>
								</c:if>
			 				</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
