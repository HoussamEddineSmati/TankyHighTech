<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Your Password</title>
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
                            <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
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
                                    <li class="hot"><a href="about.html">Configuration Pc</a></li>
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
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="cart.html">Cart</a></li>
                                            <li><a href="elements.html">Element</a></li>
                                            <li><a href="confirmation.html">Confirmation</a></li>
                                            <li><a href="checkout.html">Product Checkout</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about.aspx">about</a></li>
                                    <li><a href="contact.html">Contact</a></li>
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
                                <li> <a href="login.html"><span class="flaticon-user"></span></a></li>
                                <li><a href="cart.html"><span class="flaticon-shopping-cart"></span></a> </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->


        </div>
        <section class="login_part section_padding ">
        <div class="container">
            <div class="col-lg-6 col-md-6">
                        <div class="login_part_form">
                            <div class="login_part_form_iner">
                                <h3>Please Enter Your Email Address <br>
                                    We will send you the recovery link for your password!</h3>
                               
                                    <div class="col-md-12 form-group p_star">
                                        <asp:TextBox ID="txtEmailID" runat="server" Class="form-control" placeholder=" Your Email " ></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>

                                    </div>
                                    
                                    <div class="col-md-12 form-group">
                                        <asp:Button ID="btnResetPass"  CssClass ="btn_3 " runat="server" Text="Send" OnClick="btnResetPass_Click"  />                                        
                                        <asp:Label ID="lblResetPassMsg" CssClass ="text-success " runat="server" ></asp:Label>
                                    </div>
                                
                            </div>
                        </div>
                    </div>
        </div>
        </section>

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
                                            <a href="index.html">
                                                <img src="assets/img/logo/logo2_footer.png" alt=""></a>
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
                                            <li><a href="#">Pc Fixe</a></li>
                                            <li><a href="#">Carte Mère</a></li>
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
                                    <p>
                                        <!-- Link back to   can't be removed. Template is licensed under CC BY 3.0. -->
                                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                        All rights reserved | High Tech Home  <i class="fa fa-heart" aria-hidden="true"></i>by <a href="Home.aspx" target="_blank">TANKY SHOP</a>
                                        <!-- Link back to   can't be removed. Template is licensed under CC BY 3.0. -->
                                    </p>
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
</body>
</html>
