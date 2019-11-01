<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_1601444_EC1.WebForm2" %>

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
         #error{
             color:#CC3300;
         }
         .img-fluid{
             width: 100%;
             margin-top: 50px;
             
         }
         .btn{
           background-color: #47abe6;
         }
      
         .register-form{
         
        margin-top : 50px;
        padding: 25px 20px;
        box-shadow: 2px 2px 4px #b3b3b3;
        width:600px;
        border-radius: 5px;
        color: #313131;
      }
      .register-form h2{
        margin-top: 0px;
        margin-bottom: 15px;
        padding-bottom: 5px;
        border-radius: 10px;
         
      }
        .auto-style12 {
            left: 0px;
            top: 0px;
        }
    </style>


</head>
<body>
     <div >
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

                             <li class="nav-item">
                                <a class="nav-link" href="/About.aspx">About Us</a>
                            </li>

                             <li class="nav-item">
                                <a class="nav-link" href="/Contact.aspx">Contact Us</a>
                            </li>

                              <li class="nav-item">
                                <a class="nav-link" href="/Register.aspx">Register</a>
                            </li>   

                             <li class="nav-item active">
                                <a class="nav-link" href="#">Login<span class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                     
                    </div>
                   
                </nav>
            </div>
    <form id="form1" runat="server">
        <div>
             <div class="container img-fluid"style="background-image: url(#); ">
      <div class="row">
        <div class="auto-style12">
          <div class="register-form">
            <form action="" method="post">
              <h2 class="text-center">Login</h2>
              <div class="form-group">
                  <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" class="form-control" placeholder="Email" required="required"></asp:TextBox>
              </div>
                
              <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server"  class="form-control" TextMode="Password" placeholder="Password" required="required"></asp:TextBox>
          
              </div>
         
              <div class="row">
                <div class="col-md-12 col-xs-12">
                  <div class="form-group">
                     <%-- <div id="error" class="collapse">
                        <div class="alert alert-danger">Incorrect entry, please check your email and password and try again!</div>   
                      </div>--%>
                      <div>
                        <asp:Label ID="error" runat="server" Text=""></asp:Label>
                      </div>
                    <asp:Button ID="btnSubmit" class="btn btn-block btn-lg"  runat="server" Text="Login"   data-toggle="collapse" data-target=".collapse" OnClick="btnSubmit_Click" />
                   </div>
                </div>
            
              </div>
            </form>
          </div>
        </div>
        <%--  <div class="col-md-6 col-sm-8 col-xs-12 col-md-offset-1 col-sm-offset-2 ">
                <img ID="Image2"  src="~/Images/background.jpg" runat="server"   class="img-fluid" alt="image">
          
          </div>--%>
      </div>
     
    </div>
        </div>
    </form>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
</body>
</html>
