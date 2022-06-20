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
        <link rel="stylesheet" href="styleCartNew.css">
 <link
    href="https://fonts.googleapis.com/css?family=Source+Sans+3:200,300,regular,500,600,700,800,900,200italic,300italic,italic,500italic,600italic,700italic,800italic,900italic"
    rel="stylesheet" />
        

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
                                <li><a href="#">Progress</a></li>
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
                <main class="container">

    <h1 class="heading">
      <ion-icon name="cart-outline"></ion-icon> Shopping Cart
    </h1>

    <div class="item-flex">

      <!--
       - checkout section
      -->
      <section class="checkout">

        <h2 class="section-heading">Payment Details</h2>

        <div class="payment-form">

          <div class="payment-method">

            <button class="method selected">
              <ion-icon name="card"></ion-icon>

              <span>Credit Card</span>

              <ion-icon class="checkmark fill" name="checkmark-circle"></ion-icon>
            </button>

            <button class="method">
              <ion-icon name="logo-paypal"></ion-icon>

              <span>PayPal</span>

              <ion-icon class="checkmark" name="checkmark-circle-outline"></ion-icon>
            </button>

          </div>

          <form action="#">

            <div class="cardholder-name">
              <label for="cardholder-name" class="label-default">Cardholder name</label>
              <input type="text" name="cardholder-name" id="cardholder-name" class="input-default">
            </div>

            <div class="card-number">
              <label for="card-number" class="label-default">Card number</label>
              <input type="number" name="card-number" id="card-number" class="input-default">
            </div>

            <div class="input-flex">

              <div class="expire-date">
                <label for="expire-date" class="label-default">Expiration date</label>

                <div class="input-flex">

                  <input type="number" name="day" id="expire-date" placeholder="31" min="1" max="31"
                    class="input-default">
                  /
                  <input type="number" name="month" id="expire-date" placeholder="12" min="1" max="12"
                    class="input-default">

                </div>
              </div>

              <div class="cvv">
                <label for="cvv" class="label-default">CVV</label>
                <input type="number" name="cvv" id="cvv" class="input-default">
              </div>

            </div>

          </form>

        </div>

        <button class="btn btn-primary">
          <b>Pay</b> $ <span id="payAmount">2.15</span>
        </button>

      </section>


      <!--
        - cart section
      -->
      <section class="cart">

        <div class="cart-item-box">

          <h2 class="section-heading">Order Summery</h2>

          <div class="product-card">

            <div class="card">

              <div class="img-box">
                <img src="./images/green-tomatoes.jpg" alt="Green tomatoes" width="80px" class="product-img">
              </div>

              <div class="detail">

                <h4 class="product-name">Green Tomatoes 1 Kilo</h4>

                <div class="wrapper">

                  <div class="product-qty">
                    <button id="decrement">
                      <ion-icon name="remove-outline"></ion-icon>
                    </button>

                    <span id="quantity">1</span>

                    <button id="increment">
                      <ion-icon name="add-outline"></ion-icon>
                    </button>
                  </div>

                  <div class="price">
                    $ <span id="price">1.25</span>
                  </div>

                </div>

              </div>

              <button class="product-close-btn">
                <ion-icon name="close-outline"></ion-icon>
              </button>

            </div>

          </div>

          <div class="product-card">

            <div class="card">

              <div class="img-box">
                <img src="./images/cabbage.jpg" alt="Cabbage" width="80px" class="product-img">
              </div>

              <div class="detail">

                <h4 class="product-name">Cabbage 1 Pcs</h4>

                <div class="wrapper">

                  <div class="product-qty">
                    <button id="decrement">
                      <ion-icon name="remove-outline"></ion-icon>
                    </button>

                    <span id="quantity">1</span>

                    <button id="increment">
                      <ion-icon name="add-outline"></ion-icon>
                    </button>
                  </div>

                  <div class="price">
                    $ <span id="price">0.80</span>
                  </div>

                </div>

              </div>

              <button class="product-close-btn">
                <ion-icon name="close-outline"></ion-icon>
              </button>

            </div>

          </div>

        </div>

        <div class="wrapper">

          <div class="discount-token">

            <label for="discount-token" class="label-default">Gift card/Discount code</label>

            <div class="wrapper-flex">

              <input type="text" name="discount-token" id="discount-token" class="input-default">

              <button class="btn btn-outline">Apply</button>

            </div>

          </div>

          <div class="amount">

            <div class="subtotal">
              <span>Subtotal</span> <span>$ <span id="subtotal">2.05</span></span>
            </div>

            <div class="tax">
              <span>Tax</span> <span>$ <span id="tax">0.10</span></span>
            </div>

            <div class="shipping">
              <span>Shipping</span> <span>$ <span id="shipping">0.00</span></span>
            </div>

            <div class="total">
              <span>Total</span> <span>$ <span id="total">2.15</span></span>
            </div>

          </div>

        </div>

      </section>

    </div>

  </main>
            </section>

               