<%-- 
    Document   : TestLogin
    Created on : Jun 3, 2022, 2:03:41 AM
    Author     : User
--%>

<<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<body>
<%! String userdbName;
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

String sql = "select * from userdetail where name=? and password=? and usertype=?";

String name = request.getParameter("name");
String password = request.getParameter("password");
String usertype = request.getParameter("usertype");

if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals(""))) && !usertype.equals("select"))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, password);
ps.setString(3, usertype);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("name");
userdbPsw = rs.getString("password");
dbUsertype = rs.getString("usertype");
if(name.equals(userdbName) && password.equals(userdbPsw) && usertype.equals(dbUsertype))
{
session.setAttribute("name",userdbName);
session.setAttribute("usertype", dbUsertype); 
response.sendRedirect("TestWelcome.jsp"); 
} 
}
else
response.sendRedirect("Testerror.jsp");
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
getServletContext().getRequestDispatcher("/home.jsp").include(request, response);
}
%>
</body>
</html>