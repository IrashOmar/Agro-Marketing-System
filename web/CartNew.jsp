<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Shopping Cart</title>

        <!--
          - custom css link
        -->
        <link rel="stylesheet" href="styleCartNew.css">

        <!--
          - google font link
        -->
        <link
            href="https://fonts.googleapis.com/css?family=Source+Sans+3:200,300,regular,500,600,700,800,900,200italic,300italic,italic,500italic,600italic,700italic,800italic,900italic"
            rel="stylesheet" />
    </head>

    <body>


        <!--
          - main container
        -->

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
             
                    <form action="addToViewOrder.jsp">
                    <button class="btn btn-primary">
                        <b>Pay</b> $ <span id="payAmount">2.15</span>
                    </button>
                    </form>

                </section>


                <!--
                  - cart section
                -->
                <section class="cart">

                    <div class="cart-item-box">

                        <h2 class="section-heading">Order Summary</h2>

                        <div class="product-card">
                            <%
                                String tree_id = request.getParameter("tree_id");
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
                                Statement statement1 = null;
                                ResultSet resultSet1 = null;
                            %>
                            <%
                                try {
                                    connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
//                                    statement = connection.createStatement();
//                                    String sql = "SELECT * FROM cart ";
//                                    String cart_id = request.getParameter("cart_id");
//                                    resultSet = statement.executeQuery(sql);
//                                    String cart_id = resultSet.getString("cart_id");
                                    statement1 = connection.createStatement();
                                    String sql1 = "SELECT cart.cart_id, cart.quantity, tree.ProductName,trybackend.Price FROM cart JOIN trybackend ON cart.id = trybackend.id JOIN tree ON trybackend.tree_id = tree.tree_id ORDER BY cart_id";
//                                      String sql1= "Select cart.quantity, cart.cart_id, trees.ProductName From cart left join tree as trees cart.tree_id";
                                    resultSet1 = statement1.executeQuery(sql1);

                                    while (resultSet1.next()) {

                                        String cart_id = resultSet1.getString("cart_id");
                            %>

                            <div class="card">

<!--                                <div class="img-box">
                                    <img src="./images/green-tomatoes.jpg" alt="Green tomatoes" width="80px" class="product-img">
                                </div>-->

                                <div class="detail">

                                    <h4 class="product-name"><%=resultSet1.getString("ProductName")%></h4>

                                    <div class="wrapper">

                                        <div class="product-qty">
                                            <button id="decrement">
                                                <ion-icon name="remove-outline"></ion-icon>
                                            </button>

                                            <span id="quantity"><%=resultSet1.getString("quantity")%></span>

                                            <button id="increment">
                                                <ion-icon name="add-outline"></ion-icon>
                                            </button>
                                        </div>

                                        <div class="price">
                                            $ <span id="price"><%=resultSet1.getString("price")%></span>
                                        </div>

                                    </div>

                                </div>

                                <a href='deleteCart.jsp?d=<%=resultSet1.getString("cart_id")%>'<button class="product-close-btn">
                                    <ion-icon name="close-outline"></ion-icon>
                                    </button></a>

                            </div>
                            <%
                                    }

                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>

                        </div>

                        <!--          <div class="product-card">
                        
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
                        
                                    </div>-->

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






<!--
  - custom js link
-->
<script src="./scriptCartNew.js"></script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>