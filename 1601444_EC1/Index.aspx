<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_1601444_EC1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 199px;
        }
      
        .auto-style5 {
            text-align: right;
            width: 199px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
            text-align: left;
        }
        .auto-style8 {
            height: 29px;
            width: 613px;
        }
        .auto-style9 {
            color: #CC3300;
        }
        .auto-style10 {
            color: #CC3300;
            height: 30px;
            width: 613px;
        }
      
        .auto-style13 {
            width: 174px;
            text-align: justify;
        }
        .auto-style14 {
            width: 174px;
            height: 29px;
            text-align: justify;
        }
        .auto-style15 {
            width: 613px;
        }
        .auto-style16 {
            height: 29px;
            text-align: left;
            width: 613px;
        }
        .auto-style17 {
            width: 1520px;
            height: 743px;
            overflow: auto;
            z-index: 55;
        }
        .auto-style18 {
            text-align: right;
            width: 199px;
            height: 30px;
        }
        .auto-style19 {
            width: 174px;
            height: 30px;
            text-align: justify;
        }
        
      
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="auto-style17"  >
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
                             <asp:TextBox ID="txtDOB" runat="server" TextMode="Date" Width="156px"></asp:TextBox>
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
          
        </div>
    </form>
</body>
</html>
