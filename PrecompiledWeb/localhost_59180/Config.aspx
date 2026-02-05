<%@ page title="" language="C#" masterpagefile="~/User.master" autoeventwireup="true" inherits="Config, App_Web_tetqy11e" %>

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
                            <h2>Configuration Pc</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End-->

    <div class="container">
        <div class="form-horizontal">

            <div class="form-group">
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCpu" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCpu_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-3">
                    <asp:TextBox ID="txtCpu" runat="server"></asp:TextBox>
                </div>
            </div>
                <br />
                <br />
            <div class="form-group">
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlMotherBoard" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMotherBoard_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
                <br />
                <br />
            <div class="form-group">
                <div class="col-md-3">
                    <asp:TextBox ID="txtMB" runat="server"></asp:TextBox>
                </div>
            </div>
                <br />
                <br />
            <div class="form-group">
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlRam" runat="server"></asp:DropDownList>
                </div>
            </div>
                <br />
                <br />
            <div class="form-group">
                <div class="col-md-3">
                    <asp:TextBox ID="Txtram" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>


</asp:Content>

