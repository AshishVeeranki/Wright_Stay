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
<title>Search</title>

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

	<table align="center" border="2" width="1600">

		<col width="150">
		<col width="200">
		<col width="100">
		<col width="100">
		<col width="100">
		<col width="100">
		<col width="100">
		<col width="100">
		
		<col width="100">
		<col width="150">
		<col width="100">
		<col width="200">
		<col width="100">


		<tr>
			<th><p class="lead">Community name</p></th>
			<th><p class="lead">Address</p></th>
			<th><p class="lead">City</p></th>
			<th><p class="lead">State</p></th>
			<th><p class="lead">Zipcode</p></th>
			<th><p class="lead">Rent</p></th>
			<th><p class="lead">Distance</p></th>
			<th><p class="lead">Vacancies</p></th>
			
			<th><p class="lead">Posted by</p></th>
			<th><p class="lead">Posted date</p></th>
			<th><p class="lead">Phone</p></th>
			<th><p class="lead">Email</p></th>
			<th><p class="lead">Contact</p></th>
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
				"SELECT communityName, mailingAddress, city, usstate, zipcode, rent, distance, vacancies, postedby, posteddate, phone, email, lastName FROM houses a, users b WHERE a.userid=b.userid and enddate is null");

		/* ResultSet rs=statement.executeQuery("select cname,address,distance,rent,email,phone from userposteddetails" ); */

		while (rs.next()) {
	%>


	<table align="center" border="1" width="1600" class="table-hover">

		<col width="150">
		<col width="200">
		<col width="100">
		<col width="100">
		<col width="100">
		<col width="100">
		<col width="100">
		<col width="100">
		
		<col width="100">
		<col width="150">
		<col width="100">
		<col width="200">
		<col width="100">



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
			<td><center>
					<p class="lead">
						<%=rs.getString(3)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(4)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(5)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(6)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(7)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(8)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(9)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(10)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(11)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(12)%>
					</p>
				</center></td>
			<td><center>
					<p class="lead">
						<%=rs.getString(13)%>
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
				<td><a href="MenuPage.jsp"> <input type="button"
						value="Go Back" class="btn btn-dark btn-lg" />
				</a></td>
			</tr>
		</table>


	</center>

	<%@ include file="footer.jsp"%>


</body>
</html>
