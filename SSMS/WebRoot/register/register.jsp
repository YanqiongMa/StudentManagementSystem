<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>🔷Register</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
	<style type="text/css">
		html, body {
				margin: 0;
				padding: 0;
				width: 100%;
				height: 100%;
				background-image: linear-gradient(to bottom, #243949 0%, #517fa4 100%);
				overflow: hidden;
			}
		canvas{
			position: absolute;
			top: 0;
		}
		.div_ads {
			z-index: 3;
			width: 30%;
			margin: 0 auto;
			margin-top: 50px;
			border: 1px solid #ccc;
			background: rgba(238, 235, 235,1);
			position: relative;
			border-radius: 6px;
			height: 650px;
		}
	
		table {
			position: absolute;
			left: 10%;
		}
		table tr td {
			text-align: center;
			height:44px;
			width: 8%;
			text-align: center;
		}
		h3{
			text-align: center;
			padding-top: 20px;
		}
		hr{
			margin-left: 15px;
			margin-right: 15px;
			background: #ccc;
		}
		.btn1{
			background: #afc5d6;
		}
		font{
			font-size: .7rem;
			float: left;
		}
	</style>


<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/particle-bg.umd.min.js"></script>
<script type="text/javascript">
window.onload = function(){
	particleBg('body', {
			color: 'rgba(255, 255, 255, 0.5)'
		});
}
</script>
<script type="text/javascript">
	
	function AjaxChecked(){
		var xmlHttpRequest=null;
		if(XMLHttpRequest){
			xmlHttpRequest=new XMLHttpRequest();
		}else{
			xmlHttpRequest=new ActiveXObject("Microsoft.XMLHTTP");
		}
		if(xmlHttpRequest!=null){
			//拿到账号
			var stuNum=document.getElementById("stuNum");
			if(stuNum.value==""){
				document.getElementById("stuNumcheck").innerHTML = "Student ID can NOT be empty";
			}else{
			
				var url="ServletRegisterStu?stuNum="+stuNum.value;
				xmlHttpRequest.open("get",url,true);
				
				xmlHttpRequest.send();
				xmlHttpRequest.onreadystatechange=function(){
					if(xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200){
						var text = xmlHttpRequest.responseText;
						//alert(text);
						document.getElementById("stuNumcheck").innerHTML = text;
					}
				};
			}
		}
	}
	
	function namecheck(){
		var stuName=document.getElementById("stuName").value;
		var rename=/^[\u4e00-\u9fa5]+$/gi;          //中文判断
		if(stuName==""){
			document.getElementById("stuNamecheck").innerHTML = "Username can NOT be empty";
		}
		else if (!rename.test(stuName))
		{
			document.getElementById("stuNamecheck").innerHTML = "Please enter the name, such as: Wen Junwang";
		}else{
			document.getElementById("stuNamecheck").innerHTML = "Correct";
		}
	}
	
	function pwdcheck(){
		var pwd1=document.getElementById("password").value;
		if(pwd1==""){
			document.getElementById("stuPwdcheck").innerHTML = "Password can NOT be blank";
		}else if(pwd1.length<6){
			document.getElementById("stuPwdcheck").innerHTML = "Password cannot be less than six characters";
		}else {
			document.getElementById("stuPwdcheck").innerHTML = "Correct";
		}
	}
	
	function pwdc(){
		
		var pwd1=document.getElementById("password").value;
		var pwd2=document.getElementById("pwd").value;
		
		if(pwd1!=pwd2){
			
			document.getElementById("stuPwdrcheck").innerHTML = "Two entered passwords can NOT match";
		}else {
			document.getElementById("stuPwdrcheck").innerHTML = "Correct";
		}
	}
</script>
</head>

<body>
	 <form action="ServletRegistersStudent" method="post"> 
	
		<div class="div_ads">
		<font>${msg}</font><h3>Registration Page</h3>
		<hr class="color:black">
		
			<table>
				<tr>
					<td colspan="2"><input type="text" name="stuNum" class="put form-control" id="stuNum" onblur="AjaxChecked();" placeholder="Student ID" aria-describedby="basic-addon1"/></td>
					<td><font id="stuNumcheck"></font></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="text" name="stuName" class="put form-control" id="stuName" onblur="namecheck();" placeholder="Name" aria-describedby="basic-addon1"/></td>
					<td><font id="stuNamecheck"></font></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="password" name="password" class="put form-control" id="password" onblur="pwdcheck();"  placeholder="Password" aria-describedby="basic-addon1"/></td>
					<td><font id="stuPwdcheck"></font></td>
				</tr>
				<tr>
				
					<td colspan="2"><input type="password" name="pwd" class="put form-control" id="pwd" onblur="pwdc();"  placeholder="Confirm Password" aria-describedby="basic-addon1"/></td>
					<td><font id="stuPwdrcheck"></font></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="radio"  name="stuSex" value="Male" checked="checked" />Male
						<input type="radio" name="stuSex" value="Female" />Female
					</td>
				</tr>
				<tr>
				
					<td colspan="2"><input type="text" name="stuAge" class="put form-control" placeholder="Age" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="text" name="stuClass" class="put form-control" placeholder="Class" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
				
					<td colspan="2"><input type="text" name="major" class="put form-control" placeholder="Major" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="text" name="department" class="put form-control" placeholder="College" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
					
					<td colspan="2"><input type="text" name="phone" class="put form-control" placeholder="Phone Number" aria-describedby="basic-addon1"/></td>
				</tr>
				<tr>
					<td colspan="2"><input type="hidden" name="role" value="0" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Register" class="putb btn btn1" /></td>
					<td><input type="reset" value="Empty" class="putb btn btn1" /></td>
				</tr>
			</table>
		</div>
	 </form> 
</body>
</html>
  