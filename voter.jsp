<%@include file="DBConn.jsp" %>
<%
  String user=request.getParameter("user");
  String pwd=request.getParameter("pwd");
PreparedStatement pst=con.prepareStatement( "select * from voters where username=? and pwd=?");
pst.setString(1,user);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	int status=rs.getInt(14);
	if(status == 1)
	{
		session.setAttribute("Name",rs.getString(1));
	session.setAttribute("UserName",user);
	session.setAttribute("Cont",rs.getString(10));
	response.sendRedirect("voterhome.jsp");
	}
	else if(status == 0)
	{%>
		  <script>
		  alert("Your request is pending for verification")
		window.location="voter.html";
	</script>
	<%}
}
else
{%>
     <Script>
	   alert("Wrong UserName/Password,Try again");
	   window.location="voter.html"
	 </script>
<%}
%>