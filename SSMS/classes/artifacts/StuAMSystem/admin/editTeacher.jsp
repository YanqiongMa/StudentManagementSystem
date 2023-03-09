<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	width: 100%
}

table tr td {
	text-align: center;
	width:50%;
	height:50px;
}
</style>
</head>

<body>
	<form action="ServletEditTea" method="post">
	
		<div class="div_ads">
		<font>${msg }</font>
		<c:forEach var="list" items="${list }">
			<table>
				<tr>
					<td>ID：</td>
					<td><input type="text" name="teaNum" class="form-control" value="${list.getTeaNum() }" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>Name：</td>
					<td><input type="text" name="teaName" class="form-control" value="${list.getTeaName() }" /></td>
				</tr>
				<tr>
					<td>Gender：</td>
					<td><input type="text"  name="teaSex" class="form-control" value="${list.getTeaSex() }"  />
						
					</td>
				</tr>
				<tr>
					<td>Age：</td>
					<td><input type="text" name="teaAge" class="form-control" value="${list.getTeaAge() }" /></td>
				</tr>
				<tr>
					<td>Course：</td>
					<td><input type="text" name="teaCourse" class="form-control" value="${list.getTeaCourse() }" /></td>
				</tr>
				<tr>
					<td>Major：</td>
					<td><input type="text" name="major" class="form-control" value="${list.getMajor() }" /></td>
				</tr>
				<tr>
					<td>College：</td>
					<td><input type="text" name="department" class="form-control" value="${list.getDepartment() }" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Edit" class="btn btn-primary" /></td>
					<td><input type="reset" value="Empty" class="btn btn-danger" /></td>
				</tr>
			</table>
			</c:forEach>
		</div>
	</form>
</body>
</html>