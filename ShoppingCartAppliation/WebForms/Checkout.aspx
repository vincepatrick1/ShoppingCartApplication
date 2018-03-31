<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="ShoppingCartAppliation.WebForms.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/WebForms/CheckoutStyle.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        </style>
</head>
<body style="width: 1164px; height: 324px; margin-right: 0px; margin-bottom: 0px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:ListBox ID="ProductListBox" runat="server" Height="179px" Width="1091px" AutoPostBack="True" OnSelectedIndexChanged="ProductListBox_SelectedIndexChanged"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="entry">Change Quantity: <asp:TextBox ID="QtyTxtBox" runat="server"></asp:TextBox>
                </td>
                <td class="mybutton">
                    <asp:Button ID="QtyEditBtn" runat="server" Text="Accept Change" OnClick="QtyEditBtn_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="mybutton">
                    <asp:Button ID="PayBtn" runat="server" Text="Pay" Width="121px" OnClick="PayBtn_Click" />
                </td>
                <td class="mybutton">
                    <asp:Button ID="ExitBtn" runat="server" OnClick="ExitBtn_Click" Text="Exit" Width="158px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="TotalLbl" runat="server" Text="Total:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
