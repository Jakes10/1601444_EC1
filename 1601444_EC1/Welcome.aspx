<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="_1601444_EC1.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style6 {
            height: 22px;
            text-align: left;
            background-color: #EBEBEB;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style10 {
            width: 89px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-family: 'Bahnschrift Light SemiCondensed'">
           
            <table class="auto-style3">
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Image ID="Image1" runat="server" Height="59px" ImageUrl="~/Images/logo.png" Width="242px" />
           
            <span class="auto-style2"><em>
            Hi </em></span><em>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2"></asp:Label>
            </em><span class="auto-style2"><em>, Welcome.</em></span></td>
                    
                </tr>
                <tr>
                    <td class="auto-style8">
           
                        &nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                   
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                     
                </tr>
            </table>
           
            <span class="auto-style2"><em>
            <br />
            </em></span></div>

         <table class="auto-style3">
        <tr>
            <td class="auto-style4">Registered Users:
                <asp:Label ID="userAmt" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
   
    </table>
    </form>
    
</body>
</html>
