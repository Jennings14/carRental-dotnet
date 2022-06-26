<%@ Page Title="Cart" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="CarRental__Romario_Jennings_1701071_.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
    <div class="row" style="padding-top: 20px;">
        <div class="col-md-9">
            <h5 class="proNameViewCart" runat="server" id="h5NoItems"></h5> 
            <asp:Repeater ID="rptrCartProducts" runat="server">
                    <ItemTemplate>
            <div class="media my-3" style="border: 1px solid #eaeaec;">
                        <div class="align-self-center mr-3">
                            <a href="ProductView.aspx?PID=<%#Eval("PID") %>" target="_blank">
                                <img width="110px" class="media-object" src="Images/ProductImage/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">
                            </a>
                        </div>
                        <div class="media-body">
                            <h5 class="media-heading proNameViewCart"><%#Eval("PName") %></h5>
                            <span class="proPriceView"><%#Eval("PUnitPrice","{0:c}") %></span>
                            <p>
                                <asp:Button CommandArgument='<%#Eval("PID") %>' ID="btnRemoveItem" onclick="btnRemoveItem_Click" CssClass="removeButton" runat="server" Text="REMOVE" />
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>                            
        </div>
        <div class="col-md-3 pt-5" runat="server" id="divPriceDetails">
            <div style="border-bottom: 1px solid #eaeaec;">
                <h5 class="proNameViewCart">PRICE DETAILS</h5>
                <div class="proPriceView">
                    <label>Total</label>
                    <span class="float-right priceGray" id="spanCartTotal" runat="server"></span>
                </div>
            <div>
                <asp:Button ID="btnBuyNow"  CssClass="buyNowBtn" runat="server" Text="BUY NOW" />
            </div>
        </div>
    </div>
</div>

</asp:Content>
