<%@include file="DBConn.jsp" %>
<%
String user=(String)session.getAttribute("UserName");
int eid=Integer.parseInt(request.getParameter("eid"));
PreparedStatement p=con.prepareStatement("select * from completedvoterlist where votername=?");
p.setString(1,user);
ResultSet r=p.executeQuery();
if(r.next())
{%>
    <Script>
	   alert("You have registered your vote already,Wait for results")
	   window.location="voterhome.jsp";
	</script>
<%}
else
{
	System.out.println("inside else");
PreparedStatement pst=con.prepareStatement("select * from elections where eid=?");
pst.setInt(1,eid);
ResultSet rs=pst.executeQuery();
rs.next();
String cname=rs.getString(2);
String party=rs.getString(3);
String cons=rs.getString(4);
String district=rs.getString(5);
String state=rs.getString(6);
int novotes=rs.getInt(7);

PreparedStatement pst1=con.prepareStatement("select * from election_results where constituency=? and cname=? and party=?");
pst1.setString(1,cons);
pst1.setString(2,cname);
pst1.setString(3,party);
ResultSet rs1=pst1.executeQuery();
if(rs1.next())
{
	System.out.println("inside if");
	int nvotes=rs1.getInt(8);
	PreparedStatement pst2=con.prepareStatement("update election_results set noofvotes=? where constituency=? and cname=? and party=?");
	pst2.setInt(1,nvotes+1);
	pst2.setString(2,cons);
pst2.setString(3,cname);
 pst2.setString(4,party);
 int k=pst2.executeUpdate();
}
else
{
	String vname=(String)session.getAttribute("UserName");
    PreparedStatement pst3=con.prepareStatement("insert into election_results(erid,cname,party,constituency,district,state,noofvotes,votername) values(?,?,?,?,?,?,?,?)");
	pst3.setString(1,null);
	pst3.setString(2,cname);
	pst3.setString(3,party);
	pst3.setString(4,cons);
	pst3.setString(5,district);
	pst3.setString(6,state);
	pst3.setInt(7,1);
	pst3.setString(8,vname);
	int i=pst3.executeUpdate();
}
PreparedStatement pst4=con.prepareStatement("update elections set votes=? where Constituency=?");
pst4.setInt(1,novotes+1);
pst4.setString(2,cons);
int j=pst4.executeUpdate();

PreparedStatement pst5=con.prepareStatement("insert into completedvoterlist values(?)");
pst5.setString(1,user);
int x1=pst5.executeUpdate();
}
%>
<script>
  alert("Your Vote is registered")
  window.location="voterhome.jsp"
</script>