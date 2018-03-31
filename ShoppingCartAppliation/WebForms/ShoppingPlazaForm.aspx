<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingPlazaForm.aspx.cs" Inherits="ShoppingCartAppliation.WebForms.ShoppingPlazaForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="~/WebForms/ShoppingPlazaStyle.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 324px;
        }
        .auto-style4 {
            width: 141px;
        }
        .auto-style6 {
            width: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="10">
                    <h1>Here you make your selections. You can select one book title and one DVD title.</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Books</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="BookDropDownList" runat="server" Width="311px" AutoPostBack="True" OnSelectedIndexChanged="BookDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>Quantity</td>
                <td class="entry">
                    <asp:TextBox ID="BookQuanTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">Price of Book:</td>
                <td>
                    <asp:Label ID="BookPriceValLbl" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">DVDs</td>
                <td>
                    <asp:DropDownList ID="DVDDropDownList" runat="server" Width="311px" AutoPostBack="True" OnSelectedIndexChanged="DVDDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>Quantity</td>
                <td class="entry">
                    <asp:TextBox ID="DVDQuanTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">Price of DVD:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:Label ID="DVDPriceValLbl" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="validator" colspan="5">
                    <asp:Label ID="MessageLbl" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="mybutton">
                    <asp:Button ID="AddItemBtn" runat="server" Text="Add" Width="75px" OnClick="AddItemBtn_Click" />
                </td>
                <td class="mybutton">
                    <asp:Button ID="CheckoutBtn" runat="server" Text="Checkout" OnClick="CheckoutBtn_Click" />
                </td>
                <td>&nbsp;</td>
                <td class="mybutton">
                    <asp:Button ID="ExitBtn" runat="server" Text="Exit" OnClick="ExitBtn_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
