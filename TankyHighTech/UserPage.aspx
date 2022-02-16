<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Page</title>
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
    <script>

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>
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
                                            <li><a href="Product.aspx"> Ram</a></li>
                                            <li><a href="#"> Disque dur</a></li>
                                            <li><a href="#"> Carte graphique</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about.aspx">Autre</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="submenu">
                                           <!-- <li><a href="login.aspx">Login</a></li>
                                            <li id =""><a href="login.aspx">Logout</a></li>-->
                                            <li><asp:HyperLink ID="btnLogin" NavigateUrl="~/login.aspx" runat="server">Login</asp:HyperLink></li>
                                            <li><asp:LinkButton ID="btnlogout" runat="server" OnClick="btnlogout_Click">logout</asp:LinkButton></li>
                                            <li><a href="cart.aspx">Cart</a></li>
                                            <li><a href="elements.aspx">Element</a></li>
                                            <li><a href="confirmation.aspx">Confirmation</a></li>
                                            <li><a href="checkout.aspx">Product Checkout</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about.aspx">about</a></li>
                                    <li><asp:Label ID="lblSuccess" runat="server" CssClass ="text-success "></asp:Label></li>
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
    </form>
</body>
</html>
