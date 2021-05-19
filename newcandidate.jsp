<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://codepen.io/skjha5993/pen/bXqWpR.css">
    <style>
        label {
    font-weight: 600;
    color: black;
}
        .text-center {
            color: white;
        }
body {
  background-color: black;
}
    </style>
    <title>Candidate Registration</title>
</head>
<body>

    <div class="container">
        <form action="uploadFile2.jsp" method="post" onsubmit="return validate()">
            <h2 class="text-center">Candidate Registration</h2>
        <div class="row jumbotron">
            <div class="col-sm-6 form-group">
                <label for="name-f">First Name</label>
                <input type="text" class="form-control" name="fname"  placeholder="Enter your first name." required>
            </div>
            <div class="col-sm-6 form-group">
                <label for="name-l">Middle name</label>
                <input type="text" class="form-control" name="lname" placeholder="Enter your last name.">
            </div>
            <div class="col-sm-6 form-group">
                <label for="name-l">Last name</label>
                <input type="text" class="form-control" name="lname"  placeholder="Enter your last name." required>
            </div>
            <div class="col-sm-6 form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" name="email"  placeholder="Enter your email." required>
            </div>
            
            <div class="col-sm-6 form-group">
                <label for="name-f">Voter ID</label>
                <input type="text" class="form-control" name="user"  placeholder="Enter your Voter ID" required>
            </div>
            <div class="col-sm-6 form-group">
                <label for="pass">Password</label>
                <input type="Password" name="pwd" class="form-control"  placeholder="Enter your password." required>
            </div>
             <div class="col-sm-6 form-group">
                <label for="text">Mobile Nmuber</label>
                <input type="text" class="form-control" name=mno pattern="[6789][0-9]{9}" placeholder="Enter Your Contact Number." required>
            </div>
            <div class="col-sm-6 form-group">
                <label for="sex">Gender</label>
                <select id="sex" class="form-control browser-default custom-select">
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="Others">Others</option>
            </select>
            </div>
        <div class="col-sm-6 form-group">
                <label for="Date">Date Of Birth</label>
                <input type="date" name="dob" class="form-control"  placeholder=" " required>
            </div>
            <div class="col-sm-6 form-group">
                <label for="name-f">No. of Active/Criminal Cases</label>
                <input type="number" class="form-control" name="refid"  placeholder="Enter refernce no." required>
            </div>
             <div class="col-sm-6 form-group">
                <label >Educational Qualification</label>
                <select id="idp" name="idproof"class="form-control browser-default custom-select">
                <option value="SSC">SSC</option>
                <option value="Inter">Intermediate</option>
                <option value="Degree">Degree</option>
                    <option value="Graduation">Graduation</option>
                    <option value="PG">Post Graduation</option>
            </select>
            </div>
            <div class="col-sm-6 form-group">
                <label for="name-f">Upload Educational Proof</label>
                <input type="file" class="form-control" name="fname"  required>
            </div>
            
            
            <div class="col-sm-6 form-group">
                <label >ID Proof</label>
                <select id="idp" name="idproof"class="form-control browser-default custom-select">
                <option value="AadharNumber">Aadhar Number</option>
                <option value="VoterID">Voter ID</option>
                <option value="PAN Number">PAN Number</option>
            </select>
            </div>
            <div class="col-sm-6 form-group">
                <label for="name-f">Reference No.</label>
                <input type="text" class="form-control" name="refid"  placeholder="Enter refernce no." required>
            </div>
            
            <div class="col-sm-6 form-group">
                <label for="name-f">Upload ID proof</label>
                <input type="file" class="form-control" name="fname"  required>
            </div>
            <div class="col-sm-6 form-group">
                <label for="name-f">Enter No. of Children</label>
                <input type="number" class="form-control" name="nchild"  placeholder="Enter no. of children" required>
            </div>
            
            
            <div class="col-sm-6 form-group">
                <label for="name-f">Property Worth(in lakhs)</label>
                <input type="number" class="form-control" name="property"  placeholder="Enter property worth" required>
            </div>
            
            
            <div class="col-sm-6 form-group">
                <label for="address-2">Property Details</label>
                <input type="address" class="form-control" name="descr" placeholder="Enter your property details" required>
            </div> 
            
            
            
            
            
            <div class="col-sm-6 form-group">
                <label for="name-f">Party Name</label>
                <input type="text" class="form-control" name="party"  placeholder="Enter your party name" required>
            </div>
               
          
            <div class="col-sm-6 form-group">
                <label for="address-2">Constituency</label>
                <br>
            <select name="const" class="form-control browser-default custom-select">
                <%@include file="DBConn.jsp" %>
<%
 PreparedStatement pst=con.prepareStatement("select DISTINCT constitiency from constituency");
 ResultSet rs=pst.executeQuery();
 while(rs.next())
 {%>
    <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %>
 <%}
     %>
     </select>
        </div>

         <div class="col-sm-6 form-group">
                <label for="address-2">District</label>  <br>
             <select name='district' class="form-control browser-default custom-select">
                <%
 PreparedStatement pst1=con.prepareStatement("select DISTINCT district from constituency");
 ResultSet rs1=pst1.executeQuery();
 while(rs1.next())
 {%>
    <option value="<%= rs1.getString(1) %>"><%= rs1.getString(1) %>
 <%}
%> 
                 
             </select>
            </div>
      <div class="col-sm-6 form-group">
                <label for="address-2">State</label>  <br>
             <select name='state' class="form-control browser-default custom-select">  
                 <%
 PreparedStatement pst2=con.prepareStatement("select DISTINCT state from constituency");
 ResultSet rs2=pst2.executeQuery();
 while(rs2.next())
 {%>
    <option value="<%= rs2.getString(1) %>"><%= rs2.getString(1) %>
 <%}
%>
     </select>
        </div>
        <div class="col-sm-6 form-group">
                <label for="address-2">Address</label>
                <input type="address" class="form-control" name="address" placeholder="Village/City Name." required>
            </div> 
           
            <div class="col-sm-12 form-group mb-0">
                <input type="submit" class="btn btn-primary float-right"  value="submit" >
            </div> 
        
        
            </form>
    </div>
        
    				  


</body>
</html>