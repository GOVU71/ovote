 <body style="background-color:grey;">
  <center>
  <h2>Welcome Voter </h2><br>
<table align="center" width=30% style="font-size:24px;">
<form action="newvoter.jsp" method="post" onsubmit="return validate()">
<tr><th>Name</th><th><input type="text" name="name" required /></th></tr>
<tr><th>VoterID</th><th><input type="text" name="user" required /></th></tr>
<tr><th>Password</th><th><input type="password" name="pwd" required /></th></tr>
<tr><th>Email ID</th><th><input type="email" name="email" required /></th></tr>
<tr><th>MobileNumber</th><th><input type="text" name="mno" pattern="[0-9]{10}" required /></th></tr>
<tr><th>Gender</th>
<th>
 Male<input type="radio" name="gender" value="male" />&nbsp;&nbsp;&nbsp;&nbsp;
 Female<input type="radio" name="gender" value="female" />
</th></tr>
<tr><th>ID Proof</th><th><select  name="idproof" id="idp" >
<option value="AadharNumber">Aadhar Number
<option value="PANNumber">PAN Number
<option value="VoterID">Voter ID
</select>
</th></tr>
<tr><th>Reference No</th><th><input type="text" name="refid" required  id="refi"/></th></tr>
<tr><th>Date of Birth</th><th><input type="date" name="dob" required /></th></tr>
<tr><th>Constituency</th><th><select name="const" >
<%@include file="DBConn.jsp" %>
<%
 PreparedStatement pst=con.prepareStatement("select DISTINCT constitiency from constituency");
 ResultSet rs=pst.executeQuery();
 while(rs.next())
 {%>
    <option value="<%= rs.getString(1) %>"><%= rs.getString(1) %>
 <%}
%>
</select></th></tr>
<tr><th>District</th><th><select name="district" >

<%
 PreparedStatement pst1=con.prepareStatement("select DISTINCT district from constituency");
 ResultSet rs1=pst1.executeQuery();
 while(rs1.next())
 {%>
    <option value="<%= rs1.getString(1) %>"><%= rs1.getString(1) %>
 <%}
%>
</select></th></tr>
<tr><th>State</th><th><select name="state" >
<%
 PreparedStatement pst2=con.prepareStatement("select DISTINCT state from constituency");
 ResultSet rs2=pst2.executeQuery();
 while(rs2.next())
 {%>
    <option value="<%= rs2.getString(1) %>"><%= rs2.getString(1) %>
 <%}
%>
</select></th></tr>
<tr><th>Address</th><th><textarea rows=5 cols=25 name="address" >
</textarea></th></tr>
<tr>
<th><input type="submit" value="Submit" /></th>
<th><input type="reset" value="Reset" /></th>
</tr>				  </form>
				</table>