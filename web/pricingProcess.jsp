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


int id ;
id = Integer.parseInt(request.getParameter("tree_id"));
String ProductName =request.getParameter("ProductName");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into cart(tree_id,quantity)values('"+id+"','"+1+"')");
//int i=st.executeUpdate("insert into cart(tree_id,ProductName,quantity)values('"+id+"','"+ProductName+"','"+1+"')");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("Category2.jsp?tree_id="+id);
%>
<!--<script>window.open("edit.jsp");</script>-->
    </body>
</html>
