<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="_1601444_EC1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
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
                            <a class="nav-link" href="/Index.aspx">Home </a>
                        </li>

                        <li class="nav-item active">
                            <a class="nav-link" href="/Products.aspx">Products<span class="sr-only">(current)</span></a>
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
                    '
                        
                </div>
                  <a class="btn btn-success btn-sm ml-3" href="/Cart.aspx">
                    <i class="fa fa-shopping-cart"></i>Cart
                    <span class="badge badge-light"><asp:Label ID="ItemAmt" runat="server" Text="0"></asp:Label></span>
                </a>
                <%--   <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="width: 28%; margin-left: 190`px; margin-bottom: 5px">
                            <button class="btn  my-2 my-sm-0" type="submit"; tabindex="-1">Search</button>--%>
            </nav>
        </div>
        <div class="container">
            <%-- <div class="row">
                <div class="col">
                    <asp:Image ID="Image2" runat="server" Height="332px" ImageUrl="/Images/product1.jpg" Width="268px" />
                </div>
                <div class="col-6">
                    name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <br />
                    description :<br />
                    category&nbsp;&nbsp;&nbsp;&nbsp; : 
                        <br />
                    price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <br />
                    <br />
                    <%--<asp:Button ID="Button1" runat="server" Text="Add to Cart" />--%
                    <asp:Button ID="btnSubmit" class="btn  my-2 my-sm-0" runat="server" Text="Add to Cart" OnClick="Button1_Click" />

                </div>
                <div class="col">
                </div>
            </div>--%>
            <div class="row">
                <div class="col">
                    <asp:Image ID="Image2" runat="server" Height="327px" ImageUrl="/Images/product1.jpg" Width="243px" />
                </div>
                <div class="col-6">
                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="name_P1" runat="server" Text="iPhone XS"></asp:Label>
                    <br />
                    Description&nbsp; :
                    <asp:Label ID="description_P1" runat="server" Text="Label"></asp:Label>
                    <br />
                    Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="category_P1" runat="server" Text="iPhone"></asp:Label>
                        <br />
                    Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $<asp:Label ID="price_P1" runat="server" Text="1000.00"></asp:Label>
                    <br />
                    <br />
                    <%--<asp:Button ID="Button1" runat="server" Text="Add to Cart" />--%>
                    <asp:Button ID="product1Btn" class="btn  my-2 my-sm-0" runat="server"  Text="Add to Cart" OnClick="Button1_P1" />

                </div>
                <div class="col">
                </div>
            </div>
             <hr />
            <div class="row">
                <div class="col">
                    <asp:Image ID="Image" runat="server" Height="358px" ImageUrl="/Images/product2.jpg" Width="251px" />
                </div>
                <div class="col-6">
                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:Label ID="name_P2" runat="server" Text="iPhone XR"></asp:Label>
                    <br />
                    Description :<asp:Label ID="description_P2" runat="server" Text="Label"></asp:Label>
                    <br />
                    Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <asp:Label ID="category_P2" runat="server" Text="iPhone"></asp:Label>
                        <br />
                    Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $<asp:Label ID="price_P2" runat="server" Text="750.00"></asp:Label>
                    <br />
                    <br />
                    <%--<asp:Button ID="Button1" runat="server" Text="Add to Cart" />--%>
                    <asp:Button ID="Button" class="btn  my-2 my-sm-0" runat="server" Text="Add to Cart" OnClick="Button1_P2"  />

                </div>
                <div class="col">
                </div>
            </div>
             <hr />
            <div class="row">
                <div class="col">
                    <asp:Image ID="Img" runat="server" Height="332px" ImageUrl="/Images/product3.jpg" Width="268px" />
                </div>
                <div class="col-6">
                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="name_P3" runat="server" Text="iPhone 8"></asp:Label>
                    <br />
                    Description&nbsp; :
                    <asp:Label ID="description_P3" runat="server" Text="Label"></asp:Label>
                    <br />
                    Category&nbsp;&nbsp; &nbsp;&nbsp; :
                    <asp:Label ID="category_P3" runat="server" Text="iPhone"></asp:Label>
                        <br />
                    Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $<asp:Label ID="price_P3" runat="server" Text="600.00"></asp:Label>
                    <br />
                    <br />
                    <%--<asp:Button ID="Button1" runat="server" Text="Add to Cart" />--%>
                    <asp:Button ID="Btn" class="btn  my-2 my-sm-0" runat="server" Text="Add to Cart"  OnClick="Button1_P3"    />

                </div>
                <div class="col">
                   
                </div>
            </div>
             <hr />
            <div class="row">
                <div class="col">
                    <asp:Image ID="Imge" runat="server" Height="332px" ImageUrl="/Images/product4.jpg" Width="268px" />
                </div>
                <div class="col-6">
                    Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:Label ID="name_P4" runat="server" Text="iPhone 11"></asp:Label>
                    <br />
                    Description&nbsp; :<asp:Label ID="description_P4" runat="server" Text="Label"></asp:Label>
                    <br />
                    Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                        <asp:Label ID="category_P4" runat="server" Text="iPhone"></asp:Label>
                        <br />
                    Price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : $<asp:Label ID="price_P4" runat="server" Text="1020.00"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button17" class="btn  my-2 my-sm-0" runat="server" Text="Add to Cart"   OnClick="Button1_P4"   />

                </div>
                <div class="col">
                </div>
            </div>
        </div>



        <!--    <div class="table-responsive">
            
            <table class="auto-style1 table ">
                <tr>
                    <td class="auto-style12">
                        
                    </td>
                    <td>name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br />
                        description :<br />
                        category&nbsp;&nbsp;&nbsp;&nbsp; :
                        <br />
                        price&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br />
                        <asp:Button ID="Button1" runat="server" Text="Add to Cart" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><asp:Image ID="Image3" runat="server" Height="350px" ImageUrl="/Images/product2.jpg" Width="318px" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><asp:Image ID="Image4" runat="server" Height="304px" ImageUrl="/Images/product3.jpg" Width="269px" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12"><asp:Image ID="Image5" runat="server" Height="303px" ImageUrl="/Images/product4.jpg" Width="271px" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>-->
    </form>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
