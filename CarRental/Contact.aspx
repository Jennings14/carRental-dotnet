﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CarRental__Romario_Jennings_1701071_.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container body-content">

        <div style="width:100%">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3794.1498864732275!2d-76.74587338591815!3d18.01824628770346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8edb3ed77252d65f%3A0xbe483695dda08fef!2sUniversity%20of%20Technology%2C%20Jamaica!5e0!3m2!1sen!2sjm!4v1583277156093!5m2!1sen!2sjm" width="100%" height="400" frameborder="0" style="border:0;" allowfullscreen></iframe>
        <div>
            <div class="col-md-6 float-lg-right">
                <h2 style="text-transform:capitalize">Address</h2>
                <p class="text-sm-left">237 Old Hope Road<br />Kingston 6<br />Jamaica W.I.</p>

                <h2 style="text-transform:capitalize">Call us</h2>
                <p><strong>+1(876)350-7492</strong></p>
            </div>
            <div class="col-md-6" style="display:block">
                <h2 style="text-transform:capitalize">Contact form</h2>

                <label class="col-xs-11">First Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbFirstName" runat="server" CssClass="form-control" placeholder="Jane"></asp:TextBox>
                </div>

                <label class="col-xs-11">Last Name</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbLastName" runat="server" CssClass="form-control" placeholder="Doe"></asp:TextBox>
                </div>

                <label class="col-xs-11">Email</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" placeholder="jdoe@gmail.com"></asp:TextBox>
                </div>

                <label class="col-xs-11">Subject</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbSubject" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <label class="col-xs-11">Message</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="tbMessage" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div class="col-xs-11 space-vert">
                    <asp:Button ID="btnSign" runat="server" Class="btn btn-success" Text="Send Message" />
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>
