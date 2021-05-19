<%@include file="DBConn.jsp"%>
<%
  String constituency=request.getParameter("constituency");
  String district=request.getParameter("district");
  String state=request.getParameter("state");
  PreparedStatement pst=con.prepareStatement("insert into constituency values(?,?,?,?)");
  pst.setString(1,null);
  pst.setString(2,constituency);
  pst.setString(3,district);
  pst.setString(4,state);
 
  int i=pst.executeUpdate();
%>
<script>
alert("Contituency Added")
window.location="adminhome.jsp"
</script>