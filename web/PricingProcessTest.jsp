<%-- 
    Document   : pricingProcess
    Created on : May 23, 2022, 4:29:28 AM
    Author     : User
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
<%


int id = Integer.parseInt(request.getParameter("id"));
int farId = Integer.parseInt(request.getParameter("farId"));
//int tree_id = Integer.parseInt(request.getParameter("tree_id"));
//String ProductName =request.getParameter("ProductName");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
Statement st=conn.createStatement();
Statement st2=conn.createStatement();
//int f=st2.executeUpdate("select from trybackend2");


int i=st.executeUpdate("insert into carttest(id,farId,quantity,TotalPrice)values('"+id+"','"+farId+"','"+1+"','"+0+"')");
//int i=st.executeUpdate("insert into cart(tree_id,ProductName,quantity)values('"+id+"','"+ProductName+"','"+1+"')");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("CategoryTest.jsp?id="+id);
%>
<!--<script>window.open("edit.jsp");</script>-->
    </body>
</html>
