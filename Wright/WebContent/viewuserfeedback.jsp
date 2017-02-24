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
<title>View Feedback</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="bootstrap.custom.css" rel="stylesheet">

<!-- Custom Fonts -->

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<script type="text/javascript">
	
</script>

</head>

<body>

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

	<table align="center" border="2" width="500">

		<col width="185">
		<col width="125">
		


		<tr>
			<th><p class="lead"> <b>House ID</b></p></th>
			<th><p class="lead"><b>Remarks/Comments</b></p></th>
		
		</tr>

	</table>

	<hr class="small">

	<%
		Connection conn = null;
		Statement statement = null;
		/* ResultSet rs= null; */
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sysdba", "system", "Akveeranki4");
		statement = conn.createStatement();

		ResultSet rs = statement.executeQuery(
				"SELECT a.houseid, a.remarks FROM feedback a, users b WHERE a.userID = b.userID");

		/* ResultSet rs=statement.executeQuery("select cname,address,distance,rent,email,phone from userposteddetails" ); */

		while (rs.next()) {
	%>


	<table align="center" border="1" width="500" class="table-hover">

	    <col width="125">
		<col width="125">
		


		<tr class="active">
			<td><center>
					<p class="lead">
						<%=rs.getString(1)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(2)%>
					</p>
				</center></td>
			

		</tr>

	</table>

	<hr class="small">


	<%
		}
		
			
	%>

	<center>

		<table align="center">

		</table>
		<br>
		<table align="center">
			<tr align="center">
				<td><a href="feedback.jsp"> <input type="button"
						value="Go Back" class="btn btn-dark btn-lg" />
				</a></td>
			</tr>
		</table>


	</center>

	<%@ include file="footer.jsp"%>


</body>
</html>
