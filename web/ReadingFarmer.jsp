<%-- 
    Document   : ReadingSection
    Created on : Jun 4, 2022, 5:59:19 PM
    Author     : User
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>MyDusun.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="http://webthemez.com" />

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
                                <li class="active"><a href="FarmerMainPage.html">Home</a></li> 
                                <!-- <li><a href="about.html">Available</a></li> -->
                                <li><a href="post.html">Post</a></li>
                                <li><a href="ReadingFarmer.jsp">Reading Section</a></li>
                                <!-- <li><a href="portfolio.html">Categories</a></li> -->
                                <li><a href="FarmerFeedback.jsp">Feedback</a></li>
                                <li><a href="OrderList.jsp">Order</a></li>
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
                            <h2 class="pageTitle">Reading Section</h2>
                        </div>
                    </div>
                </div>
            </section>
         

                    <!-- Service Blcoks -->
                    <!-- <div class="row"> 
                                                    <div class="col-md-12">
                                                            <div class="about-logo">
                                                                    <h3>Our Services</h3>
                                                                    <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                                    <p>Sed ut perspiciaatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas</p>
                                                            </div>
                                                            <a href="#" class="btn btn-color">Read more</a>  
                                                    </div>
                                            </div> -->
                    <!-- <nav id="filter" class="col-md-12 text-center">
                                                    <ul>
                                                            <a href="#" class="btn-theme0 btn-small" data-filter="*">All</a></li>
                                                            <a href="#" class="btn-theme1 btn-small" data-filter=".webdesign">Locals</a></li>
                                                            <a href="#" class="btn-theme2 btn-small" data-filter=".photography">Imports Mall</a></li>
                                                            <a href="#" class="btn-theme3 btn-small" data-filter=".print">Vegetables</a></li>
                                                    </ul>
                                            </nav> -->
                <section id="content">
                <div class="container content">		
               <div class="row service-v1 margin-bottom-40">

                    <%

                        try {
                            String host = "jdbc:mysql://localhost:3306/test";
                            Connection conn = null;
                            Statement stat = null;
                            ResultSet res = null;
                            String RId = request.getParameter("RId");
                            String topic = request.getParameter("topic");
                            String content = request.getParameter("content");
                            String url = request.getParameter("url");

                            Class.forName("com.mysql.jdbc.Driver");
                            conn = DriverManager.getConnection(host, "root", "admin");
                            stat = conn.createStatement();
                            String data = "select * from readingsection";
                            res = stat.executeQuery(data);
                            while (res.next()) {
                                String filename = res.getString("filename");

                    %>
                  
                        <div class="col-md-4 md-margin-bottom-40">
                            <image class="" src="img/<%=filename%>">   
                            <h4><%=res.getString("topic")%></h4>
                            <p><%=res.getString("content")%></p><a href="<%=res.getString("url")%>">Read More</a><br><br>      
                            <!--                            <p> the process of piercing the seed?s shell, can help speed up the germination process by allowing water to enter the seed.</p>-->

                        </div>
                    
                        <%
                                }
                            } catch (NullPointerException e) {
                                System.out.println("Error at detail: " + e.getStackTrace().toString());
                                e.printStackTrace();
                            }
                        %>
                          </div>
                                   </div>
            </section>
                        <!--                        <div class="col-md-4">
                                                    <img class="img-responsive" src="img/lycheePoison.jpg"" alt="">            
                                                    <h4>Are Lychee Seeds Poisonous?</h4>
                                                    <p>LIn 2015, US researchers reported that brain disease (AES) could be linked to a toxic substance called MCPA, found in the lychee seeds or in the flesh of the fruit.</p>        
                                                    <p> A strange illness that killed several innocent children. In 2014, in Bihar's Muzaffarpur - the land of litchi - </p><a href="https://moviecultists.com/are-lychee-seeds-poisonous">Read More</a>
                                                </div>
                                                <div class="col-md-4 md-margin-bottom-40">
                                                    <img class="img-responsive" src="img/eatred.jpg"" alt="">  
                                                    <h4>Eat Red For A Heart Healthy Diet</h4>
                                                    <p> New research shows that incorporating these three red, round fruits into your daily diet can reduce your risk of heart disease by as much as 40 percent and also increase your immune system.</p>        
                                                    <p>Indeed, diet can have a tremendous impact on heart health ? and should be the first line of defense when treating heart disease</p><a href="https://www.aarp.org/health/healthy-living/info-2014/heart-healthy-red-fruits.html">Read More</a>
                        
                                                </div>
                                            </div>
                                            <div class="row service-v1 margin-bottom-40">
                                                <div class="col-md-4 md-margin-bottom-40">
                                                    <img class="img-responsive" src="img/bananaNo1.jpg" alt="">   
                                                    <h4>The No 1 Fruit In The World.</h4>
                                                    <p>The world?s undisputed favourite fruit is the banana. In 2017, 21.54 billion tons of bananas were traded across the world, worth $14.45 billion. </p>        
                                                    <p>This accounts for more than 14% of all fruits traded. Most exports originate from three countries in Latin America and the Caribbean</p><a href="https://intracen.org/news-and-events/news/what-are-the-worlds-favourite-fruits">Read More</a>
                                                </div>
                                                <div class="col-md-4">
                                                    <img class="img-responsive" src="img/herbBanana.jpg"" alt="">            
                                                    <h4>Is Banana A Herb And Not A Fruit?</h4>
                                                    <p>Bananas are both a fruit and not a fruit. While the banana plant is colloquially called a banana tree, it?s actually an herb distantly related to ginger</p> 
                                                    <p>The yellow thing you peel and eat is, in fact, a fruit because it contains the seeds of the plant.</p><a href="https://www.pbs.org/newshour/nation/8-things-you-didnt-know-about-bananas#:~:text=Bananas%20are%20both%20a%20fruit,the%20seeds%20of%20the%20plant.">Read More</a>       
                                                </div>
                                                <div class="col-md-4 md-margin-bottom-40">
                                                    <img class="img-responsive" src="img/dark green.jpg" alt="">  
                                                    <h4>Dark Green Vegetables</h4>
                                                    <p>Dark leafy green vegetables are all the rage among health-conscious eaters. But the fact is that few of us meet the minimum USDA recommendations for the intake of these nutritional powerhouses.</p>        
                                                    <p>So what makes a vegetable a "powerhouse" vegetable? According to a report published by the Centers for Disease Control</p><a href="https://www.verywellfit.com/health-benefits-of-green-leafy-vegetables-2242154">Read More</a>
                                                </div>
                                            </div>-->
                        <!-- End Service Blcoks -->
                      

