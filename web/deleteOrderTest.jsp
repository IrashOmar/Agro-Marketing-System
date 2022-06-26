<%-- 
    Document   : delete
    Created on : Jun 4, 2021, 9:47:47 PM
    Author     : User
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String id = request.getParameter("d");
            int no = Integer.parseInt(id);

            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "admin");
            Statement stat = conn.createStatement();
//             Statement stat1 = conn.createStatement();
//             Statement stat2 = conn.createStatement();
//             Statement stat5 = conn.createStatement();
            ResultSet resultSet = null;
//              ResultSet resultSet5 = null;

            stat = conn.createStatement();
            String sql1 = "SELECT carttest2.farId, carttest2.TotalPrice,carttest2.cart_id,carttest2.quantity,trybackend2.id,trybackend2.Avail_quantity FROM carttest2 JOIN trybackend2 ON carttest2.id = trybackend2.id WHERE carttest2.farId=" + session.getAttribute("farId");
            resultSet = stat.executeQuery(sql1);
            
            resultSet.next();
            String q = resultSet.getString("quantity");
            int quantityBaru = Integer.parseInt(q);
            String stockQuantity = resultSet.getString("Avail_quantity");
            int stockQuantity1 = Integer.parseInt(stockQuantity);
            String id2 = resultSet.getString("id");

            int Total = stockQuantity1 - quantityBaru;
            String Total1 = String.valueOf(Total);
            String sql2 = "update trybackend2 set Avail_quantity='" + Total1 + "'where id='" +id2+ "'";
            out.println("<script>console.log('mak')</script>");
            int a = stat.executeUpdate(sql2);
//             stat1.execute("insert into stock(product_id,quantity)values('"+product_id+"','"+q+"')";  
           // stat.executeUpdate("delete from carttest2 where cart_id='" + id + "'");

            response.sendRedirect("OrderListTest.jsp");
        %>

    </body>
</html>
