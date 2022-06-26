<%-- 
    Document   : edit
    Created on : May 31, 2021, 11:43:12 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Edit Product</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- Bootstrap CSS CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"> -->
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
        <!-- Our Custom CSS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="admin.css">

        <!-- Font Awesome JS -->
        <!-- <script src="https://kit.fontawesome.com/1f0cb49d65.js" crossorigin="anonymous"></script> -->
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

    </head>

    <body>



        <div class="wrapper">
            <!-- Sidebar Holder -->

            <nav id="sidebar">
                <div class="sidebar-header">
                   <p>MyDusun.com</p>
                </div>

                <ul class="list-unstyled components">
                          <li>
                        <a href="AdminProfile.jsp" class="text">
                            <i class=""></i>&nbsp&nbsp Profile</a>
                    </li>

<!--                    <li>
                        <a href="EditAdminProfile.jsp" class="text">
                            <i class="fas fa-edit"></i>&nbsp&nbsp Manage Profile</a>
                    </li>-->
                       <li>
                        <a href="ViewCert.jsp" class="text">
                            <i class="fas fa-edit"></i>&nbsp&nbsp View Farm Certification</a>
                    </li>
                    <li>
                        <a href="adminTest.jsp" class="text">
                            <i class=""></i>&nbsp&nbsp Terms</a>
                    </li>

                    <li>
                        <a href="EditTerms.jsp" class="text">
                            <i class="fas fa-edit"></i>&nbsp&nbsp Manage Terms</a>
                    </li>
                    <li>
                        <a href="ManageCategoryTest.jsp" class="text">
                            <i class=""></i>&nbsp&nbsp Category</a>
                    </li>

                    <li class="active">
                        <a href="editCategory.jsp" class="text">
                            <i class="fas fa-edit"></i>&nbsp&nbsp Manage Category</a>
                    </li>
                    <li>
                        <a href="ManageReadingSection.jsp" class="text">
                            <i class=""></i>&nbsp&nbsp Reading</a>
                    </li>

                    <li>
                        <a href="editReadingSection.jsp" class="text">
                            <i class="fas fa-edit"></i>&nbsp&nbsp Manage Reading</a>
                    </li>
                       <li>
                        <a href="FeedbackNewDesign.jsp" class="text">
                            <i class="fas fa-edit"></i>&nbsp&nbsp View Feedback</a>
                    </li>

                </ul>

            </nav>

            <!-- Page Content Holder -->
            <div id="content">

                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="navbar-btn">
                            <i class="fas fa-times-circle"></i>
                        </button>
                        <h4 class="align-items-center"></h4>
                    </div>
                </nav>



                <div class="container">
                    <div class="mb-4">

                    </div>
                    <div class="table-responsive mb-4 ">
                        <table class="table table-striped table-hover table-bordered ">
                            <thead class="table-dark">

                                <tr class="">
                                    <th>Product Category</th>
                                    <th>Product Name</th>
                                    <th>Product Image</th>
                                    <th>Action</th>


                                </tr>

                            </thead>
                            <tbody>
                                <%

                                    String host = "jdbc:mysql://localhost:3306/test";
                                    Connection conn = null;
                                    Statement stat = null;
                                    ResultSet res = null;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    conn = DriverManager.getConnection(host, "root", "admin");
                                    stat = conn.createStatement();
                                    String data = "SELECT tree2.ProductName, tree2.tree_id, tree2.filename, trycat.category FROM tree2 INNER JOIN trycat ON tree2.cat_id=trycat.cat_id;";
                                    res = stat.executeQuery(data);
                                    while (res.next()) {
                                        String tree_id = res.getString("tree_id");

                                %>
                                <tr class="table">
                                    <td><%=res.getString("category")%></td>
                                    <td><%=res.getString("ProductName")%></td>
                                    <td><%=res.getString("filename")%></td>





                                    <td>
                                        <a href ='editCategoryProcess.jsp?u=<%=res.getString("tree_id")%>' class="btn btn-warning">Edit</a><!-- comment -->
                                        <a href='deleteCategory.jsp?d=<%=res.getString("tree_id")%>' class="btn btn-danger">Delete</a><!-- comment -->

                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>

                    </div>

                </div>
            </div>




        </div>


    </body>

</html>
