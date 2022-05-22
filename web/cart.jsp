
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="http://webthemez.com" />
    <title>NyumNyum Grocery Store</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
   
        <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
        <link href="css/jcarousel.css" rel="stylesheet" />
        <link href="css/flexslider.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
</head>

<body>
   
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
                                <li><a href="index.html">Home</a></li> 
                                <!-- <li><a href="about.html">About Us</a></li> -->
                                <li class="active"><a href="services.html">Reading Section</a></li>
                                <li><a href="Category.html">Categories</a></li>
                                <li><a href="pricing.html">Available Farm</a></li>
                                <li class="active"><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </header><!-- end header -->
            <section id="inner-headline">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="pageTitle">Post Your Advertisement</h2>
                        </div>
                    </div>
                </div>
            </section>
   
    <main>
       
        </button>

        <div class="container">
            <div class="row my-4">
                <div class="col-sm-12 col-lg-8 rounded-3 bg-white mx-auto my-1">
                    <!-- Cart section -->
                    <div class="row">
                        <h3 style="text-align: center; background-color: #ffc000;" class="py-3 rounded-3">Cart</h3>
                    </div>
                    <div class="row py-xxl-3 py-sm-4 align-items-center" style="border-bottom: 1px #c7c7c7 solid;">
                        <div class="col-sm-auto align-self-center py-2 mx-sm-auto">
                            <button type="button" class="btn btn-outline-danger btn-sm"
                                id="removeItemInCart">Remove</button>
                        </div>
                        <div class="col-2">
                            <img src="/img/banana.jpg" class="img-thumbnail" alt="">
                        </div>
                        <div class="col align-self-center">
                            <div>
                                <h4>Banana</h4>
                                <p class="text-success fw-bold" id="singlePrice">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-2">
                            <input type="number" class="form-control" id="inputQuantity" value="1"
                                onclick="cartTotalCal()" onkeyup="cartTotalCal()" min="0">
                        </div>
                        <div class="col-2 align-self-center">
                            <div>
                                <h6 class="text-center">Sub Total</h6>
                                <p class="text-center text-success fw-bold">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-1 align-self-center">
                            <input type="checkbox" name="" id="checkItem" class="" onclick="cartTotalCal()">
                        </div>
                    </div>
                    <!-- <hr> -->
                    <div class="row py-xxl-3 py-sm-4 align-items-center" style="border-bottom: 1px #c7c7c7 solid;">
                        <div class="col-sm-auto align-self-center py-2 mx-sm-auto">
                            <button type="button" class="btn btn-outline-danger btn-sm"
                                id="removeItemInCart">Remove</button>
                        </div>
                        <div class="col-2">
                            <img src="/img/banana.jpg" class="img-thumbnail" alt="">
                        </div>
                        <div class="col align-self-center">
                            <div>
                                <h4>Banana</h4>
                                <p class="text-success fw-bold" id="singlePrice">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-2">
                            <input type="number" class="form-control" id="inputQuantity" value="1"
                                onclick="cartTotalCal()" onkeyup="cartTotalCal()" min="0">
                        </div>
                        <div class="col-2 align-self-center">
                            <div>
                                <h6 class="text-center">Sub Total</h6>
                                <p class="text-center text-success fw-bold">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-1 align-self-center">
                            <input type="checkbox" name="" id="checkItem" class="" onclick="cartTotalCal()">
                        </div>
                    </div>
                    <!-- <hr> -->
                    <div class="row py-xxl-3 py-sm-4 align-items-center" style="border-bottom: 1px #c7c7c7 solid;">
                        <div class="col-sm-auto align-self-center py-2 mx-sm-auto">
                            <button type="button" class="btn btn-outline-danger btn-sm"
                                id="removeItemInCart">Remove</button>
                        </div>
                        <div class="col-2">
                            <img src="/img/banana.jpg" class="img-thumbnail" alt="">
                        </div>
                        <div class="col align-self-center">
                            <div>
                                <h4>Banana</h4>
                                <p class="text-success fw-bold" id="singlePrice">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-2">
                            <input type="number" class="form-control" id="inputQuantity" value="1"
                                onclick="cartTotalCal()" onkeyup="cartTotalCal()" min="0">
                        </div>
                        <div class="col-2 align-self-center">
                            <div>
                                <h6 class="text-center">Sub Total</h6>
                                <p class="text-center text-success fw-bold">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-1 align-self-center">
                            <input type="checkbox" name="" id="checkItem" class="" onclick="cartTotalCal()">
                        </div>
                    </div>
                    <!-- <hr> -->
                    <div class="row py-xxl-3 py-sm-4 align-items-center" style="border-bottom: 1px #c7c7c7 solid;">
                        <div class="col-sm-auto align-self-center py-2 mx-sm-auto">
                            <button type="button" class="btn btn-outline-danger btn-sm"
                                id="removeItemInCart">Remove</button>
                        </div>
                        <div class="col-2">
                            <img src="/img/banana.jpg" class="img-thumbnail" alt="">
                        </div>
                        <div class="col align-self-center">
                            <div>
                                <h4>Banana</h4>
                                <p class="text-success fw-bold" id="singlePrice">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-2">
                            <input type="number" class="form-control" id="inputQuantity" value="1"
                                onclick="cartTotalCal()" onkeyup="cartTotalCal()" min="0">
                        </div>
                        <div class="col-2 align-self-center">
                            <div>
                                <h6 class="text-center">Sub Total</h6>
                                <p class="text-center text-success fw-bold">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-1 align-self-center">
                            <input type="checkbox" name="" id="checkItem" class="" onclick="cartTotalCal()">
                        </div>
                    </div>
                    <!-- <hr> -->
                    <div class="row py-xxl-3 py-sm-4 align-items-center" style="border-bottom: 1px #c7c7c7 solid;">
                        <div class="col-sm-auto align-self-center py-2 mx-sm-auto">
                            <button type="button" class="btn btn-outline-danger btn-sm"
                                id="removeItemInCart">Remove</button>
                        </div>
                        <div class="col-2">
                            <img src="/img/banana.jpg" class="img-thumbnail" alt="">
                        </div>
                        <div class="col align-self-center">
                            <div>
                                <h4>Banana</h4>
                                <p class="text-success fw-bold" id="singlePrice">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-2">
                            <input type="number" class="form-control" id="inputQuantity" value="1"
                                onclick="cartTotalCal()" onkeyup="cartTotalCal()" min="0">
                        </div>
                        <div class="col-2 align-self-center">
                            <div>
                                <h6 class="text-center">Sub Total</h6>
                                <p class="text-center text-success fw-bold">RM 0.50</p>
                            </div>
                        </div>
                        <div class="col-1 align-self-center">
                            <input type="checkbox" name="" id="checkItem" class="" onclick="cartTotalCal()">
                        </div>
                    </div>
                </div>

                <div class="col-sm-12 col-lg-auto rounded-3 mx-auto my-1 bg-success align-self-start sticky-xl-topList">
                    <!-- Total section -->
                    <div class="row text-white align-items-center py-3">
                        <div class="col-sm-12 mx-auto">
                            <h3 class="text-center">Total</h3>
                        </div>
                        <div class="col-sm-12 mx-auto">
                            <h1 class="text-center" id="cartTotal">RM 10,000.00</h1>
                        </div>
                    </div>
                    <hr style="color: white;" class="hrList">
                    <div class="row align-items-center py-3">
                        <div class="col-12">
                            <select class="form-select" aria-label="Default select example">
                                <option selected>Select Address for Delivery</option>
                                <option value="1">Address 1</option>
                                <option value="2">Address 2</option>
                                <option value="3">Address 3</option>
                            </select>
                        </div>
                    </div>
                    <hr style="color: white;" class="hrList">
                    <div class="row text-white align-items-center py-3">
                        <div class="col-sm-12">
                            <button class="block rounded-3" type="submit">Checkout</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
    <script src="/nyumscript.js"></script>
    <script src="/src/JS/cart.js"></script>
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
