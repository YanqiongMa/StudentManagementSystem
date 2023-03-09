<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	width:30%;
	height:44px;
	color:rgba(0,0,0,.6)
}
._td{
	width:30%
}
font{
	color:red;
	font-weight: bold;
}
</style>

<script type="text/javascript">
    function check()
   {   
        var date = document.getElementById("tim").value;
        var result = date.match(/((^((1[8-9]\d{2})|([2-9]\d{3}))(-)(10|12|0?[13578])(-)(3[01]|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))(-)(11|0?[469])(-)(30|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))(-)(0?2)(-)(2[0-8]|1[0-9]|0?[1-9])$)|(^([2468][048]00)(-)(0?2)(-)(29)$)|(^([3579][26]00)(-)(0?2)(-)(29)$)|(^([1][89][0][48])(-)(0?2)(-)(29)$)|(^([2-9][0-9][0][48])(-)(0?2)(-)(29)$)|(^([1][89][2468][048])(-)(0?2)(-)(29)$)|(^([2-9][0-9][2468][048])(-)(0?2)(-)(29)$)|(^([1][89][13579][26])(-)(0?2)(-)(29)$)|(^([2-9][0-9][13579][26])(-)(0?2)(-)(29)$))/);
        if(result==null)
        {
            alert("Please enter correct format of date.");
            doucument.getElementById("tim").focus();
            return false;
        }
        
}
    </script>

</head>

<body>
	<form action="ServletaddCourse" method="post">
		<div class="div_ads">
			<table>
				<tr>
					<td>Course：</td>
					<td class="_td"><input type="text" name="courseName" class="form-control"/></td>
				</tr>
				<tr>
					<td>Credit：</td>
					<td class="_td"><input type="text" name="courseCredit" class="form-control" /></td>
				</tr>
				<tr>
					<td>Hours：</td>
					<td class="_td"><input type="text" name="courseHours" class="form-control" /></td>
				</tr>
				<tr>
					<td>Teacher：</td>
					<td class="_td"><input type="text" name="courseTea" class="form-control" /></td>
				</tr>
				<tr>
					<td>Term：</td>
					<td class="_td"><input type="text" name="courseDate" class="form-control" id="tim" onblur="check();" /></td>
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
