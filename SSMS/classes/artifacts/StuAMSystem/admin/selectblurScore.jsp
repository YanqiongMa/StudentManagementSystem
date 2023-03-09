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
    
    <title>My JSP 'selectblurScore.jsp' starting page</title>
    
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
font {
	color: red;
	font-weight: bold;
	text-align: center;
}
table{
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


    <form action="ServletSearchScore" method="post" id="frm">
    <div class="div_list">
    Course：<input type="text" class="form1 form-control"   name="cosName" value="${score.getCourseName() }" />&nbsp;&nbsp;
  	ID：<input type="text" class="form1 form-control"  name="stuNum" value="${score.getStuNum() }" />&nbsp;&nbsp;
  	Name：<input type="text"  class="form1 form-control" name="stuName" value="${score.getStuName() }" /><br/><br/>
  	Class：<input type="text"  class="form1 form-control" name="stuClass" value="${score.getStuClass() }" />&nbsp;&nbsp;
  	Major：<input type="text"  class="form1 form-control" name="major" value="${score.getMajor() }" /> &nbsp;&nbsp;
  	<input type="submit" class="btn btn-primary"  value="Query" /><br/><br/>
		<div class=" panel panel-default">
			<div class="panel-heading">Score information</div>
		<table class="table panel-body" id="tableClass">
			<tr>
				<td>ID</td>
				<td>Name</td>
				<td>Class</td>
				<td>Course</td>
				<td>Score</td>
				<td>Major</td>
				<td>Option</td>
			</tr>
			<c:forEach var="list" items="${list.pbjs }">
			<tr>
				<td>${list.getStuNum() }</td>
				<td>${list.getStuName() }</td>
				<td>${list.getStuClass() }</td>
				<td>${list.getCourseName() }</td>
				<td>${list.getScoreGrade() }</td>
				<td>${list.getMajor() }</td>
				<td><a href="ServletSelectScore?scoreID=${list.getScoreID() }">Edit</a>&nbsp;&nbsp;&nbsp;<a href="ServletDeleteScore?scoreID=${list.getScoreID() }" onclick="return confirm('Do you want to delete？')">Delete</a></td>
				
			</tr>
			</c:forEach>
			<tr>
					<td colspan="7">
						<a onclick="page(1);">Front</a>
						<c:if test="${list.isPrevious() }">
							<a onclick="page(${list.pageNo-1});">Previous</a>
						</c:if> 
						<c:if test="${(list.pageNo+1)<list.totalPage }">
						<a onclick="page(${list.pageNo+1 });">${list.pageNo+1 }</a>
						</c:if> 
						<c:if test="${(list.pageNo+2)<list.totalPage }">
						<a onclick="page(${list.pageNo+2 });">${list.pageNo+2 }</a>
						</c:if> 
						<c:if test="${list.isNext() }">
							<a onclick="page(${list.pageNo+1});">Next</a>
						</c:if> 
						<a onclick="page(${list.totalPage });">Final</a> <br />
						redirect to：<input class="form-control form1"
						id="pageNo" type="text" name="pageNo" value="${list.pageNo }" />
						record：<input type="text" name="pageCount" class="form-control form1"
						value="${list.pageCount }" /> 
						
						<input class="btn btn-primary"
						type="submit" value="redirect to"/>We have${list.totalPage }pages</td>
				</tr>
		</table>
	</div>
	</div>
	</form>
  </body>
</html>
