
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
                                    <th>Done</th>
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
                                        <a href='deleteOrderTest.jsp?d=<%=resultSet.getString("cart_id")%>' class="btn btn-warning">Accept</a>
                                        
                                        <!-- comment -->

                                    </td>
                                    <td>
                                        <!--                                         <label for="chu"></label>
                                                                                <input type="checkbox" id="chu" checked="checked" name="remember"> -->
                                    <a href='deleteCarttest2.jsp?h=<%=resultSet.getString("cart_id")%>' class="btn btn-warning">Delete</a>

                                    </td>
                                </tr>
                                <%;

                                        }

                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                            </tbody>
                        </table>
<!--                        <script>
                            function disableThis() {
                                //document.getElementById("disable").disabled = "true";
                                document.getElementById("disable").href = "";
                            }


                            var checkboxValues = JSON.parse(localStorage.getItem('checkboxValues')) || {},
                                    $checkboxes = $("#checkbox-container :checkbox");

                            $checkboxes.on("change", function () {
                                $checkboxes.each(function () {
                                    checkboxValues[this.id] = this.checked;
                                });

                                localStorage.setItem("checkboxValues", JSON.stringify(checkboxValues));
                            });

// On page load
                            $.each(checkboxValues, function (key, value) {
                                $("#" + key).prop('checked', value);
                            });

                        </script>-->

                    </div>
                </div>
        </div>
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="widget">
                            <h5 class="widgetheading">Address</h5>
                            <address>
                                <strong>Universiti Malaysia Terengganu Bangunan
                                    FTTKI Jalan Gong Badak 21300 Terengganu.</address>
                            <p>


                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="widget">
                            <h5 class="widgetheading">Quick Links</h5>
                            <ul class="link-list">

                                <li><a href="#">Privacy policy</a></li>
                                <li><a href="#">Career</a></li>
                                <li><a href="#">Contact us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="widget">
                            <h5 class="widgetheading">Latest posts</h5>
                            <ul class="link-list">
                                <li><a href="#">Privacy policy</a></li>
                                <li><a href="#">Career</a></li>
                                <!--                                            <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                                                                            <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
                                                                            <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>-->
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="widget">
                            <h5 class="widgetheading">Contact Us</h5>
                            <ul class="link-list">
                                <i class="icon-envelope-alt"></i> MyDusun@domainname.com
                                <i class="icon-phone"></i> (123) 456-789 - 1255-12584 <br>
                                <!--                                            <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                                                                            <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
                                                                            <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>-->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id="sub-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="copyright">
                                <p>
                                    <!--                                                <span>&copy; Touch Hospital Medical 2015 All right reserved. By </span><a href="http://webthemez.com" Bistro="_blank">WebThemez</a>-->
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <ul class="social-network">
                                <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>
    <a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
    <!-- javascript
        ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.fancybox.pack.js"></script>
    <script src="js/jquery.fancybox-media.js"></script> 
    <script src="js/portfolio/jquery.quicksand.js"></script>
    <script src="js/portfolio/setting.js"></script>
    <script src="js/jquery.flexslider.js"></script>
    <script src="js/animate.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/validate.js"></script>
</body>
</html>
