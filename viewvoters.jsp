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

    </head>
    <style>
	tr:hover {background-color:white;}
	</style>
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
  
  

<li class="scroll-to-section"><a href="admin.html">LogOut</a></li> 
                        </ul>        
                       
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top" style="background-image: url('assets/images/OIP.jpg'); background-size: 1300px 900px;">
        <video autoplay muted loop id="bg-video">
           
        </video>

        <div class="video-overlay header-text">
            <div class="caption">
                <h6>Welcome Admin </h6><br>
				<h6>Voter Details</h6><br>
				<table align="center" style="font-size:20px;color:white" border=2>
<tr><th>Name</th><th>Email Id</th><th>Mobile Number</th><th>Gender</th><th>Refernce ID</th></th><th>DOB</th><th>Address</th><th>Image</th><th>Operation</th></tr>
<%@include file="DBConn.jsp" %>
<%
  String constituency=request.getParameter("constituency");
  String district=request.getParameter("district");
  String state=request.getParameter("state");
  PreparedStatement pst=con.prepareStatement("select * from voters where const=? and district=? and state=? and status=0");
  
  pst.setString(1,constituency);
  pst.setString(2,district);
  pst.setString(3,state);
  ResultSet rs=pst.executeQuery();
  while(rs.next())
  {
	  String id=rs.getString(15);
	  PreparedStatement p=con.prepareStatement("select * from fileupload where id=?");
	  p.setString(1,id);
	  ResultSet r=p.executeQuery();
	  r.next();
	  String ipath=r.getString(2);
	  %>
    <tr>
	  <th><%= rs.getString(1) %></th>
	  <th><%= rs.getString(4) %></th>
	  <th><%= rs.getString(5) %></th><th><%= rs.getString(6) %></th>
	  <th><%= rs.getString(7) %></th>
	  <th><%= rs.getString(9) %></th>
	  <th><%= rs.getString(12) %></th>
	  <th><img src="./images/<%= ipath %>" width =100 height=100 /></th>
	  <th><a  href="acceptvoterreq.jsp?id=<%= rs.getString(15) %>">Accept</a>/<a  href="deletevoter.jsp?name=<%= rs.getString(2) %>">Delete</a></th>
	</tr>
  <%}
  %>
  <tr><td align="center" colspan=9><a href="adminhome.jsp">Back</a></td></tr>
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