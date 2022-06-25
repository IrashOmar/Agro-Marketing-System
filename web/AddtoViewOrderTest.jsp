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
                    String sql ="SELECT * FROM carttest ";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                    String q = resultSet.getString("quantity");
//                    String tree_id=resultSet.getString("tree_id");
                    String cart_id=resultSet.getString("cart_id");
                    String id2=resultSet.getString("id");
                     String id3=resultSet.getString("farId");
                      String id4=resultSet.getString("TotalPrice");
                    statement1=connection.createStatement();  
                    String sql1 ="insert into carttest2(cart_id,id,farId,quantity,TotalPrice,buyId)values('"+cart_id+"','"+id2+"','"+id3+"','"+q+"','"+id4+"','"+session.getAttribute("buyId")+"')";  
                    out.println("<script>console.log('mak')</script>");
                    int a = statement1.executeUpdate(sql1);
                     String id=resultSet.getString("id");
                    String sql4="Select * from trybackend2 where id="+id;
                    statement4=connection.createStatement(); 
                    resultSet4 = statement4.executeQuery(sql4);
//                    while(resultSet4.next()) {
//                        
//                    }
//                    resultSet4.next();
//                    String quantityOri=resultSet4.getString("Avail_quantity");
//                    int quantityOriginal=Integer.parseInt(quantityOri);
//                    int qNew=Integer.parseInt(q);
//
//                    int quantityNew=quantityOriginal - qNew;
//                     String quantityNew1=String.valueOf(quantityNew);
//                     String query = "update trybackend set Avail_quantity='"+quantityNew1+"' where id='"+id+"'";
//                    stmt = connection.prepareStatement(query);
//                    stmt.executeUpdate();
                   
                    %>
                    
                        
    
                      <%;
                    
                   }
                     
                     statement2=connection.createStatement(); 
                     String sql2="Delete from carttest";
                     int b = statement2.executeUpdate(sql2);
                     response.sendRedirect("CartTest.jsp");
                    } catch (Exception e) {
                    e.printStackTrace();
                    }
                    %>