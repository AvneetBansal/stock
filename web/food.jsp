<html>
<body bgcolor="pink">
<center>
<font face="Times New Roman" size="4"> <b> <u> Online Stock </b> </u> </font>
</center>
<br>
<br>
<u> <b> Stock of Food Items: </u> </b>
<br>
<br>
<%@ page import="stock.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%
ResultSet rs=null;
CJdbc obj=new CJdbc( );
String query="select Itemname,  CurrentStock from tblFoodItems ";
rs=obj.executeQuery(query);
int i=0;
%>
<table border="1" cellspacing="1" cellpadding="1" bordercolor="blue">
<tr>
<td> <b> ID </b></td>
<td> <b> Name </b></td>
<td> <b> Current Stock </b>  </td>
<td> <b> Links</b>  </td>

</tr>
<%
while(rs.next())
{ i++;
%>
<tr>
<td><%=i%> </td>
<td><%=rs.getString("Itemname")%></td>

<td><%=rs.getInt("CurrentStock")%> </td>
<td><a href="DeleteItem.jsp?ItemName=<%=rs.getString("Itemname")%>&ItemType=FoodItem">Delete</a> </td>

</tr>
<%
}
%>

</table>
<br>
<a href="AddNew.jsp?ItemType=FoodItem">Add New Item</a>
<br><br>
<br>
<a href="AdminMasterPage.jsp"> Go Back </a>
</body>
</html>





