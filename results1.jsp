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
td,th {font-size:20px; color:white;
	}
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
				<table align="center" width=100% border=2>
		<form action="results1.jsp" method="post">
<tr><td align="center" colspan=7>Declare Results</td></tr>
<tr><th>Candidate Name</th><th>Party</th><th>Constituency</th><th>District</th>
<th>State</th><th>Number of Votes</th><th>Operation</th></tr>
<%@include file="DBConn.jsp" %>
<%
   String constituency=request.getParameter("constituency");
   String district=request.getParameter("district");
   String state=request.getParameter("state");
   

   PreparedStatement pst =con.prepareStatement("select * from election_results where constituency=? and district=? and state=?");
   pst.setString(1,constituency);
   pst.setString(2,district);
   pst.setString(3,state);
   ResultSet rs=pst.executeQuery();
   while(rs.next())
   {%>
   <tr>
 <th><%= rs.getString(2) %></th>
 <th><%= rs.getString(3) %></th><th><%= rs.getString(4) %></th>
 <th><%= rs.getString(5) %></th><th><%= rs.getString(6) %></th>
 <th><%= rs.getString(8) %></th>
 <th><a href="winner.jsp?erid=<%= rs.getString(1) %>">Winner</a></th>
   </tr>
    
   <%}
    
%>
<tr><td align="center" colspan=7><a href="adminhome.jsp">Back</a></td></tr> 
</table>			   
			    </div>
        </div>
    </div>

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