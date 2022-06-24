
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>

        
              <%
                   
                    String driverName = "com.mysql.jdbc.Driver";
                    String connectionUrl = "jdbc:mysql://localhost:3306/";
                    String dbName = "test";
                    String userId = "root";
                    String password = "admin";

                    try {
                    Class.forName(driverName);
                    } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                    }
                    PreparedStatement ps = null;
                    Connection connection = null;
                    Statement statement = null;
                    Statement statement2 = null;
                    ResultSet resultSet = null;
                    Statement statement1 = null;
                    ResultSet resultSet1 = null;
                    ResultSet resultSet2 = null;
                    ResultSet resultSet4 = null;
                    Statement statement4 = null;
                     PreparedStatement stmt = null;
                    %>
                    <%
                    try{ 
                    connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                    statement=connection.createStatement();
                    String sql ="SELECT * FROM carttest2 ";
    
                    resultSet = statement.executeQuery(sql);
                    
                    while(resultSet.next()){
//                    String q = resultSet.getString("quantity");
//                    String tree_id=resultSet.getString("tree_id");
                    int cart_id=resultSet.getInt("cart_id2");
                   // String id2=resultSet.getString("id");
                     int farId=resultSet.getInt("farId");
                     int buyId=resultSet.getInt("buyId");
                     double TotalPrice=resultSet.getDouble("TotalPrice");
                     String FruitTree = request.getParameter("FruitTree");
                     String Quantity = request.getParameter("Quantity");
                     int b = Integer.parseInt(Quantity);
                     String Status = request.getParameter("Status");
                     String FruitProduced = request.getParameter("FruitProduced");
                     String Profit = request.getParameter("Profit");
                     int c = Integer.parseInt(Profit);
                     String Date = request.getParameter("Date");
                    statement1=connection.createStatement();  
                    String sql1 ="insert into treeprogress(cart_id2,farId,buyId,TotalPrice,FruitTree,Quantity,Status,FruitProduced,Profit,Date)values('"+cart_id+"','"+farId+"','"+buyId+"','"+TotalPrice+"','"+FruitTree+"','"+b+"','"+Status+"','"+FruitProduced+"','"+c+"','"+Date+"')";  
                   
                    int a = statement1.executeUpdate(sql1);
                    %>
                    
                        <%;
                    
                   }
                     
//                     statement2=connection.createStatement(); 
//                     String sql2="Delete from carttest";
//                     int b = statement2.executeUpdate(sql2);
                  response.sendRedirect("UpdateTreeProgress.jsp");
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>