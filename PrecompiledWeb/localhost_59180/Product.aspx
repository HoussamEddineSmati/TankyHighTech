<%@ page title="" language="C#" masterpagefile="~/User.master" autoeventwireup="true" inherits="Product, App_Web_tetqy11e" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>All Products</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End-->



    <div class="col-md-12">
        <button id="btnCart2" runat="server" class="btn btn-primary navbar-btn pull-right" onserverclick="btnCart2_ServerClick" type="button">
            Cart <span id="CartBadge" runat="server" class="badge">0 </span>
        </button>
        <h3>
            <asp:Label ID="Label1" runat="server" Text="Showing All Products"></asp:Label>
        </h3>
        <hr />

    </div>



    <asp:TextBox ID="txtFilterGrid1Record" CssClass="form-control" runat="server"
        placeholder="Search Products...." AutoPostBack="true"
        OnTextChanged="txtFilterGrid1Record_TextChanged"></asp:TextBox>
    <br />
    <hr />


    <section class="popular-items latest-padding">
        <div class="container">

            <div class="tab-content" id="nav-tabContent">
                <!-- card one -->
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <div class="row">
                        <asp:Repeater ID="rptrProducts" runat="server">
                            <ItemTemplate>
                                <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6">
                                    <div class="single-popular-items mb-50 text-center">

                                        <div class="popular-img">
                                            <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" />
                                            <div class="img-cap">
                                                <button id="btnCart2" runat="server" class="genric-btn danger e-large" onserverclick="btnCart2_ServerClick" type="button">
                                                    Add to Cart <span id="CartBadge" runat="server" class="badge">0 </span>
                                                </button>
                                            </div>
                                            <div class="favorit-items">
                                                <span class="flaticon-heart"></span>
                                            </div>
                                        </div>
                                        <div class="popular-caption">
                                            <h3><a href="product_details.html"><%# Eval ("PName") %></a></h3>
                                            <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                                <span><%# Eval ("PPrice","{0:0,00}") %> </span><%# Eval ("PSelPrice","{0:c}") %> <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %> off) </span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

