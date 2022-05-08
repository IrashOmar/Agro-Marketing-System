<%-- 
    Document   : editProcess
    Created on : Jun 3, 2021, 12:33:40 AM
    Author     : User
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>



        
        
        
        
<%
String Terms_Id=request.getParameter("Terms_Id");
String Content=request.getParameter("Content");
//String price=request.getParameter("price");
//String quantity=request.getParameter("quantity");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
PreparedStatement ps=null;
String sql="update terms set Terms_Id=?,Content=? where Terms_Id="+Terms_Id;
ps=conn.prepareStatement(sql);
ps.setString(1, Terms_Id);
ps.setString(2, Content);


int i = ps.executeUpdate();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<script>window.open("edit.jsp");</script>
    </body>
</html>

