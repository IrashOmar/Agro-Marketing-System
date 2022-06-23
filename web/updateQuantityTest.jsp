<%-- 
    Document   : processAdmin
    Created on : Jun 2, 2021, 11:10:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.*,java.util.HashMap"%>

<%
    int result;

    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Step 1: MySQL driver loaded...!");

    String myURL = "jdbc:mysql://localhost/test";
    Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
    System.out.println("Step 2: Database is connected...!");

    System.out.println("Step 3: Prepared Statement created...!");

//            String sInsertQry = "Insert INTO supplier(product_id,name,supplier,price,image,quantity) VALUES(?, ?, ?, ?, ?, ?)";
//            System.out.println("(\tSQL Query: " + sInsertQry);
//            PreparedStatement myPS = myConnection.prepareStatement (sInsertQry);
    Statement myPS = myConnection.createStatement();

    String name = request.getParameter("updateCart");
    String supplier = request.getParameter("cartid");
//            String TotalPrice=request.getParameter("TotalPrice");

    System.out.println("Step 4: Perform insertion of record...!");
    Statement statement1 = myConnection.createStatement();
    String sql1 = "SELECT carttest.cart_id, carttest.quantity, tree.ProductName,trybackend2.Price,trybackend2.farId,trybackend2.id FROM carttest JOIN trybackend2 ON carttest.id = trybackend2.id JOIN tree ON trybackend2.tree_id = tree.tree_id ORDER BY cart_id";
//                                      String sql1= "Select cart.quantity, cart.cart_id, trees.ProductName From cart left join tree as trees cart.tree_id";
    ResultSet resultSet1 = statement1.executeQuery(sql1);
    HashMap<Integer, Double> cartIdAndTotal = new HashMap<Integer, Double>();
    while (resultSet1.next()) {
        int quantity = resultSet1.getInt("quantity");
        int price = resultSet1.getInt("Price");
        double total = Double.valueOf(name) * price;
        cartIdAndTotal.put(resultSet1.getInt("cart_id"), total);

//        for (Map.Entry<Integer, Double> entry : cartIdAndTotal.entrySet()) {
//            Integer key = entry.getKey();
//            Double value = entry.getValue();
            Statement statement2 = myConnection.createStatement();
            statement2.executeUpdate("update carttest set quantity='"+name+"', TotalPrice='"+total+"' where cart_id='" + supplier+"'");

//            String sql2 = "update carttest set id='" + id + "',farId='" + farId + "',quantity='" + quantity + "',TotalPrice='" + value + "' where cart_id='" + key + "'";
//        }

}
%>