<!--                        <hr class="margin-bottom-50">-->
                        <!--         
                                <div class="row">
                                    <nav id="filter" class="col-md-12 text-center">
                                        <ul>
                                            <li><a href="#" class="current btn-theme btn-small" data-filter="*">All</a></li>
                                            <li><a href="#" class="btn-theme btn-small" data-filter=".webdesign">Villas</a></li>
                                            <li><a href="#" class="btn-theme btn-small" data-filter=".photography">Shopping Mall</a></li>
                                            <li><a href="#" class="btn-theme btn-small" data-filter=".print">Township</a></li>
                                        </ul>
                                    </nav>
                                    <div class="col-md-12">
                                        <div class="row">
                                            <div class="portfolio-items isotopeWrapper clearfix" id="3">
                        
                                                <article class="col-sm-4 isotopeItem webdesign">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img1.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="assets/images/portfolio/img1.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                        
                                                <article class="col-sm-4 isotopeItem photography">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img2.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="assets/images/portfolio/img2.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                        
                        
                                                <article class="col-sm-4 isotopeItem photography">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img3.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="assets/images/portfolio/img3.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                        
                                                <article class="col-sm-4 isotopeItem print">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img4.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="assets/images/portfolio/img4.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                        
                                                <article class="col-sm-4 isotopeItem photography">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img5.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="assets/images/portfolio/img5.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                        
                                                <article class="col-sm-4 isotopeItem webdesign">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img6.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="assets/images/portfolio/img6.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                        
                                                <article class="col-sm-4 isotopeItem print">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img7.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="images/portfolio/img7.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                        
                                                <article class="col-sm-4 isotopeItem photography">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img8.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="images/portfolio/img8.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                        
                                                <article class="col-sm-4 isotopeItem print">
                                                    <div class="portfolio-item">
                                                        <img src="assets/images/portfolio/img9.jpg" alt="" />
                                                        <div class="portfolio-desc align-center">
                                                            <div class="folio-info">
                                                                <a href="images/portfolio/img9.jpg" class="fancybox">
                                                                    <h5>Project Title</h5>
                                                                    <i class="fa fa-link fa-2x"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </article>
                                            </div>
                        
                                        </div> -->


                        <!-- Info Blcoks -->
                        <!-- <div class="row">
                            <div class="col-sm-4 info-blocks">
                                <i class="icon-info-blocks fa fa-bell-o"></i>
                                <div class="info-blocks-in">
                                    <h3>Awesome Design</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt</p>
                                </div>
                            </div>
                            <div class="col-sm-4 info-blocks">
                                <i class="icon-info-blocks fa fa-hdd-o"></i>
                                <div class="info-blocks-in">
                                    <h3>FontAwesome</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt</p>
                                </div>
                            </div>
                            <div class="col-sm-4 info-blocks">
                                <i class="icon-info-blocks fa fa-lightbulb-o"></i>
                                <div class="info-blocks-in">
                                    <h3>Bootstrap</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt</p>
                                </div>
                            </div>
                        </div> -->
                        <!-- End Info Blcoks -->


                        <!-- Info Blcoks -->
                        <!-- <div class="row">
                            <div class="col-sm-4 info-blocks">
                                <i class="icon-info-blocks fa fa-code"></i>
                                <div class="info-blocks-in">
                                    <h3>SEO Ready</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt</p>
                                </div>
                            </div>
                            <div class="col-sm-4 info-blocks">
                                <i class="icon-info-blocks fa fa-compress"></i>
                                <div class="info-blocks-in">
                                    <h3>Fully Responsive</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt</p>
                                </div>
                            </div>
                            <div class="col-sm-4 info-blocks">
                                <i class="icon-info-blocks fa fa-html5"></i>
                                <div class="info-blocks-in">
                                    <h3>CSS3 + HTML5</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt</p>
                                </div>
                            </div>
                        </div> -->
                        <!-- End Info Blcoks -->


           
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