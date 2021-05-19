<%@include file="DBConn.jsp" %>
<%
  String name=request.getParameter("name");
  PreparedStatement pst=con.prepareStatement("delete from voters where username=?");
  pst.setString(1,name);
  int i=pst.executeUpdate();
%>
<script>
alert("Voter deleted")
window.location="adminhome.jsp"
</script>