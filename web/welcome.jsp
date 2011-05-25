<html>
<body bgcolor="pink">
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
                //File f = new File("C:/Build Automation - stock/build/buildnumber.properties");
		//FileInputStream fr = new FileInputStream(f);
               // String b = "";
		//Properties p = new Properties();
		//p.load(fr);
		//b = p.getProperty("build.number");
                //System.out.println("build number--->" + b);
                //Date d = new Date();


%>
<center>
<font face="Times New Roman" size="4"> <b> <u> Online Stock </b> </u> </font>
<br>
<font face="Times New Roman" size="3" color="blue"> (Build: <% //= b %>) </font>
<br>
<br>
<form action="category.jsp" method="post">
User: <input type="text" name="user" size="20"> <br>
Password: <input type="text" name="pass" size="20">
<br>
<br>
<br>
<input type="submit" value="Submit..."> 
<input type="reset" value="Reset...">
</form>
<br>
<br>
<% //= d %>
</body>
</html>





