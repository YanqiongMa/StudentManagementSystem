<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   <%--  <base href="<%=basePath%>"> --%>
    
    <title>My JSP 'adminMenu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
/**{box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;}*/
/*body{background:#f0f0f0;}*/
.content{width:260px;margin:20px auto;}
.filterinput{
	background-color:rgba(249, 244, 244, 0);
	border-radius:15px;
	width:90%;
	height:30px;
	border:thin solid #FFF;
	text-indent:0.5em;
	font-weight:bold;
	color:#FFF;
}
#demo-list a{
	overflow:hidden;
	text-overflow:ellipsis;
	-o-text-overflow:ellipsis;
	white-space:nowrap;
	width:100%;
}
</style>	
	
<script src="js/jquery-1.8.1.js" type="text/javascript"></script>
<script src="js/jquery-accordion-menu.js" type="text/javascript"></script>
<script type="text/javascript">

$(function(){	
	//顶部导航切换
	$("#demo-list li").click(function(){
		$("#demo-list li.active").removeClass("active");
		$(this).addClass("active");
	});	
});	
</script>

  </head>
  
  <body>
    <div style="text-align:center;clear:both">
				<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
				<script src="/follow.js" type="text/javascript"></script>
			</div>
			<div class="content">

				<div id="jquery-accordion-menu" class="jquery-accordion-menu white">
					<div class="title">
						<span>Admin</span>
					</div>
					
					<ul id="demo-list">

						<li class="active"><a ><i class="fa fa-user"></i>Personal information</a>
							<ul class="submenu">
								<li><a href="q.jsp" target="mainRight">Edit information</a>
								</li>
								<li><a href="ServletselectPwd" target="mainRight">Query password</a>
								</li>
							</ul></li>
						<li><a href="#"><i class="fa fa-envelope"></i>Score management</a>
							<ul class="submenu">
								<li><a href="#">Query score</a>
								</li>
								<li><a href="#">Edit score </a>
								</li>
								<li><a href="#">Design </a>
								</li>
								<li><a href="#">Consulting </a>
								</li>
							</ul></li>
						</li>
						<li><a href="#"><i class="fa fa-cog"></i>Course management</a>
							<ul class="submenu">
								<li><a href="#">Query course</a>
								</li>
								<li><a href="#">Edit course</a>
								</li>
								<li><a href="#">Add course</a>
								</li>
								<li><a href="#">Consulting </a>
								</li>
							</ul></li>
						
						<li><a href="#"><i class="fa fa-suitcase"></i>Student management </a>
							<ul class="submenu">
								<li><a href="#">Web Design </a>
								</li>
								<li><a href="#">Graphics </a><span
									class="jquery-accordion-menu-label">10 </span></li>
								<li><a href="#">Photoshop </a>
								</li>
								<li><a href="#">Programming </a>
								</li>
							</ul></li>
							<li><a href="#"><i class="fa fa-home"></i>Teacher management </a>
							<ul class="submenu">
								<li><a href="#">Web Design </a>
								</li>
								<li><a href="#">Graphics </a><span
									class="jquery-accordion-menu-label">10 </span></li>
								<li><a href="#">Photoshop </a>
								</li>
								<li><a href="#">Programming </a>
								</li>
							</ul></li>
							<li><a href="#"><i class="fa fa-home"></i>Major management </a>
							<ul class="submenu">
								<li><a href="#">Web Design </a>
								</li>
								<li><a href="#">Graphics </a><span
									class="jquery-accordion-menu-label">10 </span></li>
								<li><a href="#">Photoshop </a>
								</li>
								<li><a href="#">Programming </a>
								</li>
							</ul></li>
							<li><a href="#"><i class="fa fa-home"></i>System management </a>
							<ul class="submenu">
								<li><a href="#">Web Design </a>
								</li>
								<li><a href="#">Graphics </a><span
									class="jquery-accordion-menu-label">10 </span></li>
								<li><a href="#">Photoshop </a>
								</li>
								<li><a href="#">Programming </a>
								</li>
							</ul></li>


					</ul>

				</div>
			</div>

			<script type="text/javascript" src="js/them.js"></script>

			<script type="text/javascript">
				jQuery("#jquery-accordion-menu").jqueryAccordionMenu();
			</script>
  </body>
</html>
