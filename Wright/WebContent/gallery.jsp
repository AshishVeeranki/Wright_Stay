<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style>
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>

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

<br><br>
	<center>	
		<h2>Gallery &#9786;</h2>
		<hr class="small">
	</center>
	
	<section id="portfolio" class="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    
                    <div class="row">
                        
                        
                       <div class="col-md-6">
                            <div class="portfolio-item">
                            	
                                    <img id="myImg" src="images/img1.jpg" height="250" width="250">
                                
                            </div>
                        </div>
 						
 						
 						
                        
                        <div class="col-md-6">
                            <div class="portfolio-item">
                            	
                                    <img id="myImg" src="images/img2.jpg" height="250" width="250">
                                
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="portfolio-item">
                            	
                                    <img id="myImg" src="images/img4.jpg" height="250" width="250">
                                
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="portfolio-item">
                            	
                                    <img id="myImg" src="images/img5.jpg" height="250" width="250">
                                
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="portfolio-item">
                            	
                            <img id="myImg" src="images/img6.jpg" 	height="250" width="250">
                            	                  
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