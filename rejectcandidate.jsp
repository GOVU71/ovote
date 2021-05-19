<%@include file="DBConn.jsp" %>
<%
int rid=Integer.parseInt(request.getParameter("rid"));
PreparedStatement pst=con.prepareStatement("update electionregistration set status=? where rid=?");
pst.setInt(1,1);
pst.setInt(2,rid);
int i=pst.executeUpdate();

PreparedStatement pst1=con.prepareStatement("select * from electionregistration where rid=?");
pst1.setInt(1,rid);
ResultSet rs=pst1.executeQuery();
rs.next();

PreparedStatement pst2=con.prepareStatement("insert into elections values(?,?,?,?,?,?,?)");
pst2.setString(1,null);
pst2.setString(2,rs.getString(2));
pst2.setString(3,rs.getString(6));
pst2.setString(4,rs.getString(3));
pst2.setString(5,rs.getString(4));
pst2.setString(6,rs.getString(5));
pst2.setInt(7,0);
int j=pst2.executeUpdate();
%>
<script> 
  alert("Candidate request is REJECTED")
  window.location="adminhome.jsp"
</script>