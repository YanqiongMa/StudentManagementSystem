<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'addStudent.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
.div_ads {
	width: 75%;
	margin: 0 auto;
	margin-top: 50px;
	margin-left: 10%;
}

table {
	margin: 0 auto;
	width:100%;
	border-collapse:separate; 
	border-spacing:0px 10px;
}

table tr td {
	text-align: center;
	width:150px;
	height:44px;
}

font{
	color:red;
	font-weight: bold;
}
</style>
</head>

<body>
	<form action="ServletaddStudent" method="post">
	
		<div class="div_ads">
		
			<table>
				<tr>
					<td>ID：</td>
					<td><input type="text" name="stuNum" class="form-control" /></td>
				</tr>
				<tr>
					<td>Name：</td>
					<td><input type="text" name="stuName" class="put form-control" /></td>
				</tr>
				<tr>
					<td>Password：</td>
					<td><input type="text" name="password" class="put form-control" /></td>
				</tr>
				<tr>
					<td>Gender：</td>
					<td><input type="radio"  name="stuSex" value="Male" checked="checked" />Male
						<input type="radio" name="stuSex" value="Female" />Female
					</td>
				</tr>
				<tr>
					<td>Age：</td>
					<td><input type="text" name="stuAge" class="put form-control" /></td>
				</tr>
				<tr>
					<td>Class：</td>
					<td><input type="text" name="stuClass" class="put form-control" /></td>
				</tr>
				<tr>
					<td>Major：</td>
					<td><input type="text" name="major" class="put form-control" /></td>
				</tr>
				<tr>
					<td>College：</td>
					<td><input type="text" name="department" class="put form-control" /></td>
				</tr>
				<tr>
					<td>Phone Number：</td>
					<td><input type="text" name="phone" class="form-control" /></td>
				</tr>
				<tr>
					<td colspan="2"><input class="form-control" type="hidden" name="role" value="0" /></td>
					
				</tr>
				<tr>
					<td><input type="submit" value="Add" class="btn btn-primary" /></td>
					<td><input type="reset" value="Empty" class="btn btn-danger" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
