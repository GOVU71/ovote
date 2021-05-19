<%@include file="DBConn.jsp" %>
<%
  int erid=Integer.parseInt(request.getParameter("erid"));
  PreparedStatement pst=con.prepareStatement("select * from election_results where erid=?");
  pst.setInt(1,erid);
  ResultSet rs=pst.executeQuery();
  rs.next();
  String cname=rs.getString(2);
  String party=rs.getString(3);
  String constituency =rs.getString(4);
  String district=rs.getString(5);
  String state=rs.getString(6);
  String noofvotes=rs.getString(8);

  PreparedStatement p=con.prepareStatement("Select * from winners where constituency=? and district=? and state=?");
  p.setString(1,constituency);
  p.setString(2,district);
  p.setString(3,state);
  ResultSet r=p.executeQuery();
  if(r.next())
  {%>
     <script>
	    alert("Winner is already declared for this constituency");
		window.location="adminhome.jsp";
	 </script>
  <%}
  else
  {
	  PreparedStatement p1=con.prepareStatement("insert into winners values(?,?,?,?,?,?,?)");
	  p1.setString(1,null);p1.setString(2,cname);p1.setString(3,party);
      p1.setString(4,constituency);p1.setString(5,district);
	  p1.setString(6,state);
	  p1.setString(7,noofvotes);
	  int k=p1.executeUpdate();
	  %>
		    <script>
			   alert("Winner announced")
			   window.location="adminhome.jsp";
	        </script>
  <%}
%>