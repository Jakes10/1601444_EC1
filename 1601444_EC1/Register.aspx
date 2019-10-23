<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="_1601444_EC1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title> 
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!--Bootstrap CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    
   
    <style type="text/css">
      
        .auto-style9 {
            color: #CC3300;
        }
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
    <form id="form1" runat="server">
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

                             <li class="nav-item active">
                                <a class="nav-link" href="#">Register<span class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                     
                    </div>
                   
                </nav>
            </div>
          <div class="container img-fluid"style="background-image: url('/Images/background1.jpg'); ">
      <div class="row">
        <div class="auto-style12">
          <div class="register-form">
            <form action="" method="post">
              <h2 class="text-center">Registration</h2>
              <div class="row">
                <div class="col-md-6 col-xs-12">
                  <div class="form-group">

                    <%--<input type="text" name="first_name" class="form-control" placeholder="First Name" required="required">--%>
                       <asp:TextBox ID="txtFirstName" runat="server" class="form-control" placeholder="First Name" required="required"></asp:TextBox>
                  </div>
    
                </div>
                <div class="col-md-6 col-sm-8 col-xs-12 col-md-offset-1 col-sm-offset-2 ">
                  <div class="form-group">
                    <%--<input type="text" name="last_name" class="form-control" placeholder="Last Name" required="required">--%>
                          <asp:TextBox ID="txtLastName" runat="server"  class="form-control" placeholder="Last Name" required="required"></asp:TextBox>
                  </div> 
                </div>     
              </div>
              <div class="form-group">
                <%--<input type="email" name="email" class="form-control" placeholder="Email" required="required">--%>
                  <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" class="form-control" placeholder="Email" required="required"></asp:TextBox>
              </div>
                <div class="form-group">
                <%--<input type="date" name="dob">--%>
                   <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"  class="form-control" placeholder="DOB" required="required"  ></asp:TextBox>
                     
                    </div>
                <div class=" form-group">
                     <asp:RangeValidator class="collapse" ID="RangeValidator1" runat="server" data-toggle="collapse" ControlToValidate="txtDOB" ErrorMessage="Must be older than 18 years old." ForeColor="#CC3300" MaximumValue="2001-09-01" MinimumValue="1960-01-01"></asp:RangeValidator>
                </div>
                <div class="form-group">
                <%--<input type="number" name="mobile" >--%>
                          <asp:TextBox ID="txtMobile" runat="server" TextMode="Number" class="form-control" placeholder="Phone Number" required="required"></asp:TextBox>
              </div>
                <%--<div class="collapse form-group">
                     <asp:RegularExpressionValidator  ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="Invalid mobile number" CssClass="auto-style9" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                         
                </div>--%>
              <div class="form-group">
                <%--<input type="password" name="password" class="form-control" placeholder="Password" required="required">--%>
                <asp:TextBox ID="txtPassword" runat="server"  class="form-control" TextMode="Password" placeholder="Password" required="required"></asp:TextBox>
          
              </div>
              <div class="form-group">
                 <%--<input type="password" name="confirm_password" class="form-control" placeholder="Confirm Password" required="required">--%>
                   <asp:TextBox ID="txtConfirmPassword" runat="server"  class="form-control" TextMode="Password" placeholder="Confirm Password" required="required"></asp:TextBox>
              </div>  
                <div class="collapse form-group">
                      <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" CssClass="auto-style9" ErrorMessage="Passwords do not match."></asp:CompareValidator>
      
                </div>
            <%--  <div class="form-group">
                <label class="checkbox-inline">
                  <input type="checkbox" required="required"> You agree to the <a href="#">Terms</a> & <a href="#">Conditions</a>.
                </label>
              </div>--%>
              <div class="row">
                <div class="col-md-12 col-xs-12">
                  <div class="form-group">
                    <%--<input type="submit"   value="Register" class="btn btn-primary btn-block btn-lg" tabindex="7"  >--%>
                    <asp:Button ID="btnSubmit" class="btn btn-block btn-lg"  runat="server" Text="Register" OnClick="Button1_Click" data-toggle="collapse" data-target=".collapse" />
                         
                      </div>
                </div>
               <%-- <div class="col-md-6 col-xs-12">
                  <div class="form-group">
                    <a href="#" class="btn btn-success btn-block btn-lg">Sign In</a>
                  </div>
                </div>--%>
              </div>
            </form>
          </div>
        </div>
        <%--  <div class="col-md-6 col-sm-8 col-xs-12 col-md-offset-1 col-sm-offset-2 ">
                <img ID="Image2"  src="~/Images/background.jpg" runat="server"   class="img-fluid" alt="image">
          
          </div>--%>
      </div>
     
    </div>
      
        <%--<div class="auto-style17"  >
             <asp:Panel ID="Panel1" runat="server" Height="652px" Width="1514px">
                 <table class="auto-style1" style="width:100%;">
                     <tr>
                         <td class="auto-style3">First Name:</td>
                         <td class="auto-style13">
                             <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                         </td>
                        <td class="auto-style15">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" CssClass="auto-style9" ErrorMessage="First name is required."></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Last Name:</td>
                         <td class="auto-style13">
                             <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                         </td>
                         <td class="auto-style15">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last name required." ControlToValidate="txtLastName" CssClass="auto-style9"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Email Address:</td>
                         <td class="auto-style13">
                             <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                         </td>
                         <td class="auto-style15">
                         
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email id requird." ControlToValidate="txtEmail" CssClass="auto-style9"></asp:RequiredFieldValidator>
                         
                             <br class="auto-style9" />
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="auto-style9" ErrorMessage="Invalid Email." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                         
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style3">Date of birth:</td>
                         <td class="auto-style13">
                             <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="185px"></asp:TextBox>
                         </td>
                         <td class="auto-style15">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDOB" CssClass="auto-style9" ErrorMessage="Date of birth is required."></asp:RequiredFieldValidator>
                             <br />
                             <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDOB" ErrorMessage="Must be older than 18 years old." ForeColor="#CC3300" MaximumValue="2001-09-01" MinimumValue="1960-01-01"></asp:RangeValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style18">Phone Number:</td>
                        <td class="auto-style19">
                             <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                         </td>
                       <td class="auto-style10"> 
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtMobile" ErrorMessage="Phone number is requird."></asp:RequiredFieldValidator>
                           <br />
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobile" ErrorMessage="Invalid mobile number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style5">Password:</td>
                         <td class="auto-style14">
                             <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

                         </td>
                         <td class="auto-style16">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" CssClass="auto-style9" EnableViewState="False" ErrorMessage="Password is required."></asp:RequiredFieldValidator>
                         </td>

                     </tr>
                     <tr>
                         <td class="auto-style5">Confirm Password:</td>
                         <td class="auto-style14">
                             <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>

                         </td>
                          <td class="auto-style8">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirmPassword" CssClass="auto-style9" ErrorMessage="Confirm password is required."></asp:RequiredFieldValidator>
                              <br class="auto-style9" />
                              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" CssClass="auto-style9" ErrorMessage="Passwords do not match."></asp:CompareValidator>
                          </td>

                     </tr>
                    
                     <tr>
                         <td class="auto-style7" colspan="3">
                             <hr />
                             <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="1229px" />
                         </td>
                     </tr>
                    
                     <tr>
                         <td>

                         </td>
                         <td class="auto-style13">
                             <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="Button1_Click" style="height: 29px" />
                         </td>
                     </tr>

                 </table>
                           
            </asp:Panel>
          
        </div>--%>
    </form>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
</body>
</html>
