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
                            <h2 class="pageTitle">Update Tree Progress</h2>
                        </div>
                    </div>
                </div>
            </section>
            <section id="content">

                <div class="container">
                    <div class="row"> 
                        <div class="col-md-12">
                            <div class="about-logo">
                                <h3>Update The Buyers</h3>
                                <p>Update the buyer's tree details like their profit, status of the tree and also the growth in their asset.</p>
                               
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                          
<!--                            <div class="done">
                                <div class="alert alert-success">
                                    <button type="button" class="close" data-dismiss="alert">×</button>
                                    Your message has been sent. Thank you!
                                </div>
                            </div>-->
                            
                            <div class="contact-form">
     
                                <form action="UpdateTreeProgressProcess.jsp" method="post">

<!--                                      <div class="form-group has-feedback">
                                        <label for="Purchasement_Id">Purchasement Id*</label>
                                        <input type="text" class="form-control" name="Purchasement_Id" placeholder="">
                                        <i class=" form-control-feedback"></i>
                                    </div>-->
                                      <div class="form-group has-feedback">
                                        <label for="FruitTree"> Fruit Tree*</label>
                                        <input type="text" class="form-control" name="FruitTree" placeholder="">
                                        <i class=" form-control-feedback"></i>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label for="Quantity"> Quantity*</label>
                                        <input type="text" class="form-control" name="Quantity" placeholder="">
                                        <i class=" form-control-feedback"></i>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label for="Status"> Status*</label>
                                        <input type="text" class="form-control" name="Status" placeholder="">
                                        <i class=" form-control-feedback"></i>
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label for="FruitsProduced"> Fruit Produced(kg)*</label>
                                        <input type="text" class="form-control" name="FruitProduced" placeholder="">
                                        <i class=" form-control-feedback"></i>
                                    </div>

                                    <div class="form-group has-feedback">
                                        <label for="Profit">Profit*</label>
                                        <input type="text" class="form-control" name="Profit" placeholder="">
                                        <i class=" form-control-feedback"></i>
                                    </div>
                   
                                    <div class="form-group has-feedback">
                                        <label for="Date"> Date*</label>
                                        <input type="text" class="form-control" name="Date" placeholder="">
                                        <i class=" form-control-feedback"></i>
                                        <br>
                                   

                                    <input type="submit"class="submit btn btn-default">
                                    <a href="ViewProgress.jsp" class="submit btn btn-default">View Progress</a>
                                  
                                </form>


                            </div>
                        </div>
                        <!--                        <h2>    Locate Your Farm</h2>-->
                        <!--                        <div class="col-md-6">
                                                    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://www.trivoo.net" id="get-map-data">trivoo</a></div><script type="text/javascript"> function init_map() {
                                       var myOptions = {zoom: 14, center: new google.maps.LatLng(40.805478, -73.96522499999998), mapTypeId: google.maps.MapTypeId.ROADMAP};
                                       map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);
                                       marker = new google.maps.Marker({map: map, position: new google.maps.LatLng(40.805478, -73.96522499999998)});
                                       infowindow = new google.maps.InfoWindow({content: "<b>The Breslin</b><br/>2880 Broadway<br/> New York"});
                                       google.maps.event.addListener(marker, "click", function () {
                                           infowindow.open(map, marker);
                                       });
                                       infowindow.open(map, marker);
                                   }
                                   google.maps.event.addDomListener(window, 'load', init_map);</script>
                                                </div>-->
                    </div>
                </div>

            </section>
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