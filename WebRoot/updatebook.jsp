<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改图书页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

.STYLE1 {
	helgit: 450px;
	width: 800px;
	background-color:;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.STYLE2 {
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	line-height: 70px;
	height: 70px;
	width: 800px;
	margin: auto;
	background-color: #408140;
}

.a td {
	font-size: 20px;
	color: Gray;
	border: none;
	text-align: center;
}

.b {
	width: 90%;
	height: 35px;
	font-size: 15px;
}

#ab {
	font-size: 20px;
	height: 40px;
	width: 120px;
	background: #408140;
}
</style>

</head>

<body>
	<form name="form2" action="updatebook.do" method="post"
		onSubmit="return inputNull(this)">
		<div class="STYLE1">
			<div align="center" class="STYLE2">修改图书信息</div>
			<table width="800" height="400" border="1" align="center" class="a">
				<tr>
					<td height="20"></td>
				</tr>
				<tr>
					<td width="50"></td>
					<td width="200"><input type="hidden" id="new_bookNum"
						placeholder=" 图书书号" name="bookID"
						value=<%=request.getParameter("bookID") %> class="b"></td> 
				</tr>
				<tr>
					<td width="50">书名:</td>
					<td width="200"><input type="text" id="change_bookName"
						placeholder="图书名称" name="bookName"
						value=<%=request.getParameter("bookName") %> class="b"></td>
				</tr>
				<tr>
					<td>作者:</td>
					<td><input type="text" id="change_author" placeholder="图书作者"
						name="bookAuthor" value=<%=request.getParameter("bookAuthor") %>
						class="b"></td>
				</tr>
				<tr>
					<td>数量:</td>
					<td><input type="text" id="change_number" placeholder="图书数量"
						name="bookCounts" value=<%=request.getParameter("bookCounts") %>
						class="b"></td>
				</tr>
				<tr>
					<td>单价:</td>
					<td><input type="text" id="change_price" placeholder="图书单价"
						name="bookPrice" value=<%=request.getParameter("bookPrice") %>
						class="b"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="submit"
						value="修改图书" id="ab">&nbsp;&nbsp;&nbsp;</td>

				</tr>
			</table>
		</div>
	</form>

	<script type="text/javascript">
  		function inputNull(form){
			for(i=0;i<form.length;i++){
                    //form属性的elements的首字母e要小写
				if(form.elements[i].value == ""){ 
					alert(form.elements[i].placeholder + "不能为空！");
					form.elements[i].focus();	
					return false;
				}
			}
  	  	}
  	</script>

</body>
</html>

