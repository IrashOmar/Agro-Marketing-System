<%-- 
    Document   : TestLogin
    Created on : Jun 3, 2022, 2:03:41 AM
    Author     : User
--%>

<<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html">
<html>
<head>

<body>
<%! 
String userdbName;
String userdbPsw;
String dbUsertype;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/test";
String user = "root";
String dbpsw = "admin";

String sql = "select * from adminregistration where Aemail=? and Apassword=?";

String email = request.getParameter("Aemail");
String password = request.getParameter("Apassword");

if((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, email);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
    
userdbName = rs.getString("Aemail");
userdbPsw = rs.getString("Apassword");

if(email.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("Aemail",userdbName);
//session.setAttribute("usertype", dbUsertype); 
response.sendRedirect("adminTest.jsp"); 
} 
}
else
response.sendRedirect("TestError4.jsp");
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/LoginAdmin.jsp").include(request, response);
}
%>
</body>
</html>