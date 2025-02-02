<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="My online portfolio that illustrates skills I acquired while working in LIS4368 at Florida State University.">
	<meta name="author" content="Ryan M. Parks">
	<link rel="icon" href="favicon.ico">

	<title>Ryan's Online Portfolio</title>

	<%@ include file="/css/include_css.jsp" %>		

<!-- Carousel styles -->
<style type="text/css">
h2
{
	margin: 0;     
	color: #666666;
	padding-top: 50px;
	font-size: 52px;
	font-family: "trebuchet ms", sans-serif;    
}
.item
{
	background: #666666;    
	text-align: center;
	height: 300px !important;
}
.carousel
{
  margin: 20px 0px 20px 0px;
}
.bs-example
{
  margin: 20px;
}
</style>
	
</head>
<body>
	
	<%@ include file="/global/nav_global.jsp" %>	
	
	<div class="container">
		 <div class="starter-template">
						<div class="page-header">
						<%@ include file="/global/header.jsp" %>							
						</div>

<!-- Start Bootstrap Carousel  -->
<div class="bs-example">
	<div
      id="myCarousel"
		class="carousel"
		data-interval="1000"
		data-pause="hover"
		data-wrap="true"
		data-keyboard="true"			
		data-ride="carousel">
		
    	<!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>   
       <!-- Carousel items -->
        <div class="carousel-inner">

				 <div class="active item" style="background: url(img/fsu.jpg) no-repeat left center; background-size: cover;">
					 <div class="container">
						 <div class="carousel-caption">
								<h3>Florida State University</h3>
							 <p class="lead">I am currently a junior at Florida State University. I am hoping to get a master's degree in Information Technology and a minor in computer science.</p>
							 <a class="btn btn-large btn-primary" href="https://fsu.edu">Learn more</a>
						 </div>
					 </div>
				 </div>					

         <div class="item" style="background: url(img/bitbucket.png) no-repeat left center; background-size: cover;">
                <h2>Slide 2</h2>
                <div class="carousel-caption">
                  <h3>Bitbucket</h3>
                  <p>We are actively using Bitbucket for LIS4368.</p>
						 <!--  <img src="img/slide2.png" alt="Slide 2"> -->
				  <a class="btn btn-large btn-primary" href="https://bitbucket.org/rmp21gfsu/lis4368">Learn more</a>
                </div>
            </div>

         <div class="item" style="background: url(img/code.jpg) no-repeat left center; background-size: cover;">
                <h2>Slide 3</h2>
                <div class="carousel-caption">
                  <h3>Code</h3>
                  <p>Code is a massive part of Information Technology and Computer Science.</p>
						<!--  <img src="img/slide3.png" class="img-responsive" alt="Slide 3">							 -->	
				  <a class="btn btn-large btn-primary" href="">Learn more</a>							
                </div>
            </div>

        </div>
        <!-- Carousel nav -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>
<!-- End Bootstrap Carousel  -->

 	<%@ include file="/global/footer.jsp" %>

	</div> <!-- end starter-template -->
</div> <!-- end container -->

 	<%@ include file="/js/include_js.jsp" %>
	
</body>
</html>
