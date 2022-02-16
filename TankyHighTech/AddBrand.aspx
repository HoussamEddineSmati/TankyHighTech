<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Ajouter Marque</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->

    <div class ="container">
       <div class ="form-horizontal">
           
           <br />
           <br />
           <h2>Add Product</h2>
           <hr />

           <div class ="form-group">
               <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="Nom de Marque"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="txtBrand" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName" runat="server" CssClass ="text-danger " ErrorMessage="*plz Enter Brandname" ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator>
               </div>
           </div>

           <div class ="form-group">
                    
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnAddBrand" CssClass ="genric-btn primary-border circle arrow " runat="server" Text="Ajouter Marque" OnClick="btnAddBrand_Click"  />
                        </div>
                    
           </div>
           </div>
         <h1>Brands</h1>
        <hr />

 <div class="panel panel-default ">

               <div class="panel-heading"> Toute les Marques</div>


     <asp:repeater ID="rptrBrands" runat="server">

         <HeaderTemplate>
             <table class="table table-dark table-hover table-striped">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Brand</th>
                        <th>Edit</th>

                    </tr>
                </thead>
            <tbody>
         </HeaderTemplate>
         <ItemTemplate>
             <tr>
                    <th> <%# Eval("BrandID") %> </th>
                    <td><%# Eval("Name") %>  </td>
                 
                   <!-- <td><img class="col-sm-1" src="https://picsum.photos/id/237/200/300" alt=""/><span class="col"><%# Eval("Name") %>  </span> </td>-->
                    <td>Edit</td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>
     </asp:repeater>
                            </div>

        </div>
</asp:Content>

