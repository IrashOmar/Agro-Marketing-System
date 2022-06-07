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
String Terms_Id=request.getParameter("date");
String Content=request.getParameter("Content");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into terms(date,Content)values('"+Terms_Id+"','"+Content+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("admin.jsp");
%>
<!--<script>window.open("edit.jsp");</script>-->
    </body>
</html>