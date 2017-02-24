<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="bootstrap.custom.css" rel="stylesheet">

<!-- Custom Fonts -->

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<script>

<%String errorMsg = (String) session.getAttribute("message");%>

var errMsg="<%=errorMsg%>";

<%session.removeAttribute("message");%>
	function displayError() {
		if (errMsg != null && errMsg == "FL") {
			alert("Invalid User Name or Password");
			return false;
		}
		
		else if (errMsg != null && errMsg == "SL") {
			alert("Account created succesfully!");
			return false;
		}
		
		else if (errMsg != null && errMsg == "AFL") {
			alert("Click on admin login link to login with admin credentials...");
			return false;
		}

		
	}

	function userLogin() {
		if (document.getElementById("userName") == null
				|| document.getElementById("userName").value == "") {
			alert("Please enter User Name");
			return false;
		}
		if (document.getElementById("password") == null
				|| document.getElementById("password").value == "") {
			alert("Please enter Password");
			return false;
		}
		document.forms[0].submit();
	}
</script>
</head>
<body onload="displayError()">

	<aside class="call-to-action bg-primary">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Wright Stay is the perfect place to search your housing!</h2>
				<p class="lead">This site features some wonderful places around
					the campus.</p>
			</div>
		</div>
	</div>
	</aside>

	<br>
	<br>

<b>
<input type="button" value="Admin Login" 
onclick="window.location='adminlogin.jsp'" style="float: right;" class="btn btn-dark btn-lg"  />

</b>
<br>
<br>
<br>

	<center>

		<html:form action="/login" focus="userName">
			<table align="center">
				<tr>
					<td><p class="lead">Username : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="userName" id="userName"
								name="userName" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Password :</p></td>
					<td><p class="lead">
							<input type="password" property="password" id="password"
								name="password" />
						</p></td>
				</tr>
			</table>
			<br>
			<table align="center">
				<tr align="center">
					<td><input type="button" value="Login" onclick="userLogin()"
						class="btn btn-dark btn-lg" /></td>
				</tr>
			</table>

		</html:form>
	</center>


<%@ include file="footer.jsp" %>


</body>
</html>
