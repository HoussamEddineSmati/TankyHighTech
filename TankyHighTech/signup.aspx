<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tanky Shop | High Tech</title>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="Brave">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
<!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="Home.aspx"><img src="assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>                                                
                                <ul id="navigation">  
                                    <li><a href="Home.aspx">Home</a></li>
                                     <li><a href="#">Ordinateur</a>
                                        <ul class="submenu">
                                            <li><a href="#"> Pc Portable</a></li>
                                            <li><a href="#"> Pc fixe</a></li>
                                        </ul>
                                    </li>
                                    <li class="hot"><a href="about.aspx">Configuration Pc</a></li>
                                    <li><a href="#">Composants</a>
                                        <ul class="submenu">
                                            <li><a href="#"> Processeur</a></li>
                                            <li><a href="#"> Carte mere</a></li>
                                            <li><a href="#"> Ram</a></li>
                                            <li><a href="#"> Disque dur</a></li>
                                            <li><a href="#"> Carte graphique</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about.aspx">Autre</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="submenu">
                                            <li><a href="login.aspx">Login</a></li>
                                            <li><a href="cart.aspx">Cart</a></li>
                                            <li><a href="elements.aspx">Element</a></li>
                                            <li><a href="confirmation.aspx">Confirmation</a></li>
                                            <li><a href="checkout.aspx">Product Checkout</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about.aspx">about</a></li>
                                    <li><a href="contact.aspx">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- Header Right -->
                        <div class="header-right">
                            <ul>
                                <li>
                                    <div class="nav-search search-switch">
                                        <span class="flaticon-search"></span>
                                    </div>
                                </li>
                                <li> <a href="login.aspx"><span class="flaticon-user"></span></a></li>
                                <li><a href="cart.aspx"><span class="flaticon-shopping-cart"></span></a> </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <!-- <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div> --->
                </div>
            </div>
        </div>
        <!-- Header End -->
        



        </div>

       
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Sign Up</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================signup_part Area =================-->
        <section class="login_part section_padding ">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_text text-center">
                            <div class="login_part_text_iner">
                                <h2>Vous avez déja un compte ?</h2>
                                <p>N'attendez pas trop longtemps pour vous connecter</p>
                                <a href="login.aspx" class="btn_3">Login to Account</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_form">
                            <div class="login_part_form_iner">
                                <h3>Hello There ! <br>
                                    Please Sign up here</h3>
                             <!--    <form class="row contact_form" action="#" method="post" novalidate="novalidate">--> 
                                    <div class="col-md-12 form-group p_star">
                                        <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder=" Full Name "></asp:TextBox>
                                    </div>
                                     <div class="col-md-12 form-group p_star">
                                        <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder=" UserName "></asp:TextBox>
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                       <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Class="form-control" placeholder=" Password "></asp:TextBox>
                                    </div>
                                     <div class="col-md-12 form-group p_star">
                                       <asp:TextBox ID="txtrepass" runat="server" TextMode="Password" Class="form-control" placeholder=" Confirm Password "></asp:TextBox>
                                    </div>
                                     <div class="col-md-12 form-group p_star">
                                        <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder=" Email "></asp:TextBox>
                                    </div>
                                    
                                    <div class="col-md-12 form-group p_star">
                                    <select name="gender" tabindex="-1" class="select2-hidden-accessible" aria-hidden="true" runat="server">
                                        <option disabled="disabled" selected="selected">Gender</option>
                                        <option>Male</option>
                                        <option>Female</option>
                                        <option>Other</option></select>
                                        &nbsp;<div class="select-dropdown"></div>
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <asp:Button ID="txtsignup" Class="btn_3" runat="server" Text="SignUP" OnClick="txtsignup_Click" />
                                    </div>
                               <!--  </form>--> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================signup_part end =================-->

        <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="single-footer-caption mb-30">
                                <!-- logo -->
                                <div class="footer-logo">
                                    <a href="Home.aspx"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p>Le site le plus élegant pour les ordinateurs et les pièces de pc</p>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Products</h4>
                                <ul>
                                    <li><a href="#">Processeur</a></li>
                                    <li><a href="#">Pc Portable</a></li>
                                    <li><a href="#"> Pc Fixe</a></li>
                                    <li><a href="#"> Carte Mère</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Support</h4>
                                <ul>
                                    <li><a href="#">Terms & Conditions</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer bottom -->
                <div class="row align-items-center">
                    <div class="col-xl-7 col-lg-8 col-md-7">
                        <div class="footer-copy-right">
                            <p><!-- Link back to   can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | High Tech Home  <i class="fa fa-heart" aria-hidden="true"></i> by <a href="Home.aspx" target="_blank">TANKY SHOP</a>
  <!-- Link back to   can't be removed. Template is licensed under CC BY 3.0. --></p>               
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-4 col-md-5">
                        <div class="footer-copy-right f-right">
                            <!-- social -->
                            <div class="footer-social">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.facebook.com/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
    </form>


    <!-- JS here -->

    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>

    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    
    <!-- Scroll up, nice-select, sticky -->
    <script src="./assets/js/jquery.scrollUp.min.js"></script>
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
</body>
</html>
