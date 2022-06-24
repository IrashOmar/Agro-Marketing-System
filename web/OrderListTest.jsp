
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>MyDusun.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="http://webthemez.com" />
        <!-- css -->

        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
        <link href="css/jcarousel.css" rel="stylesheet" />
        <link href="css/flexslider.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="admin.css">
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>



        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
              <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->

    </head>
    <body>
        <div id="wrapper">
            <!-- start header -->
            <header>
                <div class="navbar navbar-default navbar-static-top">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <!-- <a class="navbar-brand" href="index.html"><img src="img/logo.png" alt="logo"/></a> -->
                        </div>

                        <div class="navbar-collapse collapse ">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="FarmerMainPage.html">Home</a></li> 
                                <!-- <li><a href="about.html">Available</a></li> -->
                                <li><a href="post2.html">Post</a></li>
                                <li><a href="ReadingFarmer.jsp">Reading Section</a></li>
                                <!-- <li><a href="portfolio.html">Categories</a></li> -->
                                <li><a href="FarmerFeedback.jsp">Feedback</a></li>
                                <li><a href="OrderListTest.jsp">Order</a></li>
                                <li><a href="UpdateTreeProgress.jsp">Progress</a></li>
                                <li><a href="FarmerProfile.jsp">Profile</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </header><!-- end header -->
            <section id="inner-headline">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="pageTitle">Order List</h2>
                        </div>
                    </div>
                </div>
            </section>
            <section id="content">


                <div class="container">

                    <div class="table-responsive mb-4">
                        <table class="table table-striped table-hover table-bordered ">
                            <thead class="table-dark">

                                <tr>
                                    <th>Tree Id</th>
                                    <th>Product Name</th>
                                    <!--                                        <th>Supplier</th>-->
                                    <th>Price Per Unit</th>
                                    <th> Quantity</th>
                                    <th>Total Price</th>
                                    <!--                                        <th> Description</th>-->

                                    <th>Action</th>
                                </tr>

                            </thead>
                            <tbody>
                                <%
                                    String id = request.getParameter("tree_id");
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

                                    Connection connection = null;
                                    Statement statement = null;
                                    ResultSet resultSet = null;
//                                        Statement statement1 = null;
//                                        ResultSet resultSet1 = null;
                                %>
                                <%
                                    try {
                                        connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                                        statement = connection.createStatement();
                                        int farId = 0;
//                                        int farId=(int)request.getSession().getAttribute("farId");
//                                        session.getAttribute("farId");
//                                         String farId = resultSet.getString("farId");
                                        String sql = "SELECT carttest2.cart_id2, carttest2.TotalPrice, carttest2.farId, carttest2.cart_id, carttest2.quantity, tree.ProductName,trybackend2.Price FROM carttest2 JOIN trybackend2 ON carttest2.id = trybackend2.id JOIN tree ON trybackend2.tree_id = tree.tree_id WHERE carttest2.farId=" + session.getAttribute("farId");

                                        resultSet = statement.executeQuery(sql);
                                        while (resultSet.next()) {
                                            String cart_id = resultSet.getString("cart_id");

                                %>
                                <tr class="table">
                                    <td>T0<%=resultSet.getString("cart_id2")%></td>
                                    <td><%=resultSet.getString("ProductName")%></td>
                                    <td><%=resultSet.getString("Price")%></td>
                                    <td><%=resultSet.getString("quantity")%></td>
                                    <td><%=resultSet.getString("TotalPrice")%></td>
                                    <!--                                       <td></td>-->



                                    <td>
                                        <a href='deleteOrderTest.jsp?d=<%=resultSet.getString("cart_id")%>' class="btn btn-warning">Accept</a><!-- comment -->

                                    </td>
                                </tr>
                                <%;

                                        }

                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>>
                            </tbody>
                        </table>
                    </div>
                </div>
        </div>