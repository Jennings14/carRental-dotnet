<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="CarRental__Romario_Jennings_1701071_.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row" style="padding-top: 50px">
            <div class="col-md-5">
                <asp:Repeater ID="rptrProductImages" runat="server">
                    <ItemTemplate>
                        <div style="max-width: 480px" class="thumbnail">
                          <img class="d-block w-100" src="Images/ProductImage/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'" />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            <div class="col-md-7">
                <asp:Repeater ID="rptrProductDetails" runat="server">
                    <ItemTemplate>
                        <div class="divDet1 pt-2">
                            <h1 class="proNameView"><%#Eval("PName") %></h1>
                            <p class="proUnitPriceView"><%#Eval("PUnitPrice","{0:c}") %></p>
                        </div>
                        <div class="divDet1">
                            <asp:Button ID="btnAddToCart" onclick="btnAddToCart_Click" CssClass="mainButton" runat="server" Text="ADD TO CART" />
                            <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                        </div>
                        <div class="divDet1">
                            <h5 class="h5Size">Category</h5>
                            <p>
                                <%#Eval("PCategory") %>
                            </p>
                            <h5 class="h5Size">Description</h5>
                            <p>
                                <%#Eval("PDescription") %>
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>                       
    </div>
   </div>
</asp:Content>
