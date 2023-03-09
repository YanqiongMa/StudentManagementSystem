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
    
    <title>My JSP 'teacherInfo.jsp' starting page</title>
    
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
	margin-left: 20%;
}
#tableClass{
	margin:0 auto;
	width: 100%
}
</style>
</head>

<body>
	<!-- <form action="ServletEditTea" method="post"> -->
	
		<div class="div_ads panel panel-default">
		<div class="panel-heading">Teacher information</div>
			<table class="table panel-body" id="tableClass">
			<c:forEach var="list" items="${list }">
				<tr>
					<td>ID：</td>
					<td>${list.getTeaNum() }</td>
				</tr>
				<tr>
					<td>Name：</td>
					<td>${list.getTeaName() }</td>
				</tr>
				<tr>
					<td>Gender：</td>
					<td>${list.getTeaSex() }</td>
				</tr>
				<tr>
					<td>Age：</td>
					<td>${list.getTeaAge() }</td>
				</tr>
				<tr>
					<td>Course：</td>
					<td>${list.getTeaCourse() }</td>
				</tr>
				<tr>
					<td>Major：</td>
					<td>${list.getMajor() }</td>
				</tr>
				<tr>
					<td>College：</td>
					<td>${list.getDepartment() }</td>
				</tr>
				</c:forEach>
			</table>
		</div>

</body>
</html>
