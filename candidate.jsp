<%@include file="DBConn.jsp" %>
<%
  String user=request.getParameter("user");
  String pwd=request.getParameter("pwd");
PreparedStatement pst=con.prepareStatement( "select * from candidates where username=? and pwd=?");
pst.setString(1,user);
pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
if(rs.next())
{
	session.setAttribute("UserName",user);
	session.setAttribute("CID",rs.getString(15));
	session.setAttribute("Party",rs.getString(14));
	session.setAttribute("Name",rs.getString(1));
	response.sendRedirect("candidatehome.jsp");
}
else
{%>
     <Script>
	   alert("Wrong UserName/Password,Try again");
	   window.location="candidate.html"
	 </script>
<%}
%>