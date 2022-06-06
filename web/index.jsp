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
        <link href="css/flexslider.css" rel="stylesheet" /> 
        <link href="css/style.css" rel="stylesheet" />

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
              <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->

    </head>
    <body>
        <div id="wrapper" class="home-page">
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

                        </div>
                        <a class="navbar-brand" href="post.html"></a>
                        <div class="navbar-collapse collapse ">
                            <ul class="nav navbar-nav">
                                <li class="active"><a href="index.html">Home</a></li> 
                                <!-- <li><a href="about.html">Available</a></li> -->
                                <li><a href="Category2.jsp">Categories</a></li>
                                <li><a href="ReadingSection.jsp">Reading Section</a></li>
                                <!-- <li><a href="portfolio.html">Categories</a></li> -->
                                <li><a href="Feedback.jsp">Feedback</a></li>
                                <li><a href="Cart3.jsp">Cart</a></li>
                                 <li><a href="Feedback.html">Profile</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </header>
            <!-- end header -->
            <section id="banner">

                <!-- Slider -->
                <div id="main-slider" class="flexslider">
                    <ul class="slides">
                        <li>
                            <img src="img/farm.png" alt="" />

                        </li>

                    </ul>
                </div>
                <!-- end slider -->
                <section id="events">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="aligncenter"><h2 class="aligncenter">Top Categories</h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident, doloribus omnis minus temporibus perferendis nesciunt quam repellendus nulla nemo ipsum odit corrupti consequuntur possimus.</div>
                                <br>
                            </div>
                        </div>
                        <div class="row" class="eventsLink">
                            <div class="col-md-4">
                                <div class="post3">
                                    <img src="img/durianResize.jpg" alt="">
                                    <a href="#">
                                        <!-- <time datetime="2015-03-01"> -->
                                        <!-- <span class="year">2015</span>
                                        <span class="month">Feb</span> -->
                                        <!-- </time> -->
                                        <h3>Locals</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipis.</p>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="post3">
                                    <img src="img/appleResize.jpg" alt="">
                                    <a href="#">
                                        <!-- <time datetime="2015-03-01">
                                            <span class="year">2015</span>
                                            <span class="month">March</span>
                                        </time> -->
                                        <h3>Imports</h3>
                                        <p>Apsum dolor sit amet, consectetur adipisdslif.</p>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="post3">
                                    <img src="img/vegetablesResize.jpg" alt="">
                                    <a href="#">
                                        <!-- <time datetime="2015-03-01">
                                            <span class="year">2015</span>
                                            <span class="month">April</span>
                                        </time> -->
                                        <h3>Vegetables</h3>
                                        <p>Dolor sit amet, consectetur adipisic indfeft</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </section> 
                <!-- </section>
                <section class="txt-area">
                <div class="container">
                        <div class="row">
                                <div class="col-lg-12">
                                        <div class="aligncenter"><h1 class="aligncenter">About Us</h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident, doloribus omnis minus temporibus perferendis nesciunt quam repellendus nulla nemo ipsum odit corrupti consequuntur possimus.</div>
                                        
                                </div>
                        </div>
                </div>
                </section>
                -->
                <!-- 	
                <!-- <section id="services">
                
                
                <div class="container">
                        <div class="row">
                        <div class="features">
                            <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="0ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 0ms;">
                                <div class="media service-box">
                                    <div class="pull-left">
                                        <img src="img/1.png" alt="" />
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Child Care</h4>
                                        <p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
                                    </div>
                                </div>
                            </div><!--/.col-md-4-->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="100ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 100ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                             <img src="img/2.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Women Care</h4>
                            <p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="200ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 200ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="img/3.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Family</h4>
                            <p>Morbi vitae tortor tempus, placerat leo et, suscipit lectus. Phasellus ut euismod massa, eu eleifend ipsum.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="300ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 300ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                             <img src="img/4.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Heart</h4>
                            <p>Morbi vitae tortor tempus, placerat leo et, suscipit lectus. Phasellus ut euismod massa, eu eleifend ipsum.</p>
                        </div>
                    </div>
                </div>/.col-md-4 -->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="400ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 400ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                             <img src="img/5.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Eye Care</h4>
                            <p>Morbi vitae tortor tempus, placerat leo et, suscipit lectus. Phasellus ut euismod massa, eu eleifend ipsum.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="500ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 500ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="img/7.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Testing</h4>
                            <p>Morbi vitae tortor tempus, placerat leo et, suscipit lectus. Phasellus ut euismod massa, eu eleifend ipsum.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->
                <!-- </div>
            </div>	  --> 

                <!-- 
                        </div>
                        
                        </section> --> 

                <section class="aboutUs">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="aligncenter"><h2 class="aligncenter">About us</h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</div>
                                <br/>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-md-6">
                                <iframe width="500" height="305" src="https://www.youtube.com/embed/fRlUhUWS0Hk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                <div class="space"></div>
                            </div>
                            <div class="col-md-6">
                                <p><h5>AGRICULTURAL INDUSTRY IS THE FUTURE FOR EVERYONE
                                    little did we know, this industry is one of our main contributors in terms of Malaysia's economy
                                    specifically farming. According to DOSM, agriculture sector contributed RM 99.5 billion in 2018 to Malaysia's GDP


                                    So, MyDusun.com is an agro-marketing system that encourages Malaysians especially the 
                                    youngsters to start involving in agricultural sector. This system is a one stop platform for people 
                                    who are new to agricultural industry. With the cooperation of farmers in Malaysia, people 
                                    without any knowledge about agricultural can start enjoying the profit from it by investing in 
                                    this system .People just need to purchase and own fruit trees which then will be taken care by 
                                    the expert farmers in Malaysia and just enjoy the benefits from it. With trading as the main 
                                    concept of this system, it is surely attracting many attentions of Malaysians as trading is 
                                    becoming the trend in today?s world.
                                    So what are you waiting for?? Let's start farming!!</p>
                                    <ul class="list-unstyled">
                                        <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Lorem ipsum enimdolor sit amet</li>
                                        <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Explicabo deleniti neque aliquid</li>
                                        <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Consectetur adipisicing elit</li>
                                        <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Lorem ipsum dolor sit amet</li>
                                        <li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Quo issimos molest quibusdam temporibus</li>
                                    </ul>
                            </div>
                        </div>

                    </div>
                </section>
                <!-- 
                    <section class="txt-area">
                        <div class="container">
                                <div class="row">
                                        <div class="col-lg-12">
                                                <div class="aligncenter"><h1 class="aligncenter">About Us</h1>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident, doloribus omnis minus temporibus perferendis nesciunt quam repellendus nulla nemo ipsum odit corrupti consequuntur possimus.</div>
                                                
                                        </div>
                                </div>
                        </div>
                        </section> -->

                <!-- 	
                <!-- <section id="services">
                
                
                <div class="container">
                        <div class="row">
                        <div class="features">
                            <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="0ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 0ms;">
                                <div class="media service-box">
                                    <div class="pull-left">
                                        <img src="img/1.png" alt="" />
                                    </div>
                                    <div class="media-body">
                                        <h4 class="media-heading">Child Care</h4>
                                        <p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
                                    </div>
                                </div>
                            </div><!--/.col-md-4-->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="100ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 100ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                             <img src="img/2.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Women Care</h4>
                            <p>Backed by some of the biggest names in the industry, Firefox OS is an open platform that fosters greater</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="200ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 200ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="img/3.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Family</h4>
                            <p>Morbi vitae tortor tempus, placerat leo et, suscipit lectus. Phasellus ut euismod massa, eu eleifend ipsum.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="300ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 300ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                             <img src="img/4.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Heart</h4>
                            <p>Morbi vitae tortor tempus, placerat leo et, suscipit lectus. Phasellus ut euismod massa, eu eleifend ipsum.</p>
                        </div>
                    </div>
                </div>/.col-md-4 -->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="400ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 400ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                             <img src="img/5.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Eye Care</h4>
                            <p>Morbi vitae tortor tempus, placerat leo et, suscipit lectus. Phasellus ut euismod massa, eu eleifend ipsum.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->

                <!-- <div class="col-md-4 col-sm-6 wow fadeInUp animated" data-wow-duration="300ms" data-wow-delay="500ms" style="visibility: visible; -webkit-animation-duration: 300ms; -webkit-animation-delay: 500ms;">
                    <div class="media service-box">
                        <div class="pull-left">
                            <img src="img/7.png" alt="" />
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Testing</h4>
                            <p>Morbi vitae tortor tempus, placerat leo et, suscipit lectus. Phasellus ut euismod massa, eu eleifend ipsum.</p>
                        </div>
                    </div>
                </div><!--/.col-md-4-->
                <!-- </div>
            </div>	  --> 

                <!-- 
                        </div>
                        
                        </section>
                <!-- <section id="events">
                <div class="container">
                <div class="row">
                                <div class="col-md-12">
                                        <div class="aligncenter"><h2 class="aligncenter">Our Events</h2>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident, doloribus omnis minus temporibus perferendis nesciunt quam repellendus nulla nemo ipsum odit corrupti consequuntur possimus.</div>
                                        <br>
                                </div>
                        </div>
                <div class="row" class="eventsLink">
                        <div class="col-md-4">
                            <div class="post3">
                                <img src="img/pgFarmResize.jpg" alt="">
                                <a href="#">
                                    <time datetime="2015-03-01">
                                        <span class="year">2015</span>
                                        <span class="month">Feb</span>
                                    </time>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipis.</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="post3">
                                <img src="img/e2.png" alt="">
                                <a href="#">
                                    <time datetime="2015-03-01">
                                        <span class="year">2015</span>
                                        <span class="month">March</span>
                                    </time>
                                    <p>Apsum dolor sit amet, consectetur adipisdslif.</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="post3">
                                <img src="img/e3.png" alt="">
                                <a href="#">
                                    <time datetime="2015-03-01">
                                        <span class="year">2015</span>
                                        <span class="month">April</span>
                                    </time>
                                    <p>Dolor sit amet, consectetur adipisic indfeft</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                </section>  -->

                <section class="default-bg secPadding">

                    <div class="container2">
                        <div class="row">
                            <div class='col-md-offset-2 col-md-8 text-center'>
                                <h2>Clients Testimonials</h2>
                            </div>
                        </div>
              
                        <div class='row'>
                            <div class='col-md-offset-2 col-md-8'>
                                <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                                    <!-- Bottom Carousel Indicators -->
                                    <ol class="carousel-indicators">
                                        <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
                                        <li data-target="#quote-carousel" data-slide-to="1"></li>
                                        <li data-target="#quote-carousel" data-slide-to="2"></li>
                                    </ol>

                                    <!-- Carousel Slides / Quotes -->
                                    <div class="carousel-inner">
                        <%
           
            try {
             String host = "jdbc:mysql://localhost:3306/test";
                        Connection conn = null;
                        Statement stat = null;
                        ResultSet res = null;
                       String feed_id=request.getParameter("feed_id");
                       
                   
                     
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection(host,"root","admin");
                        stat = conn.createStatement();
                        String data = "select * from feedback";
                        res = stat.executeQuery(data);
                        while(res.next()){
//                         String filename = res.getString("filename");
                  
                   %>
                                        <!-- Quote 1 -->
                                        <div class="item active">
                                            <blockquote>
                                                <div class="row">
                                                    <div class="col-sm-3 text-center">
<!--                                                        <img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kolage/128.jpg" style="width: 100px;height:100px;">-->
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <p><%=res.getString("comment")%></p>
                                                        <small>Someone famous</small>
                                                    </div>
                                                </div>
                                            </blockquote>
                                        </div>
                                                                              <%
               }
            } catch (NullPointerException e) {
               System.out.println("Error at detail: " + e.getStackTrace().toString());
               e.printStackTrace();
            } 
        %>
                                        <!-- Quote 2 -->
<!--                                        <div class="item">
                                            <blockquote>
                                                <div class="row">
                                                    <div class="col-sm-3 text-center">
                                                        <img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/mijustin/128.jpg" style="width: 100px;height:100px;">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor nec lacus ut tempor. Mauris.</p>
                                                        <small>Someone famous</small>
                                                    </div>
                                                </div>
                                            </blockquote>
                                        </div>
                                         Quote 3 
                                        <div class="item">
                                            <blockquote>
                                                <div class="row">
                                                    <div class="col-sm-3 text-center">
                                                        <img class="img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/keizgoesboom/128.jpg" style="width: 100px;height:100px;">
                                                    </div>
                                                    <div class="col-sm-9">
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed ultricies commodo tortor, eu pretium mauris.</p>
                                                        <small>Someone famous</small>
                                                    </div>
                                                </div>
                                            </blockquote>
                                        </div>-->
                                    </div>   
    
                                </div>                          
                            </div>
                        </div>
                    </div>
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