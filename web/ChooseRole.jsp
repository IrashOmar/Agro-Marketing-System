<%-- 
    Document   : ChooseRole
    Created on : May 31, 2022, 12:29:35 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>CodePen - CSS only responsive article card with hover effect</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
        <link rel="stylesheet" href="./RoleStyle.css">

    </head>
    <body>
        <!-- partial:index.partial.html -->
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&family=Roboto:wght@300&display=swap" rel="stylesheet">




        <div class="container">

            <div class="card">
                <figure class="card__thumb">
                    <img src="img/BuyerRole.jpg" alt="Picture by Kyle Cottrell" class="card__image">
                    <figcaption class="card__caption">
                        <br><br><br>
                        <h2 class="card__title">Buyer</h2>
                        <p class="card__snippet">Start owning a fruit trees and enjoy the profit out of it.</p>
                        <a href="LoginBuyer.jsp" class="card__button">Log In</a><br><br><br>
                        <a href="BuyerRegistration.jsp" class="card__button">Register</a>
                    </figcaption>
                </figure>
            </div>
            
            
            
            <div class="card">
                <figure class="card__thumb">
                    <img src="img/FarmerRoleResize.jpg" alt="Picture by Nathan Dumlao" class="card__image">

                    <figcaption class="card__caption">
                        <br><br><br>
                        <h2 class="card__title">Farmer</h2>
                        <p class="card__snippet">Manage people's tree and contribute to our country's economy.</p>
                        <a href="LoginFarmer.jsp" class="card__button">Log In</a><br><br><br>
                        <a href="FarmerRegistration.jsp" class="card__button">Register</a>

                    </figcaption>
                </figure>
            </div>
<!--
            <div class="card">
                <figure class="card__thumb">
                    <img src="img/AdminRole.jpg" alt="Picture by Daniel Lincoln" class="card__image">
                    <figcaption class="card__caption">
                        <br><br><br>
                        <h2 class="card__title">Admin</h2>
                        <p class="card__snippet">Help manage and maintain this system to its best.</p>
                         <a href="LoginFarmer.jsp" class="card__button">Log In</a><br><br><br>
                        <a href="FarmerRegistration.jsp" class="card__button">Register</a>
                    </figcaption>
                </figure>
            </div>-->
        </div>

        <!--<p class="disclaimer">All pictures were taken from <a class="disclaimer__link" href="https://unsplash.com/" target="_blank">Unsplash.</a></p>-->
        <!-- partial -->

    </body>
</html>
