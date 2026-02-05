<%@ page title="" language="C#" masterpagefile="~/AdminMasterPage.master" autoeventwireup="true" inherits="AddProduct, App_Web_tetqy11e" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Add Product</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End-->


    <div class="container">
        <div class="form-horizontal">

            <br />
            <br />
            <h2>Add Product</h2>
            <hr />

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Proudct Name"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>


                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="SellingPrice"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtsellPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Brand"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            <br />
            <br />
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Category"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlCategory" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
            <br />
            <br />
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" AutoPostBack="true" Text="SubCategory"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>

            <br />
            <br />

            <div class="form-group">
                <asp:Label ID="Label20" runat="server" CssClass="col-md-2 control-label" Text="Quantity"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Panel ID="pnlTextBox" runat="server" >
                    <asp:Label ID="Lblsup" runat="server" CssClass="col-md-2 control-label" Text="Support processeur"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSupport" runat="server" />
                    </div>
                </asp:Panel>
            </div>
            <div class="form-group">
                <asp:Panel ID="pnlTextBox1" runat="server">
                    <asp:Label ID="Lblfre" runat="server" CssClass="col-md-2 control-label" Text="Frequence"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtfrequence" runat="server" />
                    </div>
                </asp:Panel>
            </div>
            <div class="form-group">
                <asp:Panel ID="pnlTextBox2" runat="server" >
                    <asp:Label ID="LblPort" runat="server" CssClass="col-md-2 control-label" Text="Port"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPort" runat="server" />
                    </div>
                </asp:Panel>
            </div>
            <div class="form-group">
                <asp:Panel ID="pnlTextBox3" runat="server" >
                    <asp:Label ID="LblCapac" runat="server" CssClass="col-md-2 control-label" Text="Capacity"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtCapac" runat="server" />
                    </div>
                </asp:Panel>
            </div>

            <div class="form-group">
                <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Description"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Product Details"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPDetail" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Materials and Care"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                </div>
            </div>


            <div class="form-group">

                <div class="col-md-6 ">

                    <asp:Button ID="btnAdd" CssClass="genric-btn primary-border circle arrow " runat="server" Text="ADD Product" OnClick="btnAdd_Click" />
                </div>

            </div>

        </div>

    </div>


    <div class="container">

        <hr />
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2>Product Report</h2>
            </div>
            <div class="panel-body">
                <div class="col-md-12" style="font-family: 'Bauhaus 93'">
                    <div class="form-group">
                        <div class="progress-table-wrap">
                            <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false">
                                <Columns>
                                    <asp:BoundField DataField="PID" HeaderText="S.No." />
                                    <asp:BoundField DataField="PName" HeaderText="PName" />
                                    <asp:BoundField DataField="PPrice" HeaderText="Price" />
                                    <asp:BoundField DataField="PSelPrice" HeaderText="SellPrice" />
                                    <asp:BoundField DataField="Brand" HeaderText="Brand" />
                                    <asp:BoundField DataField="CatName" HeaderText="Category" />
                                    <asp:BoundField DataField="SubCatName" HeaderText="SubCategory" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />

                                    <asp:TemplateField HeaderText="Photo">
                                        <ItemTemplate>
                                        </ItemTemplate>
                                    </asp:TemplateField>



                                </Columns>
                            </asp:GridView>
                        </div>

                    </div>

                </div>


            </div>
            <div class="panel-footer">Panel Footer</div>
        </div>

    </div>





</asp:Content>

