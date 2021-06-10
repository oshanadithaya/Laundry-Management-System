<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegularUser Account</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Your page description here" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="css/bootstrap.css" rel="stylesheet" />
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/prettyPhoto.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">

  <!-- Theme skin -->
  <link id="t-colors" href="color/default.css" rel="stylesheet" />

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.png" />

  <!-- =======================================================
    Theme Name: Remember
    Theme URL: https://bootstrapmade.com/remember-free-multipurpose-bootstrap-template/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>
<body>
<div id="wrapper">
    <!-- start header -->
    <header>
      <div class="top">
        <div class="container">
          <div class="row">
            <div class="span6">
              <ul class="topmenu">
                <li><a href="#">Home</a> &#47;</li>
                <li><a href="#">Terms</a> &#47;</li>
                <li><a href="#">Privacy policy</a></li>
              </ul>
            </div>
            <div class="span6">

              <ul class="social-network">
                <li><a href="#" data-placement="bottom" title="Facebook"><i class="icon-circled icon-bglight icon-facebook"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Twitter"><i class="icon-circled icon-bglight icon-twitter"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Linkedin"><i class="icon-circled icon-linkedin icon-bglight"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Pinterest"><i class="icon-circled icon-pinterest  icon-bglight"></i></a></li>
                <li><a href="#" data-placement="bottom" title="Google +"><i class="icon-circled icon-google-plus icon-bglight"></i></a></li>
              </ul>

            </div>
          </div>
        </div>
      </div>
      <div class="container">


        <div class="row nomargin">
          <div class="span4">
            <div class="logo">
              <h1><a href="packages.html"><i class="icon-tint"></i> LaundryMart</a></h1>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav">
                    <li><a href="index.html">Home</a></li>
                    <li class="dropdown">
                      <a href="#">Features <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="typography.html">Typography</a></li>
                        <li><a href="components.html">Components</a></li>
                        <li><a href="icons.html">Icons</a></li>
                        <li><a href="icon-variations.html">Icon variations</a></li>

                      </ul>
                    </li>
                    <li class="dropdown">
                      <a href="#">Pages <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="about.html">About us</a></li>
                        <li><a href="pricingbox.html">Pricing boxes</a></li>
                        <li><a href="404.html">404</a></li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a href="#">Portfolio <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio-2cols.html">Portfolio 2 columns</a></li>
                        <li><a href="portfolio-3cols.html">Portfolio 3 columns</a></li>
                        <li><a href="portfolio-4cols.html">Portfolio 4 columns</a></li>
                        <li><a href="portfolio-detail.html">Portfolio detail</a></li>
                      </ul>
                    </li>
                    <li class="dropdown">
                      <a href="#">Blog <i class="icon-angle-down"></i></a>
                      <ul class="dropdown-menu">
                        <li><a href="blog-left-sidebar.html">Blog left sidebar</a></li>
                        <li><a href="blog-right-sidebar.html">Blog right sidebar</a></li>
                        <li><a href="post-left-sidebar.html">Post left sidebar</a></li>
                        <li><a href="post-right-sidebar.html">Post right sidebar</a></li>
                      </ul>
                    </li>
                    <li class="active">
                      <a href="contact.html">Contact </a>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- end header -->

    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>User Packages Details</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="index.html">Home</a> <i class="icon-angle-right"></i></li>
              <li class="active">Edit Packages</li>
            </ul>
          </div>
        </div>
      </div>
    </section><br><br>
	<div class = "ProfileContainer">

	<table>
	<c:forEach var="ru" items="${ruDetails}">
	
	<c:set var="id" value="${ru.id}"/>
	<c:set var="mOrder" value="${ru.mOrder}"/>
	<c:set var="mWeight" value="${ru.mWeight}"/>
	<c:set var="w" value="${ru.w}"/>
	<c:set var="wd" value="${ru.wd}"/>
	<c:set var="wdp" value="${ru.wdp}"/>
	<c:set var="m" value="${ru.m}"/>
	<c:set var="ods" value="${ru.ods}"/>
	<c:set var="pad" value="${ru.pad}"/>
	<c:set var="uname" value="${ru.uname}"/>
	<c:set var="pword" value="${ru.pword}"/>
	
	<tr>
		<td>User ID</td>
		<td>${ru.id}</td>
		
	</tr>
	<tr>
		<td>Maximum Orders</td>
		<td>${ru.mOrder}</td>
		
	</tr>
	<tr>
		<td>Maximum Weight</td>	
		<td>${ru.mWeight}</td>
		
	</tr>
	<tr>
		<td>Washing</td>	
		<td>${ru.w}</td>
		
	</tr>
	<tr>
		<td>Washing + Drying</td>
		<td>${ru.wd}</td>
		
	</tr>
	<tr>	
		<td>Washing + Drying + Pessing</td>
		<td>${ru.wdp}</td>
		
	</tr>
	<tr>
		<td>Mending</td>	
		<td>${ru.m}</td>
		
	</tr>
	<tr>	
		<td>Oneday Service</td>
		<td>${ru.ods}</td>
		
	</tr>
	<tr>
		<td>Pick and Delivery</td>	
		<td>${ru.pad}</td>
		
	</tr>
	<tr>
		<td>Username</td>
		<td>${ru.uname}</td>
	</tr>
	<tr>	
		<td>Password</td>
		<td>${ru.pword}</td>
		
	</tr>	
		
	</c:forEach>
	</table>
	
	<c:url value = "UpdateRegUser.jsp" var = "reguserupdate">
		<c:param name = "id" value = "${id}"/>
		<c:param name = "mOrder" value = "${mOrder}"/>
		<c:param name = "mWeight" value = "${mWeight}"/>
		<c:param name = "w" value = "${w}"/>
		<c:param name = "wd" value = "${wd}"/>
		<c:param name = "wdp" value = "${wdp}"/>
		<c:param name = "m" value = "${m}"/>
		<c:param name = "ods" value = "${ods}"/>
		<c:param name = "pad" value = "${pad}"/>
		<c:param name = "uname" value = "${uname}"/>
		<c:param name = "pword" value = "${pword}"/>
	</c:url>
	
	<a href = "${reguserupdate}">
	<input type = "button" name = "update" value = "Update">
	</a>
	
	<br>
	<c:url value = "DeleteRegUser.jsp" var = "reguserdelete">
		<c:param name = "id" value = "${id}"/>
		<c:param name = "mOrder" value = "${mOrder}"/>
		<c:param name = "mWeight" value = "${mWeight}"/>
		<c:param name = "w" value = "${w}"/>
		<c:param name = "wd" value = "${wd}"/>
		<c:param name = "wdp" value = "${wdp}"/>
		<c:param name = "m" value = "${m}"/>
		<c:param name = "ods" value = "${ods}"/>
		<c:param name = "pad" value = "${pad}"/>
		<c:param name = "uname" value = "${uname}"/>
		<c:param name = "pword" value = "${pword}"/>
	</c:url>
	<a href = "${reguserdelete}">
	<input type ="button" name="delete" value="delete account">
	</a>
	
	
	</div>
	<br>
	
  	<footer>
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="widget">
              <div class="footer_logo">
                <h3><a href="index.html"><i class="icon-tint"></i> LaundryMart </a></h3>
              </div>
              <address>
							  <strong>LaundryMart.</strong><br>
  							Somestreet KW 101, Park Village W.01<br>
  							Jakarta 13426 Indonesia
  						</address>
              <p>
                <i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
                <i class="icon-envelope-alt"></i> email@domainname.com
              </p>
            </div>
          </div>
          <div class="span4">
            <div class="widget">
              <h5 class="widgetheading">Browse pages</h5>
              <ul class="link-list">
                <li><a href="#">Our company</a></li>
                <li><a href="#">Terms and conditions</a></li>
                <li><a href="#">Privacy policy</a></li>
                <li><a href="#">Press release</a></li>
                <li><a href="#">What we have done</a></li>
                <li><a href="#">Our support forum</a></li>
              </ul>

            </div>
          </div>
          <div class="span4">
            <div class="widget">
              <h5 class="widgetheading">From flickr</h5>
              <div class="flickr_badge">
                <script type="text/javascript" src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
              </div>
              <div class="clear"></div>
            </div>
          </div>
        </div>
      </div>
      <div id="sub-footer">
        <div class="container">
          <div class="row">
            <div class="span6">
              <div class="copyright">
                <p><span>&copy; LaundryMart. All right reserved</span></p>
              </div>

            </div>

            <div class="span6">
              <div class="credits">
                <!--
                  All the links in the footer should remain intact.
                  You can delete the links only if you purchased the pro version.
                  Licensing information: https://bootstrapmade.com/license/
                  Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Remember
                -->
                Created by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
  </div>
  <a href="#" class="scrollup"><i class="icon-angle-up icon-rounded icon-bglight icon-2x"></i></a>

  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/toucheffects.js"></script>
  <script src="js/google-code-prettify/prettify.js"></script>
  <script src="js/jquery.prettyPhoto.js"></script>
  <script src="js/portfolio/jquery.quicksand.js"></script>
  <script src="js/portfolio/setting.js"></script>
  <script src="js/animate.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="js/custom.js"></script>
	
</body>
</html>