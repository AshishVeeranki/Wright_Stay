<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Report A Feedback</title>

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
			alert("Feedback raised Successfully!");
			return false;
		}
		
	}
	
	function feedbackraise() {
		if (document.getElementById("remarks") == null
				|| document.getElementById("remarks").value == "") {
			alert("enter remarks");
			return false;
		}
		if (document.getElementById("hid") == null
				|| document.getElementById("hid").value == "") {
			alert("Please enter House id");
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

		<html:form action="/reportfeedback" focus="hid">
			<table align="center">
				
				
				

				<tr>
					<td><p class="lead">Remarks : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" 
								property="remarks" id="remarks" name="remarks">
						</p></td>
				</tr>
				
				<tr>
					<td><p class="lead">Hid : &nbsp;</p></td>
					<td><p class="lead">
							<input type="text" property="hid" id="hid" name="hid" />
						</p></td>
				</tr>
				

			</table>
			<br>
			<table align="center">
				<tr align="center">
					<td><input type="button" value="report"
						onclick="feedbackraise(); MenuPage.jsp" class="btn btn-dark btn-lg" />
						
						
				</td>
				<td>
				<input type="button" value="Go Back" 
onclick="window.location='feedback.jsp'" class="btn btn-dark btn-lg"  />
					</td>
				</tr>
			
			</table>

		</html:form>
	</center>

<%@ include file="footer.jsp" %>


</body>
</html>
