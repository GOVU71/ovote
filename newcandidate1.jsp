<html>
  <body style="background-image: url('assets/images/index.jpg'); background-size: 1500px 900px;   background-color: rgba(0,0,0,0.3);">>
    </body>  
    
    
</html> 
<%@include file="DBConn.jsp" %>
<%
   String name=request.getParameter("name");
   String user=request.getParameter("user");
   String pwd=request.getParameter("pwd");
   String email=request.getParameter("email");
   String mno=request.getParameter("mno");
   String gender=request.getParameter("gender");
   String idproof=request.getParameter("idproof");
   String refid=request.getParameter("refid");
   String dob=request.getParameter("dob");
   String cons=request.getParameter("const");
   String state=request.getParameter("state");
   String address=request.getParameter("address");
   String district=request.getParameter("district");
   String party=request.getParameter("party");
   String cnid="CID"+(int)(Math.random()*100000);
   PreparedStatement pst=con.prepareStatement( "insert into candidates values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
   pst.setString(1,name);pst.setString(2,user);pst.setString(3,pwd);
   pst.setString(4,email);pst.setString(5,mno);pst.setString(6,gender);
   pst.setString(7,idproof);pst.setString(8,refid);pst.setString(9,dob);
   pst.setString(10,cons);pst.setString(11,state);pst.setString(12,address);
   pst.setString(13,district);pst.setString(14,party);
   pst.setString(15,cnid);
   int i=pst.executeUpdate();
   %>
   <script>
   alert("Registered successfully,Please login to continue");
   window.location="candidate.html"
   </script>
