
<!DOCTYPE html>
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
                                <li><a href="../Category2.jsp">Categories</a></li>
                                <li><a href="../ReadingSection.jsp">Readings</a></li>
                                <!-- <li><a href="portfolio.html">Categories</a></li> -->
                                <li><a href="../Feedback.jsp">Feedback</a></li>
                                <li><a href="ranking.jsp">Trading</a></li>
                                <li><a href="../Cart3.jsp">Cart</a></li>
                                <li><a href="../Profile.jsp">Profile</a></li>                    </ul>
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

            <div class="row">
                <!-- metric -->
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-muted">Total Trees Bought</h5>
                            <div class="metric-value d-inline-block">
                                <h1 class="mb-1 text-primary">32,100 </h1>
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
                            <h5 class="text-muted">Deposit</h5>
                            <div class="metric-value d-inline-block">
                                <h1 class="mb-1 text-primary">4,200 </h1>
                            </div>
                            <div class="metric-label d-inline-block float-right text-danger">
                                <i class="fa fa-fw fa-caret-down"></i><span>1.08%</span>
                            </div>
                        </div>
                        <div id="sparkline-2"></div>
                    </div>
                </div>
                <!-- /. metric -->
                <!-- metric -->
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-muted">Total Asset</h5>
                            <div class="metric-value d-inline-block">
                                <h1 class="mb-1 text-primary">RM 5,656</h1>
                            </div>
                            <div class="metric-label d-inline-block float-right text-danger">
                                <i class="fa fa-fw fa-caret-down"></i><span>7.00%</span>
                            </div>
                        </div>
                        <div id="sparkline-3">
                        </div>
                    </div>
                </div>
                <!-- /. metric -->
                <!-- metric -->
                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="text-muted">Growth</h5>
                            <div class="metric-value d-inline-block">
                                <h1 class="mb-1 text-primary">+28.45% </h1>
                            </div>
                            <div class="metric-label d-inline-block float-right text-success">
                                <i class="fa fa-fw fa-caret-up"></i><span>4.87%</span>
                            </div>
                        </div>
                        <div id="sparkline-4"></div>
                    </div>
                </div>
                <!-- /. metric -->
            </div>
            <!-- ============================================================== -->
            <!-- revenue  -->
            <!-- ============================================================== -->
            <!-- <div class="row"> -->
            <!-- <div class="col-xl-8 col-lg-12 col-md-8 col-sm-12 col-12" > -->

            <div class="card">
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
                </div>







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
                <h5 class="card-header">Your Tree Progress</h5>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <table class="table">
                            <thead class="bg-light">
                                <tr class="border-0">




                                   
                                    <th class="border-0">Fruit Tree</th>
                                    <th class="border-0">Quantity</th>
                                    <th class="border-0">Condition</th>
                                    <th class="border-0">Fruit Produced(kg)</th>
                                    <th class="border-0">Profit</th>
                                    <th class="border-0">Date</th>
                                </tr>

                            </thead>
                            <tbody>


                                <tr>


                                    <td>1</td>
                                    <td>Durian Musang King</td>
                                    <td>1</td><!-- comment -->
                                    <td>RM 23.40</td><!-- comment -->
                                    <td>30/3/2022</td>




                                </tr>
                                <tr>


                                    <td>1</td>
                                    <td>Durian Musang King</td>
                                    <td>1</td><!-- comment -->
                                    <td>RM 23.40</td><!-- comment -->
                                    <td>30/3/2022</td>




                                </tr>
                                <tr>


                                    <td>1</td>
                                    <td>Durian Musang King</td>
                                    <td>1</td><!-- comment -->
                                    <td>RM 23.40</td><!-- comment -->
                                    <td>30/3/2022</td>




                                </tr>
                                <tr>


                                    <td>1</td>
                                    <td>Durian Musang King</td>
                                    <td>1</td><!-- comment -->
                                    <td>RM 23.40</td><!-- comment -->
                                    <td>30/3/2022</td>




                                </tr>
                                <tr>


                                    <td>1</td>
                                    <td>Durian Musang King</td>
                                    <td>1</td><!-- comment -->
                                    <td>RM 23.40</td><!-- comment -->
                                    <td>30/3/2022</td>




                                </tr>


                                <!--                                            <tr>
                                                                            <td>2</td>
                                                                            <td>
                                                                                <div class="m-r-10"><img src="assets/images/product-pic-2.jpg" alt="user" class="rounded" width="45"></div>
                                                                            </td>
                                                                            <td>Product #2 </td>
                                                                            <td>id000002 </td>
                                                                            <td>12</td>
                                                                            <td>$180.00</td>
                                                                            <td>25-08-2018 21:12:56</td>
                                                                            <td>Rachel J. Wicker </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>3</td>
                                                                            <td>
                                                                                <div class="m-r-10"><img src="assets/images/product-pic-3.jpg" alt="user" class="rounded" width="45"></div>
                                                                            </td>
                                                                            <td>Product #3 </td>
                                                                            <td>id000003 </td>
                                                                            <td>23</td>
                                                                            <td>$820.00</td>
                                                                            <td>24-08-2018 14:12:77</td>
                                                                            <td>Michael K. Ledford </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>4</td>
                                                                            <td>
                                                                                <div class="m-r-10"><img src="assets/images/product-pic-4.jpg" alt="user" class="rounded" width="45"></div>
                                                                            </td>
                                                                            <td>Product #4 </td>
                                                                            <td>id000004 </td>
                                                                            <td>34</td>
                                                                            <td>$340.00</td>
                                                                            <td>23-08-2018 09:12:35</td>
                                                                            <td>Michael K. Ledford </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td colspan="8"><a href="#" class="btn btn-outline-light float-right">View Details</a></td>
                                                                        </tr>-->
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>