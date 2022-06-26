
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.text.DecimalFormat" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>MyDusun.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="http://webthemez.com" />
        <!-- <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css"> -->
        <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/libs/css/style.css">
        <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
        <link rel="stylesheet" href="assets/vendor/vector-map/jqvmap.css">
        <link rel="stylesheet" href="assets/vendor/jvectormap/jquery-jvectormap-2.0.2.css">
        <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css"> 
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
        <link href="css/jcarousel.css" rel="stylesheet" />
        <link href="css/flexslider.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />

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
                                <li class="active"><a href="../index.html">Home</a></li> 
                                <!-- <li><a href="about.html">Available</a></li> -->
                                <li><a href="../CategoryTest.jsp">Categories</a></li>
                                <li><a href="../ReadingSection.jsp">Readings</a></li>
                                <!-- <li><a href="portfolio.html">Categories</a></li> -->
                                <li><a href="../Feedback.jsp">Feedback</a></li>
                                <li><a href="ranking.jsp">Trading</a></li>
                                <li><a href="../CartTest.jsp">Cart</a></li>
                                <li><a href="../BuyerProfile.jsp">Profile</a></li></ul>
                        </div>
                    </div>
                </div>
            </header><!-- end header -->
            <section id="inner-headline">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="pageTitle">Trading</h2>
                        </div>
                    </div>
                </div>
            </section>


            <!-- <div class="container-fluid  dashboard-content"> -->
            <!-- ============================================================== -->
            <!-- pagehader  -->
            <!-- ============================================================== -->
            <!-- <div class="row"> -->
            <!-- <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12"> -->
            <!-- <div class="page-header"> -->
            <!-- <h3 class="mb-2">Sales Dashboard Template </h3> -->
            <!-- <p class="pageheader-text">Lorem ipsum dolor sit ametllam fermentum ipsum eu porta consectetur adipiscing elit.Nullam vehicula nulla ut egestas rhoncus.</p> -->
            <!-- <div class="page-breadcrumb"> -->
            <!-- <nav aria-label="breadcrumb"> -->
            <!-- <ol class="breadcrumb"> -->
            <!-- <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">Dashboard</a></li> -->
            <!-- <li class="breadcrumb-item active" aria-current="page">Sales Dashboard Template</li> -->
            <!-- </ol> -->
            <!-- </nav> -->
            <!-- </div> -->
            <!-- </div> -->
            <!-- </div> -->
            <!-- </div> -->
            <!-- ============================================================== -->
            <!-- pagehader  -->
            <!-- ============================================================== -->
            
                 <%

                                    try {
                                        String host = "jdbc:mysql://localhost:3306/test";
                                        Connection conn = null;
                                        Statement stat = null;
                                        ResultSet res = null;
//                                        String Name = request.getParameter("name");
//                                        String email = request.getParameter("email");
//                                        String password = request.getParameter("password");
//                                        String ic = request.getParameter("ic");
//
//                                        String address = request.getParameter("address");
//                                        String phone = request.getParameter("phone");
//                                        String filename = request.getParameter("filename");

                                        Class.forName("com.mysql.jdbc.Driver");
                                        conn = DriverManager.getConnection(host, "root", "admin");
                                        stat = conn.createStatement();
                                        String data = "select * from treeprogress";
                                        res = stat.executeQuery(data);
                                        while (res.next()) {
                                            String Profit = res.getString("Profit");
                                            int x = Integer.parseInt(Profit);
                                            String quantity = res.getString("Quantity");
                                            int y = Integer.parseInt(quantity);
                                            String TotalPrice = res.getString("TotalPrice");
                                            double z = Double.parseDouble(TotalPrice);
                                            int total = x * y;
                                            double growth = (x/z)*100;
                                            String Total1= String.valueOf(x);
                                            
                                            DecimalFormat df = new DecimalFormat("#.##");
                                            String formatted = df.format(growth); 
                                            
                                            
                                            String growth1= String.valueOf(formatted);


                                            
                                            
                                            
                                            //                                String filename = res.getString("filename");

                                %>

            <div class="row">
                <!-- metric -->
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Earnings</h5>
                            <div class="metric-value d-inline-block">
                                <h1 class="mb-1 text-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RM<%=Total1%> </h1>
                            </div>
                            <div class="metric-label d-inline-block float-right text-success">
                                <i class="fa fa-fw fa-caret-up"></i><span>5.27%</span>
                            </div>
                        </div>
                        <div id="sparkline-1"></div>
                    </div>
                </div>
                <!-- /. metric -->
                <!-- metric -->
              <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Growth</h5>
                            <div class="metric-value d-inline-block">
                                <h1 class="mb-1 text-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+<%=growth1%>% </h1>
                            </div>
                            <div class="metric-label d-inline-block float-right text-success">
                                <i class="fa fa-fw fa-caret-up"></i><span>4.87%</span>
                            </div>
                        </div>
<!--                            <div class="metric-label d-inline-block float-right text-danger">
                                <i class="fa fa-fw fa-caret-down"></i><span>1.08%</span>
                            </div>-->
                        </div>
                        <div id="sparkline-2"></div>
                    </div>
                </div>
                <!-- /. metric -->
                <!-- metric -->
<!--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Asset</h5>
                            <div class="metric-value d-inline-block">
                                <h1 class="mb-1 text-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;RM 5,656</h1>
                            </div>
                            <div class="metric-label d-inline-block float-right text-danger">
                                <i class="fa fa-fw fa-caret-down"></i><span>7.00%</span>
                            </div>
                        </div>
                        <div id="sparkline-3">
                        </div>
                    </div>
                </div>-->
                <!-- /. metric -->
                <!-- metric -->
<!--                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-muted">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Growth</h5>
                            <div class="metric-value d-inline-block">
                                <h1 class="mb-1 text-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+28.45% </h1>
                            </div>
                            <div class="metric-label d-inline-block float-right text-success">
                                <i class="fa fa-fw fa-caret-up"></i><span>4.87%</span>
                            </div>
                        </div>
                        <div id="sparkline-4"></div>
                    </div>
                </div>-->
                <!-- /. metric -->
            </div>
            <!-- ============================================================== -->
            <!-- revenue  -->
            <!-- ============================================================== -->
            <!-- <div class="row"> -->
            <!-- <div class="col-xl-8 col-lg-12 col-md-8 col-sm-12 col-12" > -->

<!--            <div class="card">
                <h5 class="card-header">Revenue</h5>

                <div class="card-body border-top">
                    <div class="row">
                        <div class="offset-xl-1 col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12 p-3">
                            <h4> Today's Earning:  RM 2,800.30</h4>

                        </div>
                        <div class="offset-xl-1 col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12 p-3">
                            <h2 class="font-weight-normal mb-3"><span>RM 48,325</span> </h2>
                            <div>

                                <span class="legend-text">Current Week</span></div>
                        </div>
                        <div class="offset-xl-1 col-xl-3 col-lg-3 col-md-6 col-sm-12 col-12 p-3">
                            <h2 class="font-weight-normal mb-3">

                                <span>RM 59,567</span>
                            </h2>
                            <div><span class="legend-text">Previous Week</span></div>
                        </div>
                    </div>
                </div>-->







                <!-- </div> -->
                <!-- </div> -->
                <!-- ============================================================== -->
                <!-- end reveune  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- total sale  -->
                <!-- ============================================================== -->

                <!-- ============================================================== -->
                <!-- end total sale  -->
                <!-- ============================================================== -->
            </div>
            <!-- <div class="row"> -->
            <!-- ============================================================== -->
            <!-- top selling products  -->
            <!-- ============================================================== -->
            <!-- <div class="col-xl-7 col-lg-12 col-md-12 col-sm-12 col-12"> -->
            <div class="card">
                <h5 class="card-header">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your Tree Progress</h5>
                <br>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="bg-light">
                                <tr class="border-0">
                                    <th class="border-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tree Id</th>
                                    <th class="border-0">Fruit Tree</th>
                                    <th class="border-0">Quantity</th>
                                    <th class="border-0">Status</th>
                                    <th class="border-0">Fruit Produced(kg)</th>
                                    <th class="border-0">Profit(RM)</th>
                                    <th class="border-0">Date</th>
                                    <th class="border-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Action</th>

                                </tr>

                            </thead>
                            <tbody>


                                <tr>

                                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T<%=res.getString("progress_id")%></td>
                                    <td><%=res.getString("FruitTree")%></td>
                                    <td><%=res.getString("Quantity")%></td>
                                    <td><%=res.getString("Status")%></td><!-- comment -->
                                    <td><%=res.getString("FruitProduced")%></td><!-- comment -->
                                    <td><%=res.getString("Profit")%></td>
                                    <td><%=res.getString("Date")%></td>
                                    <td><a href ='../ExportDetails.jsp?progress_id=<%=res.getString("progress_id")%>'>Export &nbsp;</a><!-- comment -->
                                        <a href='../deleteProgress.jsp?d=<%=res.getString("progress_id")%>'>Sell Tree</a><!-- comment -->
                                    


                                </tr>



                            </tbody>
                        </table>
                                                             <%
                }
            } catch (NullPointerException e) {
                System.out.println("Error at detail: " + e.getStackTrace().toString());
                e.printStackTrace();
            }
        %>
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