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
String email=request.getParameter("Aemail");
String name=request.getParameter("Aname");
String password=request.getParameter("Apassword");
String ic=request.getParameter("Aic");
//String address=request.getParameter("address");
String gender=request.getParameter("Agender");
String phone=request.getParameter("Aphone");





try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into adminregistration(Aemail,Aname,Apassword,Aic,Agender,Aphone)values('"+email+"','"+name+"','"+password+"','"+ic+"','"+gender+"','"+phone+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("index.html");
%>
</html>
