<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.*,java.util.HashMap"%>

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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

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

<!--                            <button class="method">
                                <ion-icon name="logo-paypal"></ion-icon>

                                <span>PayPal</span>

                                <ion-icon class="checkmark" name="checkmark-circle-outline"></ion-icon>
                            </button>-->

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

                    <form action="AddtoViewOrderTest.jsp">
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
                                Statement statement2 = null;
                                ResultSet resultSet1 = null;
                                ResultSet resultSet2 = null;
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
                                    statement2 = connection.createStatement();
                                    String sql1 = "SELECT carttest.cart_id, carttest.quantity, tree.ProductName,trybackend2.Price,trybackend2.farId,trybackend2.id FROM carttest JOIN trybackend2 ON carttest.id = trybackend2.id JOIN tree ON trybackend2.tree_id = tree.tree_id ORDER BY cart_id";
//                                      String sql1= "Select cart.quantity, cart.cart_id, trees.ProductName From cart left join tree as trees cart.tree_id";
                                    resultSet1 = statement1.executeQuery(sql1);
                                    HashMap<Integer, Double> cartIdAndTotal = new HashMap<Integer, Double>();
                                    while (resultSet1.next()) {
                                        int quantity = resultSet1.getInt("quantity");
                                        int price = resultSet1.getInt("Price");
                                        double total = quantity * price;
                                        cartIdAndTotal.put(resultSet1.getInt("cart_id"), total);
//                                        Double TotalPrice = resultSet1.getDouble("TotalPrice");
//                                        TotalPrice = total;

//                                        int id = Integer.parseInt(request.getParameter("id"));
//                                        String a = request.getParameter("cart_id");
////                        String b = request.getParameter("category");
//                                        String b = request.getParameter("id");
////                        String d = request.getParameter("url");
//                                        String c = request.getParameter("farId");
//                                         String d = request.getParameter("quantity");
//                                         
//
//                                        if (a != null && b != null && c != null) {
//                                           
//
//                                            String sql2 = "update carttest set id='" + b + "',farId='" + c + "',quantity='" + d + "',TotalPrice='" + total + "' where cart_id='" + a + "'";
//                                            statement2.executeUpdate(sql2);

                            %>

                            <div class="card">

                                <!--                                <div class="img-box">
                                                                    <img src="./images/green-tomatoes.jpg" alt="Green tomatoes" width="80px" class="product-img">
                                                                </div>-->

                                <div class="detail">

                                    <h4 class="product-name"><%=resultSet1.getString("ProductName")%></h4>

                                    <div class="wrapper">

                                        <div class="product-qty">
                                            <button id="decrement"name="<%=resultSet1.getString("cart_id")%>">
                                                <ion-icon name="remove-outline"></ion-icon>
                                            </button>

                                            <span id="quantity"><%=resultSet1.getString("quantity")%></span>

                                            <button id="increment" name="<%=resultSet1.getString("cart_id")%>">
                                                <ion-icon name="add-outline"></ion-icon>
                                            </button>
                                        </div>

                                        <div class="price">
                                            $ <span id="price"><%=resultSet1.getString("price")%></span>
                                        </div>

<!--                                        <div class="totalandcartid">
                                            $ <span></span>
                                        </div>-->

                                    </div>

                                </div>


                                <a href='deleteCartTest.jsp?d=<%=resultSet1.getString("cart_id")%>'<button class="product-close-btn">
                                    <ion-icon name="close-outline"></ion-icon>
                                    </button></a>

                            </div>
                            <%
                                    }
//                                    int TotalPrice = Integer.parseInt(request.getParameter("TotalPrice"));
                                    String cart_id = resultSet1.getString("cart_id");
                                    String id = resultSet1.getString("id");
                                    String quantity = resultSet1.getString("quantity");
                                    String farId = request.getParameter("farId");

//                                    for (Map.Entry<Integer, Double> entry : cartIdAndTotal.entrySet()) {
//                                        Integer key = entry.getKey();
//                                        Double value = entry.getValue();
//                                        statement2 = connection.createStatement();
//                                        String sql2 = "update carttest set id='" + id + "',farId='" + farId + "',quantity='" + quantity + "',TotalPrice='" + value + "' where cart_id='" + key + "'";
//                                        statement2.executeUpdate(sql2);
//                                    }
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

                    <!--                    <div class="shipping">
                                            <span>Shipping</span> <span>$ <span id="shipping">0.00</span></span>
                                        </div>-->

                    <div class="total">
                        <span>Total</span> <span>RM<span id="total">2.15</span></span>
                    </div>

                </div>

            </div>

        </section>

    </div>

</main>






<!--
  - custom js link
-->
<script src="./scriptCartNewTest.js"></script>

<!--
  - ionicon link
-->
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

</html>