<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
				
		alert("Logged out successfully!");
		window.location.hash="no-back-button";
		window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
		window.onhashchange=function(){window.location.hash="no-back-button";}
		
	}
	
</script>
</head>

<body onload="displayError()">

	<!-- Header -->
	<header id="top" class="header">
	<div class="text-vertical-center">
		<h1>WRIGHT STAY</h1>
		<h4>Find wonderful places to live around the campus </h4>
		<br> <a href="login.jsp" class="btn btn-dark btn-lg">Log in </a><a
			href="signup.jsp" class="btn btn-dark btn-lg">Signup</a>
	</div>
	</header>

	
<%@ include file="footer.jsp" %>

</body>
</html>
