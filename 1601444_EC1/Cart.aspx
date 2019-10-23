<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="_1601444_EC1.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />



    <style type="text/css">
        /*.auto-style11 {
            display: inline-block;
            padding-top: .3125rem;
            padding-bottom: .3125rem;
            margin-right: 1rem;
            font-size: 1.25rem;
            line-height: inherit;
            white-space: nowrap;
            width: 268px;
            height: 37px;
        }*/

        /*.btn {
            background-color: #47abe6;
            /*text-decoration-color: #4cff00;*/
        }*/
 

        #btnShopping {
            background-color: #dcdbdb;
        }

        .container {
            margin-top: 50px;
        }
        #remove{
             background-color: #ff0000;
        }
        .auto-style1 {
            text-align: left;
            width: 204px;
        }
        .auto-style2 {
            width: 204px;
        }
        .auto-style3 {
            height: 83px;
        }
        .auto-style4 {
            width: 204px;
            height: 83px;
        }
        .auto-style5 {
            text-align: right;
            height: 83px;
            width: 228px;
        }
        .auto-style6 {
            text-align: center;
            width: 228px;
        }
        .auto-style7 {
            text-align: right;
            width: 228px;
        }
        .auto-style8 {
            width: 228px;
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
                            <a class="nav-link" href=" /Products.aspx">Products</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="/About.aspx">About Us</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Contact Us</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="/Index.aspx">Register</a>
                        </li>


                    </ul>

                </div>
                <a class="btn btn-primary btn-sm ml-3" href="/Cart.aspx">
                    <i class="fa fa-shopping-cart"></i>Cart
                    <span class="badge badge-light">
                        <asp:Label ID="ItemAmt" runat="server" Text="0"></asp:Label></span>
                </a>
            </nav>
        </div>
        <div>
            <div class="container mb-4">
                <div class="row">
                    <div class="col-12">
                        <div class="table-responsive">
                            <table class="table table-hover" id="productsTable">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col"></th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Description</th>
                                        <th scope="col" class="auto-style1">Category</th>
                                        <th scope="col" class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Price</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="Repeater1" runat="server">
    
                                        <ItemTemplate>
                                            Item <%# Container.ItemIndex + 1 %>| <%# Eval("ID1") %>
                                            <tr>
                                                 <td><%# Eval("ID1")%></td>
                                                <td>
                                                    <img src="<%# Eval("imageSrc")%>" width="70" height="80" />
                                                </td>
                                                <td ><asp:Label id="name1" runat="server" > <%# Eval("name")%></asp:Label></td>
                                                <td><%# Eval("description")%></td>
                                                <td><%# Eval("category")%></td>
                                                <td class="text-right">$<%# Eval("price")%></td>
                                                <td class="text-right">
                                                     <%--<%# Eval("Item") %>--%>
                                                   <%-- <asp:Button ID="removeBtn" class="btn btn-md btn-danger" runat="server" Text="Remove"   OnClick="RemoveItem"   />--%>
                                                    <%--<button class="btn btn-md btn-danger" id="remove" runat="server" onclick="RemoveItem">Remove</button>--%>
                                                <asp:LinkButton  class="btn btn-md btn-danger" ID="remove" OnClick="RemoveItem" runat="server" CommandArgument='<%# Eval("ID1")%>' CommandName="Edit">Remove</asp:LinkButton>
              
                                                    <%--<asp:Button ID="Button1" class="btn btn-md btn-danger" runat="server" OnClick="RemoveItem" Text="Remove" />--%>
                                                    </td>
                                            </tr>

                                        </ItemTemplate>
                                    </asp:Repeater>

                                    

                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="auto-style2"></td>
                                        <td class="auto-style8">Sub-Total</td>
                                        <td class="text-right">
                                            $<asp:Label ID="subTotal" runat="server" Text="0.0"></asp:Label>.00
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="auto-style2"></td>
                                        <td class="auto-style8">Shipping</td>
                                        <td class="text-right">
                                            $<asp:Label ID="shipping" runat="server" Text="0.0"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="auto-style2"></td>
                                        <td class="auto-style8"><strong>Total</strong></td>
                                        <td class="text-right">
                                            $<asp:Label ID="Total" runat="server" Text="0.0"></asp:Label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col mb-2">
                        <div class="row">
                            <div class="col-sm-12  col-md-6 text-right">
                               <%-- <%# Eval("name")%>                                <%# Eval("description")%>
                                <%# Eval("category")%>--%>
                            </div>
                            <div class="col-sm-12 col-md-6 text-right">
                                <button class="btn btn-lg btn-block btn-primary text-uppercase">Checkout
                                </button>
                                
                              <%--  <asp:Label ID="Label1" runat="server" Text="yo"></asp:Label>--%>
                            </div>

                        </div>
                    </div>
                </div>
            </div>


            <!-- <div class="container mb-4">
                <div class="row">
                    <div class="col-12">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col"></th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Available</th>
                                        <th scope="col" class="text-center">Quantity</th>
                                        <th scope="col" class="text-right">Price</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="https://dummyimage.com/50x50/55595c/fff" />
                                        </td>
                                        <td>Product Name Dada</td>
                                        <td>In stock</td>
                                        <td>
                                            <input class="form-control" type="text" value="1" /></td>
                                        <td class="text-right">124,90 €</td>
                                        <td class="text-right">
                                            <button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="https://dummyimage.com/50x50/55595c/fff" />
                                        </td>
                                        <td>Product Name Toto</td>
                                        <td>In stock</td>
                                        <td>
                                            <input class="form-control" type="text" value="1" /></td>
                                        <td class="text-right">33,90 €</td>
                                        <td class="text-right">
                                            <button class="btn btn-sm btn-danger"><i class="fa-trash-o"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="https://dummyimage.com/50x50/55595c/fff" />
                                        </td>
                                        <td>Product Name Titi</td>
                                        <td>In stock</td>
                                        <td>
                                            <input class="form-control" type="text" value="1" /></td>
                                        <td class="text-right">70,00 €</td>
                                        <td class="text-right">
                                            <button class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>Sub-Total</td>
                                        <td class="text-right">255,90 €</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td>Shipping</td>
                                        <td class="text-right">6,90 €</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td><strong>Total</strong></td>
                                        <td class="text-right"><strong>346,90 €</strong></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col mb-2">
                        <div class="row">
                            <div class="col-sm-12  col-md-6 text-right">
                                <%-- <button class=" btn-lg btn-block btn-light">Continue Shopping</button>--%>
                                <%--<button ID="btnShopping" class="btn btn-lg btn-block btn-secondary text-uppercase">Continue Shopping</button>--%>
                                
                             <%--   <a href="/Products.aspx">
                                   <asp:Button ID="btnShopping" class="btn  btn-lg btn-block btn-secondary text-uppercase" runat="server" Text="Continue Shopping" />
                               </a>--%>
                               </div>
                            <div class="col-sm-12 col-md-6 text-right">
                                <button class="btn btn-lg btn-block btn-success text-uppercase">Checkout</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>-->
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
        //function myCreateFunction() {
        //    var table = document.getElementById("productsTable");
        //   var row = table.insertRow(0);
        //    var cell1 = row.insertCell(0);
        //    var cell2 = row.insertCell(1);
        //    cell1.innerHTML = "NEW CELL1";
        //    cell2.innerHTML = "NEW CELL2";
        //}

        function myDeleteFunction(index) {

            var product = '<%=Session["List"]%>';
            
            
            //for (var i = 0; i < 5 ; i++) {
            //    obj = obj+""+product[i];
               
            //    if (product.indexOf(obj.id) !== -1) {
            //        product.splice(i, 1);
            //        alert(product[i] + "  was successfully deleted!");
            //        i--;
                    
            //    }
            //}
            //alert(product[0].iD1);
            //alert(index-99);
            //document.getElementById("productsTable").deleteRow(1);
        }
</script>
</body>
</html>
