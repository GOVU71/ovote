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
   PreparedStatement pst=con.prepareStatement( "insert into voters values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
   pst.setString(1,name);pst.setString(2,user);pst.setString(3,pwd);
   pst.setString(4,email);pst.setString(5,mno);pst.setString(6,gender);
   pst.setString(7,idproof);pst.setString(8,refid);pst.setString(9,dob);
   pst.setString(10,cons);pst.setString(11,state);pst.setString(12,address);
   pst.setString(13,district);
   pst.setInt(14,0);
   String id="ID"+(int)(Math.random()*100000);
   pst.setString(15,id);
   int i=pst.executeUpdate();
   response.sendRedirect("uploadimage.jsp?id="+id);
   %>
   