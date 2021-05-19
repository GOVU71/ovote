<%@include file="DBConn.jsp" %>
<%
String id=request.getParameter("id");
PreparedStatement pst=con.prepareStatement("update voters set status=1 where vid=?");
pst.setString(1,id);
int i=pst.executeUpdate();
%>
<script>
alert("Voter is approved")
window.location="viewvoters.jsp";
</script>