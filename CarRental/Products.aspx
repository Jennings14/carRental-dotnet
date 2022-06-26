<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CarRental__Romario_Jennings_1701071_.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container row">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
                <div class="card" style="width: 18rem;">
                    <a style="text-decoration:none;" href="ProductView.aspx?PID=<%#Eval("PID") %>">
                    <img src="Images/ProductImage/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" class="card-img-top" alt="<%#Eval("Name") %>" height="250" width="500">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item proName"><a>Name: </a><%#Eval("PName") %></li>
                        <li class="list-group-item proDescription"><a>Description: </a><%#Eval("PDescription") %></li>
                        <li class="list-group-item proCategory"><a>Category: </a><%#Eval("PCategory") %></li>
                        <li class="list-group-item proUnitPrice"><a>Unit Price: </a><%#Eval("PUnitPrice","{0:c}") %></li>
                    </ul>
                    <div class="card-body">
                        <a href="ProductView.aspx?PID=<%#Eval("PID") %>" class="card-link">More Details</a>
                        <a href="#" class="card-link">Another link</a>
                    </div>
                    </a>
                  </div>
                <br />
              </ItemTemplate>
          </asp:Repeater>
      </div>
</asp:Content>
