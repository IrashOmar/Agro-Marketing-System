<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>CodePen - Material Design: Profile Card</title>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css'><link rel="stylesheet" href="./AdminStyle.css">

    </head>
    <body>
        <!-- partial:index.partial.html -->
        <%

            try {
                String host = "jdbc:mysql://localhost:3306/test";
                Connection conn = null;
                Statement stat = null;
                ResultSet res = null;
                String Aid = request.getParameter("Aid");
                String Aemail = request.getParameter("Aemail");
                String Aname = request.getParameter("Aname");
                String Aphone = request.getParameter("Aphone");

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(host, "root", "admin");
                stat = conn.createStatement();
                String data = "select * from adminregistration";
                res = stat.executeQuery(data);
                while (res.next()) {
                    //                                String filename = res.getString("filename");

        %>
        <aside class="profile-card">
            <header>
                <!-- here?s the avatar -->
                <a target="_blank" href="#">
                    <img src="http://lorempixel.com/150/150/people/" class="hoverZoomLink">
                </a>

                <!-- the username -->
                <h1>
                    <%=res.getString("Aname")%>
                </h1>

                <!-- and role or location -->
                <h2>
                    <%=res.getString("Aemail")%>
                </h2>
                <h2>
                    <%=res.getString("Aphone")%>
                </h2>

            </header>

            <!-- bit of a bio; who are you? -->
            <div class="profile-bio">

                <p>
                    It takes monumental improvement for us to change how we live our lives. Design is the way we access that improvement.
                </p>
                
              

            </div>
             
            <!-- some social links to show off -->
            <ul class="profile-social-links">
                <li>
                    <a target="_blank" href="https://www.facebook.com/creativedonut">
                        <i class="fa fa-facebook"></i>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="https://twitter.com/dropyourbass">
                        <i class="fa fa-twitter"></i>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="https://github.com/vipulsaxena">
                        <i class="fa fa-github"></i>
                    </a>
                </li>
                <li>
                    <a target="_blank" href="https://www.behance.net/vipulsaxena">

                        <i class="fa fa-behance"></i>
                    </a>
                </li>
                  <a href ='editAdminProfile.jsp?u=<%=res.getString("Aid")%>' class="btn btn-sm btn-primary">Edit&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </ul>
          
        </aside>
                 
        <%
                }
            } catch (NullPointerException e) {
                System.out.println("Error at detail: " + e.getStackTrace().toString());
                e.printStackTrace();
            }
        %>
        <!-- partial -->

    </body>
</html>
