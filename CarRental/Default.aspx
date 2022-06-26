<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CarRental__Romario_Jennings_1701071_._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner" >
        <div class="carousel-item active">
        <img src="Images/Carousel 1.jpg" class="d-block w-100" height="600" alt="...">
        <div class="carousel-caption d-none d-md-block">
            <h5>Chevrolet Camaro</h5>
        </div>
        </div>
        <div class="carousel-item">
        <img src="Images/Carousel 2.jpg" class="d-block w-100" height="600" alt="...">
        <div class="carousel-caption d-none d-md-block">
            <h5>Mercades Benz</h5>
        </div>
        </div>
        <div class="carousel-item">
        <img src="Images/Carousel 3.jpg" class="d-block w-100" height="600" alt="...">
        <div class="carousel-caption d-none d-md-block">
            <h5>BMW</h5>
        </div>
        </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"  data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"  data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
        </button>
    </div>
        <!--- Carousel -->
        <!--- Middle Contents -->
        <div class="container body-content">
              <div class="container center">
                <br/>
                <br/>
                <br/>
                <br/>
                <div class="row">
                <div class="col-md-4">
                    <h2 class="service-heading">New Models</h2>
                    <p>
                        Xclusiv Rentals offers the latest vehicles to its customers.
                        From Mazda, BMW, Toyota, Hyundia, Benz and all the rest, We offer a luxurious experience.
                    </p>
                    <p>
                        <a class="btn btn-default" href="Product.aspx">Check them out &raquo;</a>
                    </p>
                </div>
                <div class="col-md-4 inner">
                    <h2 class="service-heading">Discounts</h2>
                    <p class="inner-area">
                        We offer customers a 15% discount on cars rented for 5 days or more.
                    </p>
                    <p>
                        <a class="btn btn-default" href="Product.aspx">Start saving now &raquo;</a>
                    </p>
                </div>
                <div class="col-md-4">
                    <h2 class="service-heading">Reservations</h2>
                    <p>
                        We afford our customers the ability to make a reservation on our luxurious cars so they are always satisfied.
                    </p>
                    <p>
                        <a class="btn btn-default" href="Product.aspx">Make your reservation now &raquo;</a>
                    </p>
                </div>
            </div>
                <br/>
                <br/>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="Images/Prod 1.png" alt="thumb01" height="250" />
                            <div class="card-body">
                                <h5 class="card-title">Camaro SS</h5>
                                <p class="card-text">ID#: 170</p>
                                <p class="card-text">Description: This is pure adrenaline. From its iconic shape to the agile, quick-to-respond handling, everything about the 2021 Camaro is equipped to deliver high-performance thrills.</p>
                                <p class="card-text">Category: Sedan</p>
                                <p class="card-text">Price: $15000 Per day</p>
                                <a href="Product.aspx" class="btn btn-primary">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="Images/Prod 2.png" alt="thumb01" height="250" />
                            <div class="card-body">
                                <h5 class="card-title">Mercedes Benz AMG</h5>
                                <p class="card-text">ID#: 160</p>
                                <p class="card-text">It's getting harder to find a car in the compact-luxury class with ridiculous levels of performance, but the 2021 Mercedes-AMG C63 is a delightful option.</p>
                                <p class="card-text">Category: Coupe</p>
                                <p class="card-text">Price: $25000 Per day</p>
                                <a href="Product.aspx" class="btn btn-primary">More Details</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="Images/Prod 3.png" alt="thumb01" height="250" />
                            <div class="card-body">
                                <h5 class="card-title">BMW Series 1</h5>
                                <p class="card-text">ID#: 150</p>
                                <p class="card-text">The BMW M5 is a high performance variant of the BMW 5 Series marketed under the BMW M sub-brand.</p>
                                <p class="card-text">Category: HatchBack</p>
                                <p class="card-text">Price: $20000 Per day</p>
                                <a href="Product.aspx" class="btn btn-primary">More Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>  
        </div>

</asp:Content>
