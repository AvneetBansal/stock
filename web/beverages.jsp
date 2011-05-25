<html>
<body bgcolor="pink">
<center>
<font face="Times New Roman" size="4"> <b> <u> Online Stock </b> </u> </font>
</center>
<br>
<br>
<u> <b> Stock of Food Beverages: </u> </b>
<br>
<br>
<%@ page import="stock.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%
ResultSet rs=null;
CJdbc obj=new CJdbc( );
String query="select Itemname,  CurrentStock from tblBeverages ";
rs=obj.executeQuery(query);
int i=0;
%>
<table border="1" cellspacing="1" cellpadding="1" bordercolor="blue">
<tr>
<td> <b> ID </b></td>
<td> <b> Name </b></td>
<td> <b> Current Stock </b>  </td>
<td><a href="DeleteItem.jsp?ItemName=<%=rs.getString("Itemname")%>&ItemType=Beverages">Delete</a> </td>


</tr>
<%
while(rs.next())
{ i++;
%>
<tr>
<td><%=i%> </td>
<td><%=rs.getString("Itemname")%></td>

<td><%=rs.getInt("CurrentStock")%> </td>

</tr>
<%
}
%>
</table>
<br>
<br>
<a href="AddNew.jsp?ItemType=Beverages">Add New Item</a>
<br><br>
<a href="AdminMasterPage.jsp"> Go Back </a>
</body>
</html>





