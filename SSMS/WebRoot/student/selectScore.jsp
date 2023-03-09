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
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style type="text/css">
.div_select,.div_ads {
	width:75%;
	margin: auto;
	margin-top: 50px;
	margin-left:20%;
}
.attr{
	font:bold;
}
a{
	cursor: pointer
}
#form1{
width:200px;
display: inline-block
}
#pageNo{
width:200px;
display: inline-block
}
</style>
<link rel="stylesheet" href="css/bootstrap.min.css">

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
		
		<div class="div_select">
				<form action="ServletOneStudentScore" method="post">
				Course：<input type="text" class="form-control" id="form1"  name="cosName"/> <input type="submit" class="btn btn-primary" value="Query" />
				</form>
			</div>
			<form action="ServletFindStudentScore" method="post" id="frm"></form>
		<div class="div_ads">
				<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading">
							Score Information
						</div>
					  
						<!-- Table -->
					
						<table class="table" style="width: 100%">
							<tr>
								<td><b>Course</b></td>
								<td><b>Credit</b></td>
								<td><b>Hours</b></td>
								<td><b>Teacher</b></td>
								<td><b>Major</b></td>
								<td><b>Term</b></td>
								<td><b>Score</b></td>
							</tr>
							<c:forEach var="list" items="${list.pbjs }">
								<tr>
										<td>${list.getCourseName() }</td>
										<td>${list.getCourseCredit() }</td>
										<td>${list.getCourseHours() }</td>
										<td>${list.getCourseTeacher() }</td>
										<td>${list.getMajor() }</td>
										<td>${list.getCourseDate() }</td>
										<td>${list.getScoreGrade() }</td>
											
								</tr>
								</c:forEach>
							<tr>
							<td colspan="7"><a onclick="page(1);">front</a>
							<c:if test="${list.isPrevious() }"> 
								<a onclick="page(${list.pageNo-1});">previous</a>
							</c:if> 
							<c:if test="${list.isNext() }">
								<a onclick="page(${list.pageNo+1});">next</a>
							</c:if> 
							<a onclick="page(${list.totalPage });">final</a> <br />
								redirect to：<input id="pageNo" type="text"  class="form-control form1"  name="pageNo" value="${list.pageNo }" />
							record：<input type="text" name="pageCount"  class="form-control" id="form1"  value="${list.pageCount }" />
							<input type="hidden" name="totalPage" value="${list.totalPage }" id='form1' /> 
							<input type="submit" class="btn btn-primary" value="redirect to" /> We have${list.totalPage }pages</td>
						</tr>
						</table>
					
					  </div>
		</div>
	</form>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>


 
