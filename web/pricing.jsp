<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
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
                                <li class="active"><a href="index.html">Home</a></li> 
                                <!-- <li><a href="about.html">Available</a></li> -->
                                <li><a href="Category2.jsp">Categories</a></li>
                                <li><a href="ReadingSection.jsp">Reading Section</a></li>
                                <!-- <li><a href="portfolio.html">Categories</a></li> -->
                                <li><a href="Feedback.jsp">Feedback</a></li>
                                <li><a href="Trading/ranking.jsp">Trading</a></li>
                                <li><a href="CartNew.jsp">Cart</a></li>
                                 <li><a href="Profile.jsp">Profile</a></li>


                            </ul>
                        </div>
                    </div>
                </div>
            </header><!-- end header -->
            <section id="inner-headline">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="pageTitle">Available Farm</h2>
                        </div>
                    </div>
                </div>
            </section>
            <section id="content">
                <div class="container">	 
                    <!-- end divider -->
                    <div class="row"> 
                        <div class="col-md-12">
                            <div>
                                <h3>Our Best Pricing</h3>
                                <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                                <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12"> 
                        </div>
                                 <%
           
            try {
             String host = "jdbc:mysql://localhost:3306/test";
                        Connection conn = null;
                        Statement stat = null;
                        ResultSet res = null;
                       String id = request.getParameter("id");
                       String tree_id=request.getParameter("tree_id");
                       if(tree_id.equalsIgnoreCase("")){
                           tree_id="1";
                       }
                       
                   
                     
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection(host,"root","admin");
                        stat = conn.createStatement();
                        String data = "select * from trybackend where tree_id="+tree_id;
                        res = stat.executeQuery(data);
                        while(res.next()){
                         String filename = res.getString("filename");
                  
                   %>
         
                        <div class="col-lg-3">
                            
                            <div class="pricing-box-item">
                                <div class="pricing-heading">
                                    <a href="about.html"> <image src="img/<%=filename%>"></a>
                                </div>
                                <div class="pricing-terms">
                                    <h6><%=res.getString("FarmName")%></h6>
                                </div>
                                <div class="pricing-container">
                                    <ul>
                                        Available Quantity:<li><i class="icon-ok"></i><%=res.getString("Avail_quantity")%></li>
                                        Price/Tree:<li><i class="icon-ok"></i><%=res.getString("Price")%></li>
                                        
                                        Location : <li><i class="icon-ok"></i><%=res.getString("Location")%></li>
                                        Farming Experience  :<li><i class="icon-ok"></i> <%=res.getString("Experience")%></li>
                                        <!-- <li><i class="icon-ok"></i> HTML5 CSS3 jQuery</li> -->
                                    </ul>
                           </div>
      
                                <div class="pricing-action">
                                    <a href="pricingProcess.jsp?id=<%=res.getString("id")%>" class="btn btn-medium"><i class="icon-bolt"></i>Add To Cart</a>
                                </div>
      
                            </div>
                        </div>
                                        
               <%
               }
            } catch (NullPointerException e) {
               System.out.println("Error at detail: " + e.getStackTrace().toString());
               e.printStackTrace();
            } 
        %>
            
      
              </div><!--
         
                      

                </div>
            </section>
            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="widget">
                                <h5 class="widgetheading">Our Contact</h5>
                                <address>
                                    <strong>Bistro company Inc</strong><br>
                                    JC Main Road, Near Silnile tower<br>
                                    Pin-21542 NewYork US.</address>
                                <p>
                                    <i class="icon-phone"></i> (123) 456-789 - 1255-12584 <br>
                                    <i class="icon-envelope-alt"></i> email@domainname.com
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget">
                                <h5 class="widgetheading">Quick Links</h5>
                                <ul class="link-list">
                                    <li><a href="#">Latest Events</a></li>
                                    <li><a href="#">Terms and conditions</a></li>
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
                                    <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                                    <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
                                    <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="widget">
                                <h5 class="widgetheading">Recent News</h5>
                                <ul class="link-list">
                                    <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                                    <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
                                    <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
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
                                        <span>&copy; Touch Hospital Medical 2015 All right reserved. By </span><a href="http://webthemez.com" Bistro="_blank">WebThemez</a>
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
    </body>
</html>