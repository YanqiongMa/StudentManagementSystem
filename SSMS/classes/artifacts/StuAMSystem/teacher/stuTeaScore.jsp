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
    
    <title>My JSP 'stuScore.jsp' starting page</title>
    
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
.div_list {
	width: 75%;
	margin: 0 auto;
	margin-top: 50px;
	margin-left: 20%;

}
#tableClass{
margin:0 auto;
width: 100%

}
.form1{
	width: 200px;
	display: inline-block
}
.div_select{
	width:700px;;
	margin:auto;
	margin-top:20px;
}
font {
	color: red;
	font-weight: bold;
	text-align: center;
}
table{
width:100%;
margin:0 auto;

}
table tr td{
text-align: center;
width:150px;
height:40px;
}
a{
text-decoration: none;
cursor:pointer;

}
</style>
<script type="text/javascript">

function page(s){
	var frm=document.getElementById("frm");
	var pageNo=document.getElementById("pageNo");
	pageNo.value=s;
	frm.submit();
}
</script>
  </head>
  
  <body>
  
    <form action="ServletTeaSearchScore" method="post" id="frm">
    <div class="div_list">
    学&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" class="form1 form-control"  name="stuNum" value="${score.getStuNum() }" />&nbsp;&nbsp;
  	姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text"  class="form1 form-control"  name="stuName" value="${score.getStuName() }" />&nbsp;&nbsp;
  	班&nbsp;&nbsp;&nbsp;&nbsp;级：<input type="text"  class="form1 form-control"  name="stuClass" value="${score.getStuClass() }" />&nbsp;&nbsp;
  	
  	<input class="btn btn-primary" type="submit" value="查询" /><br/><br/>
		<div class=" panel panel-default">
				
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Class</td>
				<td>Course</td>
				<td>Score</td>
				<td>Major</td>
				
			</tr>
			<c:forEach var="list" items="${list.pbjs }">
			<tr>
				<td>${list.getStuNum() }</td>
				<td>${list.getStuName() }</td>
				<td>${list.getStuClass() }</td>
				<td>${list.getCourseName() }</td>
				<td>${list.getScoreGrade() }</td>
				<td>${list.getMajor() }</td>
				
			</tr>
			</c:forEach>
			<tr>
					<td colspan="7">
						<a onclick="page(1);">front</a>
						<c:if test="${list.isPrevious() }">
							<a onclick="page(${list.pageNo-1});">previous</a>
						</c:if> 
						<c:if test="${(list.pageNo+1)<list.totalPage }">
						<a onclick="page(${list.pageNo+1 });">${list.pageNo+1 }</a>
						</c:if> 
						<c:if test="${(list.pageNo+2)<list.totalPage }">
						<a onclick="page(${list.pageNo+2 });">${list.pageNo+2 }</a>
						</c:if> 
						<c:if test="${list.isNext() }">
							<a onclick="page(${list.pageNo+1});">next</a>
						</c:if> 
						<a onclick="page(${list.totalPage });">final</a> <br />
						redirect to：<input class="form-control form1"
						id="pageNo" type="text" name="pageNo" value="${list.pageNo }" />
						record：<input type="text" class="form-control form1" name="pageCount"
						value="${list.pageCount }" /> 
						
						<input class="btn btn-primary"
						type="submit" value="redirect to" /> We have${list.totalPage }pages</td>
				</tr>
		</table>
	</div>
	</div>
	</form>
  </body>
</html>
 
