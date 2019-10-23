<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="_1601444_EC1.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <style type="text/css">
        .auto-style11 {
            display: inline-block;
            padding-top: .3125rem;
            padding-bottom: .3125rem;
            margin-right: 1rem;
            font-size: 1.25rem;
            line-height: inherit;
            white-space: nowrap;
            width: 268px;
            height: 37px;
        }

        .btn {
            background-color: #47abe6;
            text-decoration-color: #4cff00;
        }

        .container {
            margin-top: 50px;
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
                        <li class="nav-item">
                            <a class="nav-link" href="/Index.aspx">Home</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="/Products.aspx">Products</a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="#">About Us<span class="sr-only">(current)</span></a>
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

        <div class='container detail text-center '>
            <h1>About iStore</h1>
            <div class='row' style="align-content: flex-start">

                <div class='col-md-12'>

                    <p class="text-left">Jamaica's largest and most trusted digital marketplace, offering electronics, technology products and appliances.</p>
                    <p class="text-left">Our goal is to provide customers with a convenient online shopping experience from anywhere in the world. iStore makes it possible for Jamaicans at home and abroad to easily find what they want from a selection of local businesses. Our safe stress-free marketplace boasts the latest and best across every category. So, forget about sending that barrel to your family in Jamaica. Take a look at our many options and start your shopping journey with us today. We are all about your convenience.</p>
                    <h3>&nbsp;</h3>
                    <h3>Great Customer Service</h3>
                    <p class="text-left">iStore is committed to transforming the lives of our customers through friendly and professional service, technology and innovation! We are passionate about doing our part to make your life and shopping experience better.</p>
                    <h3>&nbsp;</h3>
                    <h3>Delivering the Things That Matter Most </h3>
                    <p class="text-left">
                        iStore is committed to providing you with the best possible service—and to improving it every day. We believe value is key, which is why we offer a wide range of products to suit all budgets and lifestyles.
Choose from our great range of gadgets, unlocked cell phones, laptops, tablets, small and large appliances, and much more.

Looking for a specific brand? Find and buy products from Dell, Samsung, Blackpoint, Brentwood, GE, Imperial, Black Star, HP, Frigidaire and more popular brands.
                    </p>
                    <h3>&nbsp;</h3>
                    <h3>Opening Hours</h3>
                    <p>
                        Monday to Friday: 8 am to 5 pm
                    </p>
                    <p>
                        Saturday and Sunday: Closed

                    </p>
                </div>

                <%--  <div class='col-md-4'>
                    <p>Our goal is to provide customers with a convenient online shopping experience from anywhere in the world. CoolMarket makes it possible for Jamaicans at home and abroad to easily find what they want from a selection of local businesses. Our safe stress-free marketplace boasts the latest and best across every category. So, forget about sending that barrel to your family in Jamaica. Take a look at our many options and start your shopping journey with us today. We are all about your convenience.

 </p>
                  
                </div>

                <div class='col-md-4'> 
                    <h2>More Power, More Performance, More Pro.</h2>
                </div>--%>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
