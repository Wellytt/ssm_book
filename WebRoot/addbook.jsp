<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>添加图书页面</title>

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
	height: 450px;
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
	<form name="form1" action="addbook.do" method="post"
		onSubmit="return inputNull(this)">
		<div class="STYLE1">
			<div align="center" class="STYLE2">添加图书信息</div>
			<table width="800" height="400" border="1" align="center" class="a">
				<tr>
					<td height="20"></td>
				</tr>
				<tr>
					<td width="50">书名:</td>
					<td width="200"><input type="text" id="new_bookName"
						placeholder=" 图书名字" name="bookName" class="b"></td>
				</tr>
				<tr>
					<td>作者:</td>
					<td><input type="text" id="new_author" placeholder=" 图书作者"
						name="bookAuthor" class="b"></td>
				</tr>
				<tr>
					<td>数量:</td>
					<td><input type="text" id="new_number" placeholder=" 图书数量"
						name="bookCounts" class="b"></td>
				</tr>
				<tr>
					<td>价格:</td>
					<td><input type="text" id="new_price" placeholder=" 图书价格"
						name="bookPrice" class="b"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" name="submit"
						value=" 确认添加 " id="ab">&nbsp;&nbsp;&nbsp; <input
						type="reset" name="submit2" value="重  置 " id="ab"></td>
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

