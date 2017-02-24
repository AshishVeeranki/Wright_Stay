<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Signup Page</title>

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
		if (errMsg != null && errMsg == "F") {
			alert("Username already exists!");
			return false;
		}
		if (errMsg != null && errMsg == "S") {
			alert("Account created successfully!");
			return false;
		}
		
		

	}

	function userSignup() {
		if (document.getElementById("userName") == null
				|| document.getElementById("userName").value == "") {
			alert("Please enter User Name");
			return false;
		}
		if (document.getElementById("firstName") == null
				|| document.getElementById("firstName").value == "") {
			alert("Please enter Firstname");
			return false;
		}
		if (document.getElementById("lastName") == null
				|| document.getElementById("lastName").value == "") {
			alert("Please enter Lastname");
			return false;
		}
		if (document.getElementById("password") == null
				|| document.getElementById("password").value == "") {
			alert("Please enter Password");
			return false;
		}
		if (document.getElementById("eMail") == null
				|| document.getElementById("eMail").value == "") {
			alert("Please enter eMail");
			return false;
		}

		if (document.getElementById("phone") == null
				|| document.getElementById("phone").value == "") {
			alert("Please enter phone number");
			return false;
		}
		var phnNum=document.getElementById("phone").value;
		//var zipCode= document.getElementById("zipCode").value;
		
		if(phnNum.length<10)
			{
				alert("Contact number cannnot be less than 10 digits");
				return false;
			}
		
		if(isNaN(phnNum))
			{
				alert("Contact Number should be number only");
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

	<center>

		<html:form action="/signup" focus="userName">
			<table align="center">
				<tr>
					<td><p class="lead">Username : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="userName" id="userName"
								name="userName" />
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">Firstname : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="firstName" id="firstName"
								name="firstName" />
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">Lastname : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="lastName" id="lastName"
								name="lastName" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Password :</p></td>
					<td><p class="lead">
							<input type="password" property="password" id="password"
								name="password" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Email : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" title="Please enter a valid email id"
								property="eMail" id="eMail" name="eMail">
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Phone : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" title="Please enter 10 digits"
								property="phone" id="phone" name="phone">
						</p></td>
				</tr>

			</table>
			<br>
			<table align="center">
				<tr align="center">
					<td><input type="button" value="Sign up"
						onclick="userSignup()" class="btn btn-dark btn-lg" /></td>
						
					<td>
						
						<input type="button" value="Login" 
onclick="window.location='login.jsp'" class="btn btn-dark btn-lg"  />


					</td>	
				</tr>
				
			</table>

		</html:form>
	</center>

	<%@ include file="footer.jsp"%>


</body>
</html>
