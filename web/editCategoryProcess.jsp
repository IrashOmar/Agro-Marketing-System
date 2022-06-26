<%-- 
    Document   : edit2
    Created on : Jun 4, 2021, 2:47:55 PM
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
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Collapsible sidebar using Bootstrap 4</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous"> -->
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
    <!-- Our Custom CSS -->
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
                <img src="../img/HajahRosnani_Logo.png" alt="logo" width="150" class="mx-2">
            </div>

            <ul class="list-unstyled components">
                <li>
                    <a href="AdminProfileCard/dist/AdminProfileCard.jsp" class="text">
                        <i class=""></i>&nbsp&nbsp Profile</a>
                </li>

                <li>
                    <a href="#" class="text">
                        <i class="fas fa-edit"></i>&nbsp&nbsp Manage Profile</a>
                </li>
                <li>
                    <a href="admin.jsp" class="text">
                        <i class=""></i>&nbsp&nbsp Terms</a>
                </li>

                <li>
                    <a href="edit.jsp" class="text">
                        <i class="fas fa-edit"></i>&nbsp&nbsp Manage Terms</a>
                </li>
                <li>
                    <a href="ManageCategory.jsp" class="text">
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
        <div id="content">

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <%
                        String host = "jdbc:mysql://localhost:3306/test";
                        Connection conn = null;
                        Statement stat = null;
                        ResultSet res = null;
                        PreparedStatement stmt = null;
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        conn = DriverManager.getConnection(host, "root", "admin");

                    %>
                    <div class="container">
                        <form method="post"  action="">
                            <%                        stat = conn.createStatement();
                                String u = request.getParameter("u");
                                //                        int num = Integer.parseInt(u);
//                                String data = "select * from tree2 where tree_id='" + u + "'";
                                String data = "SELECT tree2.ProductName, tree2.tree_id, tree2.filename, trycat.category FROM tree2 INNER JOIN trycat ON tree2.cat_id=trycat.cat_id where tree_id='" + u + "'";

                                res = stat.executeQuery(data);
                                while (res.next()) {


                            %>
                            <div class=" mb-3">
                                <label class="col-auto"> Category</label>
                                <input name="category" value='<%=res.getString("category")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                            </div>

                            <div class="mb-3">
                                <label class="col-auto">Product Name</label>
                                <!--                                <textarea name="Content"></textarea>-->
                                <input name="ProductName" value='<%= res.getString("ProductName")%>' type="text" class="form-control" style="border-radius: 50px 50px 50px 50px;" required>
                            </div>
                            <!--                            <div class=" mb-3">
                                                            <label class="col-auto"> Url</label>
                                                            <input name="url" value='' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                                                        </div> comment -->
                            <div class=" mb-3">
                                <label class="col-auto"> Image</label>
                                <input name="filename" value='<%=res.getString("filename")%>' type="text" class="form-control" style="border-radius: 5px 5px 5px 5px;" required>
                            </div>


                            <button type ="submit" class="btn btn-warning">Update</button>

                            <a href="editCategory.jsp" class="btn btn-default">Back</a>

                        </form>
                    </div>

                </div>

                <!-- jQuery CDN - Slim version (=without AJAX) -->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js " integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo " crossorigin="anonymous"></script>
                <!-- Popper.JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js " integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ " crossorigin="anonymous"></script>
                <!-- Bootstrap JS -->
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js " integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm " crossorigin="anonymous"></script>
                <script src="js/tinymce/tinymce.min.js"></script>
                <script>
                    tinymce.init({
                        selector: 'textarea'
                    });
                </script>
                <!--    <script type="text/javascript">
                        $(document).ready(function() {
                            $('#sidebarCollapse').on('click', function() {
                                $('#sidebar').toggleClass('active');
                                $(this).toggleClass('active');
                            });
                        });
                    </script>-->


                </body>

                </html>

                <%
                        String a = request.getParameter("u");
//                        String b = request.getParameter("category");
                        String b = request.getParameter("ProductName");
//                        String d = request.getParameter("url");
                        String c = request.getParameter("filename");

                        if (a != null && b != null && c != null) {
                            String query = "update tree2 set ProductName='" + b + "',filename='" + c + "' where tree_id='" + a + "'";
                          
                            stmt = conn.prepareStatement(query);

                            stmt.executeUpdate();
                            response.sendRedirect("editCategory.jsp");
                        } else {

                        }
                    }
                %>


