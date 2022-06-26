<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CarRental__Romario_Jennings_1701071_.SignUp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!-- Sign Up -->
    
    <div class="container center-page" >
        <main role="main" class="pb-3"> 
            <div class="card col-md-6 shadow-sm" style="padding:15px; align-self:center">
                <h4 class="card-subtitle text-muted">Register</h4>


                <label class="col-xs-11">Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                </div>

                <label class="col-xs-11">Username</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbUname" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
                </div>

                <label class="col-xs-11">Password</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                </div>

                <label class="col-xs-11">Confirm Password</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                </div>                

                <label class="col-xs-11">Email</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                </div>

                <div class="col-xs-11 space-vert">
                    <asp:Button ID="BtSignup" runat="server" Class="btn btn-success" Text="Sign Up" OnClick="BtSignup_Click" />
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </div>
          </div>
            </main>
        </div>

</asp:Content>
