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
String email=request.getParameter("email");
String name=request.getParameter("name");
String password=request.getParameter("password");
String ic=request.getParameter("ic");
String address=request.getParameter("address");
String gender=request.getParameter("gender");
String phone=request.getParameter("phone");





try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into buyerregistration(email,name,password,ic,address,gender,phone)values('"+email+"','"+name+"','"+password+"','"+ic+"','"+address+"','"+gender+"','"+phone+"')");

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
response.sendRedirect("index.html");
%>
</html>
