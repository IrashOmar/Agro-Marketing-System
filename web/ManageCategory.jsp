<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.File"%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Admin System</title>
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
                    <li class="active">
                        <a href="ManageCategory.jsp" class="text">
                            <i class=""></i>&nbsp&nbsp Category</a>
                    </li>

                    <li>
                        <a href="editCategory.jsp" class="text">
                            <i class="fas fa-edit"></i>&nbsp&nbsp Manage Category</a>
                    </li>
                    <li>
                        <a href="ManageReadingSection.jsp" class="text">
                            <i class=""></i>&nbsp&nbsp Reading</a>
                    </li>

                    <li>
                        <a href="#" class="text">
                            <i class="fas fa-edit"></i>&nbsp&nbsp Manage Reading</a>
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
                <form method="post" action="FileUploadServletAdmin" id="contactform" class="contact" enctype ="multipart/form-data">
                  </div>
                        <div class="mb-3">
                        <label class="col-auto">Product</label>
                        <label for="category">Category*</label>
                                        <select id="category" name="category" class="form-control">
                                            <option value="1">Import</option>
                                            <option value="2">Locals</option>
                                            <option value="3">Vegetables</option>
                                        </select>
                    </div>                        <div class="mb-3">
                        <label for="ProductName">Product Name*</label>
                                        <select id="ProductName" name="ProductName" class="form-control">
                                            <option value="1">Apple</option>
                                            <option value="2">Banana</option>
                                            <option value="3">Broccoli</option>
                                            <option value="4">Cucumber</option>
                                            <option value="5">Durian</option><!-- comment -->
                                            <option value="6">Grape</option><!-- comment -->
                                            <option value="7">Kiwi</option><!-- comment -->
                                             <option value="8">Strawberry</option>
                                        </select>
                    </div>
            
                      <div class="mb-3">
                        <label class="col-auto">Product Image</label>
                        <input name="file" type="file" class="form-control" style="border-radius: 5px 5px 5px 5px;">
                    </div>
                  
                    <input name="submit" value="Insert Product" type="submit" class="btn btn-primary form-control">
                </form>
            </div>-->



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

z