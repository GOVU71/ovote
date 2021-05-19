<%@include file="DBConn.jsp" %>
<%
  String cname=request.getParameter("cname");
  String constituency=request.getParameter("constituency");
  String district=request.getParameter("district");
  String state=request.getParameter("state");
  String party=request.getParameter("party");
  int nchild=Integer.parseInt(request.getParameter("nchild"));
  int cases=Integer.parseInt(request.getParameter("cases"));
  int property=Integer.parseInt(request.getParameter("property"));
  String descr=request.getParameter("descr");
  String qualification=request.getParameter("qualification");
PreparedStatement pst=con.prepareStatement( "insert into electionregistration values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
pst.setString(1,null);pst.setString(2,cname);pst.setString(3,constituency);
pst.setString(4,district);pst.setString(5,state);pst.setString(6,party);
pst.setInt(7,nchild);pst.setInt(8,cases);pst.setInt(9,property);
pst.setString(10,descr);pst.setInt(11,0);
pst.setString(12,qualification);
String cid="CID"+(int)(Math.random()*1000000);
pst.setString(13,cid);
int i=pst.executeUpdate();
response.sendRedirect("uploadimage1.jsp?cid="+cid);
%>
