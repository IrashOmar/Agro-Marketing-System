<%-- 
    Document   : BuyerRegistrationProcess
    Created on : May 31, 2022, 2:18:41 AM
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
    <%
String comment=request.getParameter("comment");
String Date=request.getParameter("Date");






try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into feedback(comment,Date)values('"+comment+"','"+Date+"')");


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("FarmerFeedback.jsp");
%>
</html>
