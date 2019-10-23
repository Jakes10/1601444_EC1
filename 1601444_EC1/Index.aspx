<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_1601444_EC1.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />


    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .page-footer {
            margin-top: 300px;
            background-color: rgba(0, 0, 0, 0.3);
        }


        .img-with-text {
            text-align: justify;
        }

        .carousel {
            height: 450px;
        }



        .carousel-control-prev-icon, .carousel-control-next-icon {
            background-color: rgba(0, 0, 0, 0.3);
            background-size: 100%, 100%;
            border-radius: 50%;
            border: 1px solid black;
        }

        h2 {
            font-size: 25px;
        }


        .d-block {
            height: 683px;
            /*margin-right: 200px;
            margin-left: 200px;*/
        }

        .detail {
            /*margin-right: 1rem;*/
            margin-top: 40px;
        }

        .auto-style2 {
            font-size: x-large;
        }

        .auto-style3 {
            width: 100%;
        }

        .auto-style6 {
            height: 22px;
            text-align: left;
            background-color: #f3f3f3;
        }

        .auto-style8 {
            text-align: left;
        }

        .auto-style10 {
            width: 89px;
        }

        .auto-style11 {
            display: inline-block;
            padding-top: .3125rem;
            padding-bottom: .3125rem;
            /*margin-right: 1rem;*/
            font-size: 1.25rem;
            line-height: inherit;
            white-space: nowrap;
            width: 268px;
            height: 37px;
        }

        .auto-style12 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="auto-style11" href="/Index.aspx">
                        <asp:Image ID="Image1" runat="server" Height="44px" ImageUrl="~/Images/logo.png" Width="183px" />
                    </a>


                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">

                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active"></li>
                            <li class="nav-item active">
                                <a class="nav-link" href="/Index.aspx">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/Products.aspx">Products</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="/About.aspx">About Us</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="/Contact.aspx">Contact Us</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" href="/Register.aspx">Register</a>
                            </li>
                        </ul>

                    </div>
                </nav>
            </div>
       
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images\slide1.jpg" class="d-block w-100" alt="..." style="height: 450px">
                </div>
                <div class="carousel-item">
                    <img src="Images\slide2.jpg" class="d-block w-100" alt="..." style="height: 450px">
                </div>
                <div class="carousel-item">
                    <img src="Images\slide3.jpg" class="d-block w-100" alt="..." style="height: 450px">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        -
           <%-- <div class="col-xs-12  col-lg-12">
                <div class="row">
                    <div class="col-xs-4 col-md-4">
                        <img src="Images\product1.jpg" class="img-responsive" alt="Logo" style="height: 90px; width: 80px">
                    </div>
                    <div class="col-xs-4 col-md-4">
                        <img src="Images\product2.jpg" class="img-responsive" alt="Logo" style="height: 90px; width: 80px">
                    </div>
                    <div class="col-xs-4 col-md-4">
                        <img src="Images\product3.jpg" class="img-responsive" alt="Logo" style="height: 90px; width: 80px">
                    </div>

                </div>
            </div>--%>

        <%-- next images --%>
        <div class='container detail text-center'>
            <div class='row'>
                <div class='col-md-4'>
                    <img class='img-circle img-with-tex' src="Images\detail1.jpg" style="height: 100px; width: 100px" />
                    <h2>Just the right Amount if everything.</h2>
                </div>

                <div class='col-md-4'>
                    <img class='img-circle' src="Images\detail3.jpg" style="height: 100px; width: 100px" />
                    <h2>Welcome to the new generation of iPhone.</h2>
                </div>

                <div class='col-md-4'>
                    <img class='img-circle' src="Images\detail2.jpg" style="height: 100px; width: 100px" />
                    <h2>More Power, More Performance, More Pro.</h2>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="page-footer font-small unique-color-dark pt-4">

            <!-- Footer Elements -->
            <div class="container">

                <!-- Call to action -->
                <ul class="list-unstyled list-inline text-center py-2">
                    <%-- <li class="list-inline-item">
                            <h5 class="mb-1">Register for free</h5>
                        </li>--%>
                    <li class="list-inline-item ">
                        <a href="/Register.aspx" class="btn btn-outline-white btn-rounded">Sign up!</a>
                    </li>
                </ul>
                <!-- Call to action -->

            </div>
            <!-- Footer Elements -->

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">
                © 2018 Copyright:
    <a href="https://mdbootstrap.com/education/bootstrap/">istore   .com</a>
            </div>
            <!-- Copyright -->

        </footer>
        <!-- Footer -->
        <%-- >  <table class="auto-style3">
                <tr>
                    <td class="auto-style6"><span class="auto-style12"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hi </em></span><em>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style12">User</asp:Label>
                    </em><span class="auto-style12"><em>, Welcome.</em></span></td>

                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>

                </tr>
                <tr>
                    <td>&nbsp;</td>

                </tr>
            </table>

            <span class="auto-style2"><em>
                <br />
            </em></span>
        </div>
        <div class="bd-example">

                   <table class="auto-style3">
            <tr>
                <td class="text-left">Registered Users:
                <asp:Label ID="userAmt" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

        </table>--%>
    </form>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
