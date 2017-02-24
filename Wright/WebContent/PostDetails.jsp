<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Post Details</title>

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

var cMsg="<%=cMsg%>";

<%session.removeAttribute("message");%>
	function displayMsg() {
		if (cMsg != null && cMsg == "S") {
			alert("Details Posted Successfully!");
			return false;
		}
		
	}
	
	function userPostedDetails() {
		if (document.getElementById("cName") == null
				|| document.getElementById("cName").value == "") {
			alert("Please enter Name of the community");
			return false;
		}
		if (document.getElementById("rent") == null
				|| document.getElementById("rent").value == "") {
			alert("Please enter rent");
			return false;
		}
		if (document.getElementById("city") == null
				|| document.getElementById("city").value == "") {
			alert("Please enter city");
			return false;
		}
		
		if (document.getElementById("state") == null
				|| document.getElementById("state").value == "") {
			alert("Please enter state");
			return false;
		}
		
		var miles=document.getElementById("miles").value;
		if(isNaN(miles))
			{
				alert("miles should be number only");
				return false;
			}
		
		
		
		var miles=document.getElementById("miles").value;
		if(isNaN(miles))
			{
				alert("miles should be number only");
				return false;
			}
		
		
		var rent=document.getElementById("rent").value;
		if(isNaN(rent))
			{
				alert("rent should be number only");
				return false;
			}
		
		var vacancies=document.getElementById("vacancies").value;
		if(isNaN(vacancies))
			{
				alert("number of vacancies must be number only");
				return false;
			}
		
		
		var zipCode= document.getElementById("zipCode").value;
		
		if(zipCode.length<5)
		{
			alert("ZipCode cannnot be less than 5 digits");
			return false;
		}
		if(isNaN(zipCode))
		{
			alert("zipcode must be number only");
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

		<html:form action="/postdetails" focus="cName">
			<table align="center">
				<tr>
					<td><p class="lead">Name of the Community : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="cName" id="cName" name="cName" />
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Address :</p></td>
					<td><p class="lead">
							<input type="text" property="address" id="address" name="address" />
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">City :</p></td>
					<td><p class="lead">
							<input type="text" property="city" id="city" name="city" />
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">State :</p></td>
					<td><p class="lead">
							<input type="text" property="state" id="state" name="state" />
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">Zipcode :</p></td>
					<td><p class="lead">
							<input type="text" property="zipCode" id="zipCode" name="zipCode" />
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">Distance from University :&nbsp; &lt;</p></td>
					<td><p class="lead">
							<input type="text" property="miles" id="miles" name="miles" />&nbsp;miles
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Rent/month USD&nbsp; : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" title="Please enter only in digits"
								property="rent" id="rent" name="rent">
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Vacancies : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" title="Please enter digits"
								property="vacancies" id="vacancies" name="vacancies">
						</p></td>
				</tr>

				<tr>
					<td><p class="lead">Remarks : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" 
								property="remarks" id="remarks" name="remarks">
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">Name : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="pName" id="pName" name="pName" />
						</p></td>
				</tr>
				

			</table>
			<br>
			<table align="center">
				<tr align="center">
					<td><input type="button" value="Post details"
						onclick="userPostedDetails(); MenuPage.jsp" class="btn btn-dark btn-lg" />
						
						
				</td>
				<td>
				<input type="button" value="Go Back" 
onclick="window.location='MenuPage.jsp'" class="btn btn-dark btn-lg"  />
					</td>
				</tr>
			
			</table>

		</html:form>
	</center>

<%@ include file="footer.jsp" %>


</body>
</html>
