<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Feedback</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="bootstrap.custom.css" rel="stylesheet">

<!-- Custom Fonts -->

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">
<!-- 
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
		document.forms[0].submit();
	}
	
</script>	
-->	


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

		<section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    
                    <div class="row">
                       
       
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="viewalladminfeedback.jsp">View All Feedbacks
                                    
                                </a>
                            </div>
                        </div>
                        
                        
                    </div>
                   </div>
            </div>
        </div>
    </section>
	</center>
	
	<br>
	<br>
	
	<table align="center">
				<tr align="center">
					<td>
				<input type="button" value="Go Back" 
onclick="window.location='MenuPage.jsp'" class="btn btn-dark btn-lg"  />
					</td>
				</tr>
			
			</table>
	

<%@ include file="footer.jsp" %>


</body>
</html>
