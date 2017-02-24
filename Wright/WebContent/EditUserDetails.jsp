<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import="java.sql.*"%>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Details</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="bootstrap.custom.css" rel="stylesheet">

<!-- Custom Fonts -->

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<script type="text/javascript">
	
<%String cMsg = (String) session.getAttribute("message");%>
<%String usrID = (String) session.getAttribute("usrID");%>
var cMsg="<%=cMsg%>";
<%session.removeAttribute("message");%>
	function displayMsg() {
		if (cMsg != null && cMsg == "S") {
			alert("Details Posted Successfully!");
			return false;
		}

	}

	function userPostedDetails() {
		if (document.getElementById("npassword") == null
				|| document.getElementById("npassword").value == "") {
			alert("Please enter password");
			return false;
		}

		document.forms[0].submit();
	}
</script>

</head>

<body onload="displayMsg()">

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

		<html:form action="/edituserdetails" focus="eMail">

			<%
				Connection conn = null;
					Statement statement = null;
					conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");
					statement = conn.createStatement();
					ResultSet rs = statement.executeQuery(
							"select username,firstname,lastname,password,email,phone from users where username like '"
									+ usrID + "' ");

					while (rs.next()) {
			%>

			<table align="center">

				<tr>
					<td><p class="lead">Username :</p></td>
					<td><p class="lead">
							<input type="text" property="uname" id="uname"
								readonly="readonly" name="uname" value="<%=rs.getString(1)%>" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Firstname :</p></td>
					<td><p class="lead">
							<input type="text" property="fname" id="fname"
								readonly="readonly" name="fname" value="<%=rs.getString(2)%>" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Lastname :</p></td>
					<td><p class="lead">
							<input type="text" property="lname" id="lname"
								readonly="readonly" name="lname" value="<%=rs.getString(3)%>" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Password :</p></td>
					<td><p class="lead">
							<input type="password" property="npassword" id="npassword"
								name="npassword" value="<%=rs.getString(4)%>" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Email : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" title="Please enter a valid email id"
								property="eMail" id="eMail" name="eMail"
								value="<%=rs.getString(5)%>" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Phone : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" title="Please enter 10 digits"
								property="phone" id="phone" name="phone"
								value="<%=rs.getString(6)%>" />
						</p></td>
				</tr>




				<%
					}
				%>




			</table>
			<br>
			<table align="center">
				<tr align="center">
					<td><input type="button" value="Submit"
						onclick="userPostedDetails()" class="btn btn-dark btn-lg" /></td>

					<td><input type="button" value="Go Back" 
onclick="window.location='MenuPage.jsp'" class="btn btn-dark btn-lg"  />
				</a>
					</td>
				</tr>
			</table>

		</html:form>
	</center>

	<%@ include file="footer.jsp"%>


</body>
</html>
