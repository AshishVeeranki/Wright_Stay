<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Success</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="bootstrap.custom.css" rel="stylesheet">

<!-- Custom Fonts -->

<link
	href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

	
</head>
<body>

	<aside class="call-to-action bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Wright Stay is the perfect place to search your housing!</h2>
                    <p class="lead">This site features some wonderful places around the campus.</p>                
                </div>
            </div>
        </div>
    </aside>

	<br><br>
	<input type="button" value="Gallery" 
onclick="window.location='gallery.jsp'" style="float: right;" class="btn btn-dark btn-lg"  />
<input type="button" value="Add Admin" 
onclick="window.location='adminsignup.jsp'" style="float: right;" class="btn btn-dark btn-lg"  />

<br><br>
	<center>	
		<h2>Welcome &#9786;</h2>
		<hr class="small">
	</center>
	
	<section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    
                    <div class="row">
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="AdminSearch.jsp">
                                    <img class="img-portfolio img-responsive" src="images/search.jpg">
                                </a>
                            </div>
                        </div>
       
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="PostDetails.jsp">
                                    <img class="img-portfolio img-responsive" src="images/post.jpg">
                                </a>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="portfolio-item">
                                <a href="viewallfeedback.jsp">
                                    <img class="img-portfolio img-responsive" src="images/feedback.jpg">
                                </a>
                            </div>
                        </div>
                        
                        
                    </div>
                   </div>
            </div>
        </div>
    </section>
	
	
	<footer>
	<div class="container">
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1 text-center">
				<h4>
				
				<a href="delete.jsp"><font color="#33cc33">&#9679;</font>Delete<font color="#ffffff">&#9679;</font></a>
				
				<a href="logout.jsp"><font color="#ff0000">&#9679;</font>Logout<font color="#ffffff">&#9679;</font></a>
		
				</h4>
				<h4>
					<strong>Wright Stay</strong>
				</h4>
				<p>
					3640 Colonel Glenn Hwy<br>Dayton, OH 45435
				</p>
				<ul class="list-unstyled">
					<li> (937) 775-3333</li>
					<li> <a href="mailto:raiders@wright.edu">raiders@wright.edu</a></li>
				</ul>
				<br>
			
				<hr class="small">
				<p class="text-muted">Copyright &copy; Wright Stay 2015</p>
			</div>
		</div>
	</div>
	</footer>
	
</body>
</html>