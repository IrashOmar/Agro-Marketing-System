<%-- 
    Document   : BuyerRegistration
    Created on : May 31, 2022, 12:31:38 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="Registrationvendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="Registrationvendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="Registrationvendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="Registrationvendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="Registration.css" rel="stylesheet" media="all">
    
    
    
    
    
    
    
  <script type="text/javascript">
function CheckRole(val)
{
    if(val==="2")
       document.getElementById('file').style.display='block';
    else
       document.getElementById('file').style.display='none'; 
}

</script>
    
</head>

<body style="">
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Buyer Registration</h2>
                    <form action="BuyerRegistrationProcess.jsp" method="post" enctype="">
                        <div class="row row-space">
                              <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="name">
                                </div>
                            </div>
                                <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Password</label>
                                    <input class="input--style-4" type="text" name="password">
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Identity Card </label>
                                    <input class="input--style-4" type="text" name="ic">
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                           <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Address </label>
                                    <input class="input--style-4" type="text" name="address">
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="gender" value="M">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio" name="gender" value="F">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
<!--                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email">
                                </div>
                            </div>-->
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="phone">
                                </div>
                            </div>
                        </div>
<!--                         <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Farm Cert</label>
                                    <input class="input--style-4" type="file" name="file">
                                </div>
                            </div>-->
<!--                        <div class="input-group">
                            <label class="label">Role</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="file" onchange='CheckRole(this.value);'>
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option value="1">Buyer</option>
                                    <option value="2">Farmer</option>
                                    <option>Subject 3</option>
                                </select>
                                   <div class="col-2">
                                <div class="input-group">
                                    <label class="label" >Upload Certificate</label>
                                   
                                </div>
                            </div>
                                <div class="select-dropdown"></div>-->
                            </div>
                            
                        </div>
                        
<!--                         <input class="input--style-4" type="file" name="role" id="role" style="display:none " placeholder="Upload Farm Certification">
                     -->
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
<!--            </div>
        </div>-->
    </div>

    <!-- Jquery JS-->
    <script src="Registrationvendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="Registrationvendor/select2/select2.min.js"></script>
    <script src="Registrationvendor/datepicker/moment.min.js"></script>
    <script src="Registrationvendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="Registrationjs/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
