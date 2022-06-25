
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

                                <tr> <th>Tree Id</th>
                                    <th>Fruit Tree</th>
                                    <th>Quantity</th>
                                    <!--                                        <th>Supplier</th>-->
                                    <th>Status</th>
                                    <th>Fruit Produced(kg)</th>
                                    <th>Profit</th>
                                     <th>Date</th>
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
                                      //  int farId = 0;
//                                        int farId=(int)request.getSession().getAttribute("farId");
//                                        session.getAttribute("farId");
//                                         String farId = resultSet.getString("farId");
                                        String sql = "SELECT * FROM treeprogress";

                                        resultSet = statement.executeQuery(sql);
                                        while (resultSet.next()) {
                                           int farId = resultSet.getInt("farId");
                                            int cart_id2 = resultSet.getInt("cart_id2");
                                             int buyId = resultSet.getInt("buyId");
                                              int TotalPrice = resultSet.getInt("TotalPrice");
                                           

                                %>
                                <tr class="table">
                                    <td>T0<%=resultSet.getString("progress_id")%></td>
                                    <td><%=resultSet.getString("FruitTree")%></td>
                                    <td><%=resultSet.getString("Quantity")%></td>
                                    <td><%=resultSet.getString("Status")%></td>
                                    <td><%=resultSet.getString("FruitProduced")%></td>
                                    <td><%=resultSet.getString("Profit")%></td>
                                     <td><%=resultSet.getString("Date")%></td>
                                    <!--                                       <td></td>-->



                                    <td>
                                       <a href='editProgress.jsp?u=<%=resultSet.getString("progress_id")%>'class="btn btn-warning">Edit</a><!-- comment -->

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
                            <script>

                        </script>

                    </div>
                </div>
        </div>