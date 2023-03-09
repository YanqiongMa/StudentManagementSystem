<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%-- <base href="<%=basePath%>"> --%>

<title>My JSP 'adminMenuI.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
h3 {
	color: black;
}

.content_left .title {
	height: 45px;
	background: #ff6637;
	color: #fff;
	padding: 0 20px;
	line-height: 45px;
	font-size: 16px
}

.content_left .title span {
	background: url(images/ioc.png) no-repeat 0 center;
	padding-left: 22px;
}
</style>

<script type="text/javaScript" src="js/jquery-1.8.1.js"></script>
<script type="text/javaScript">
	$(document).ready(function() {

		/*  $("a").mouseover(function(){
			$("a").css("color","yellow");
		 });
		 $("a").mouseout(function(){
			$("a").css("color","#333300");
		 }); */
		$(".txt").hide();
		$(".t").click(function() {
			$(".txt").slideToggle("slow");
		});

	});
</script>
</head>

<body>
	<div class="content_left">
		<div class="title">
			<span>Admin</span>
		</div>
		<div class="left_nav">
			<ul>
				<li>
					<div class="t">
						<i></i><a class="head"><h3>Personal information</h3>
						</a>
					</div>
					<div class="txt">
						<p>
							<a href="ServletselectPwd" target="mainRight">Query password</a>
						</p>
						<p>
							<a href="ServletInfo" target="mainRight">Query personal information</a>
						</p>
					</div>
				</li>
				<li>
					<div class="t">
						<i></i><a class="head"><h3>Course managemengt</h3>
						</a>
					</div>
					<div class="txt">
						<p>
							<a href="ServletFindAllCos" target="mainRight">Course information</a>
						</p>
						<p>
							<a href="admin/addCourse.jsp" target="mainRight">Add course information</a>
						</p>
					</div>
				</li>
				<li>
					<div class="t">
						<i></i><a class="head"><h3>Score management</h3>
						</a>
					</div>
					<div class="txt">
						<p>
							<a href="ServletFindAllScore" target="mainRight">Score information</a>
						</p>
						<p>
							<a href="admin/addScore.jsp" target="mainRight">Add student score</a>
						</p>
						<p>
							<a href="ServletStuSumList?f=1" target="mainRight">Student rank</a>
						</p>
					</div>
				</li>
				<li>
					<div class="t">
						<i></i><a class="head"><h3>Teacher managemengt</h3>
						</a>
					</div>
					<div class="txt">
						<p>
							<a href="ServletFindAllTea" target="mainRight">Query teacher information</a>
						</p>
						<p>
							<a href="admin/addTeacher.jsp" target="mainRight">Add teacher information</a>
						</p>
					</div>
				</li>
				<li>
					<div class="t">
						<i></i><a class="head"><h3>Student management</h3>
						</a>
					</div>
					<div class="txt">
						<p>
							<a href="ServletFindAllStu" target="mainRight">Query student information</a>
						</p>
						<p>
							<a href="admin/addStudent.jsp" target="mainRight">Add student information</a>
						</p>
					</div>
				</li>
				<li>
					<div class="t">
						<i></i><a class="head"><h3>Account management</h3>
						</a>
					</div>
					<div class="txt">
						<p>
							<a href="PageServlet" target="mainRight">Query account</a>
						</p>
						<!-- <p>ServletFindAllUser
									<a href="admin/addStudent.jsp" target="mainRight">查询</a>
								</p> -->
					</div></li>
					<li>
					<div class="t">
						<i></i><a class="head"><h3>File management</h3>
						</a>
					</div>
					<div class="txt">
						<p>
							<a href="admin/fileUpload.jsp" target="mainRight">Upload</a>
						</p>
						 <p>
									<a href="ServletListFile" target="mainRight">Download</a>
								</p> 
					</div></li>
			</ul>
		</div>
	</div>
	<!-- <script charset="utf-8" type="text/javascript" src="js/jquery.js"></script>
			<script charset="utf-8" type="text/javascript" src="js/theme.js"></script> -->
</body>
</html>
