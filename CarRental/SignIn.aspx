<%@ Page Title="Sign In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="CarRental__Romario_Jennings_1701071_.SignIn" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <!--- Sign in start  -->
    <div class="container">
                   <br />
        <main role="main" class="pb-3"> 
            <div class="card col-md-6 shadow-sm" style="padding:15px; align-self:center">
            <h2  class="card-subtitle text-muted">User Login</h2>
            <div class="col-md-12">


            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                <div class="col-xs-11">
                    <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                <div class="col-xs-11">
                    <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                </div>
            </div>
           <br />
            <div class="form-group">
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="Button1_Click"/>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6">
                    <asp:LinkButton ID="lbForgotPass" runat="server" PostBackUrl="~/ForgotPassword.aspx">Forgot Password !</asp:LinkButton>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-6">
                    <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                </div>
            </div>
           </div>
        </div>
        </main>
    </div>
    <!--- Sign in end  -->
</asp:Content>
