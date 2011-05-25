<html>
<body bgcolor="pink">
<center>
<font face="Times New Roman" size="4"> <b> <u> Online Stock </b> </u> </font>
</center>
<br>
<br>
<%
      String username  = request.getParameter("user");
      String password  = request.getParameter("pass");
      if(username.equals("admin") && password.equals("admin"))
      {
%>
<%
out.print("Congrulations, Successfully logged!!");
out.print("<a href='category.jsp'> Click here to move further.. </a>");

          }
%>
<%
        else
        {
%>
Sorry, Invalid Username or Password!!
<a href="index.jsp"> Click here to try again.. </a>
<%
   }
%>
</body>
</html>





