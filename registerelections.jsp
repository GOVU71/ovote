<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <title>Online Voting System</title>
<!--

TemplateMo 548 Training Studio

https://templatemo.com/tm-548-training-studio

-->
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-training-studio.css">
<style>
td,th {color:white;}
</style>
    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
            <a href="index.html" class="logo"><em> Online Voting System</em></a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
  
  

<li class="scroll-to-section"><a href="candidate.html">LogOut</a></li> 
                        </ul>        
                       
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top">
        <video autoplay muted loop id="bg-video">
           
        </video>

        <div class="video-overlay header-text">
            <div class="caption">
  <Br>
	<%@include file="DBConn.jsp" %>
	<table align="center" style="font-size:20px;">
<form action="registerelections1.jsp" method="post">
   <tr><td align="center" colspan=2>Enter Personal Details</td></tr>
  <tr><th>Candidate Name</th><th><input type="text" value="<%= session.getAttribute("Name") %>" required name="cname"/></th></tr>
   <tr><th>Constituency</th><th><select name="constituency">
   <%
 PreparedStatement pst=con.prepareStatement("select DISTINCT constitiency from constituency");
 ResultSet rs=pst.executeQuery();
 while(rs.next())
 {%>
    <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %>
 <%}
%>
</select></th></tr>
<tr><th>District</th><th><select name="district" >

<%
 PreparedStatement pst1=con.prepareStatement("select DISTINCT district from constituency");
 ResultSet rs1=pst1.executeQuery();
 while(rs1.next())
 {%>
    <option value="<%= rs1.getString(1) %>"><%= rs1.getString(1) %>
 <%}
%>
</select></th></tr>
<tr><th>State</th><th><select name="state" >
<%
 PreparedStatement pst2=con.prepareStatement("select DISTINCT state from constituency");
 ResultSet rs2=pst2.executeQuery();
 while(rs2.next())
 {%>
    <option value="<%= rs2.getString(1) %>"><%= rs2.getString(1) %>
 <%}
%>
</select></th></tr>
<tr><th>Party Name</th><th><input type="text" name="party" value="<%= session.getAttribute("Party") %>" required /></th></tr>
<tr><th>Educational Qualification</th><th><select name="qualification">
   <option value="SSC">SSC
   <option value="Intermediate">Intermediate
   <option value="Degree">Degree
   <option value="Graduation">Graduation
   <option value="PostGraduation">PostGraduation
</select></th></tr>
<tr><Th>Enter Number Of Children</th><th><input type="number" name="nchild" required/></th></tr>
<tr><Th>Number of Active/Criminal Cases</th><th><input type="number" name="cases" required /></th></tr>
<tr><th>Property Worth(in lakhs)</th><th><input type="number" name="property" required /></th></tr>
<tr><th>Property Details</th><th><textarea rows=5 cols=20 name="descr" >
</textarea></th></tr>
<tr>
 <th><input type="submit" value="Submit" /></th>
 <th><input type="reset" value="Reset" /></th>
</tr>
</form>
  <tr><td align="center" colspan=2><a href="candidatehome.jsp">Back</a></td></tr>
				</table>
			       </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Features Item Start ***** -->
    <section class="section" id="features">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="section-heading">
                        <h2> <em>About US</em></h2>
                        <img src="assets/images/line-dec.png" alt="waves">
                        <h3 style="text-align:justify">The main objective of Online Voting System is to provide is an alternative voting channel to
increase voter participation, reduce election costs while upholding the highest security, verifiability and integrity standards.</h3>
<h3>
</h3>
                    </div>
                </div>
               
    <!-- ***** Contact Us Area Starts ***** -->
    <section class="section" id="contact-us">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div id="map">
<h2 align="center"><em>Contact Us</em></h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="contact-form">
                        <form id="contact" action="" method="post">
                          <div class="row">
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="name" type="text" id="name" placeholder="Your Name*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-6 col-sm-12">
                              <fieldset>
                                <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email*" required="">
                              </fieldset>
                            </div>
                            <div class="col-md-12 col-sm-12">
                              <fieldset>
                                <input name="subject" type="text" id="subject" placeholder="Subject">
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <textarea name="message" rows="6" id="message" placeholder="Message" required=""></textarea>
                              </fieldset>
                            </div>
                            <div class="col-lg-12">
                              <fieldset>
                                <button type="submit" id="form-submit" class="main-button">Send Message</button>
                              </fieldset>
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ***** Contact Us Area Ends ***** -->
    
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2020 , All Rights Reserved
                    
                    - Designed by Prathyusha and Sravani</p>
                    
           
                    
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/mixitup.js"></script> 
    <script src="assets/js/accordions.js"></script>
    
    <!-- Global Init -->
    <script src="assets/js/custom.js"></script>

  </body>
</html>