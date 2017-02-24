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
			alert("adminid already exists!");
			return false;
		}
		if (errMsg != null && errMsg == "S") {
			alert("Account created successfully!");
			return false;
		}
		
		

	}

	function adminSignup() {
		
		if (document.getElementById("adminid") == null
				|| document.getElementById("adminid").value == "") {
			alert("Please enter ID");
			return false;
		}
		if (document.getElementById("adminname") == null
				|| document.getElementById("adminname").value == "") {
			alert("Please enter name");
			return false;
		}
		if (document.getElementById("adminpassword") == null
				|| document.getElementById("adminpassword").value == "") {
			alert("Please enter Password");
			return false;
		}
		if (document.getElementById("adminemail") == null
				|| document.getElementById("adminemail").value == "") {
			alert("Please enter eMail");
			return false;
		}

		if (document.getElementById("adminphone") == null
				|| document.getElementById("adminphone").value == "") {
			alert("Please enter phone number");
			return false;
		}
		
		var phnNum=document.getElementById("adminphone").value;
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

		<html:form action="/adminsignup" focus="adminid">
			<table align="center">
				<tr>
					<td><p class="lead">adminid : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="adminid" id="adminid"
								name="adminid" />
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">Password : &nbsp;</p></td>
					<td><p class="lead">
							<input type="password" property="adminpassword" id="adminpassword"
								name="adminpassword" />
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">Name : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="adminname" id="adminname"
								name="adminname" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Email ID</p></td>
					<td><p class="lead">
							<input type="text" property="adminemail" id="adminemail"
								name="adminemail" />
						</p></td>
				</tr>


				<tr>
					<td><p class="lead">Phone : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" title="Please enter 10 digits"
								property="adminphone" id="adminphone" name="adminphone">
						</p></td>
				</tr>

			</table>
			<br>
			<table align="center">
				<tr align="center">
					<td><input type="button" value="Admin Sign up"
						onclick="adminSignup()" class="btn btn-dark btn-lg" /></td>
						
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
