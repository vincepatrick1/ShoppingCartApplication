<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomePage.aspx.cs" Inherits="ShoppingCartAppliation.WelcomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="WebForms/site.css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <h1>Welcome to the Shopping Plaza!!!</h1>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Here you can purchase books and DVDs. Simply follow the instructions provided below:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Instructions:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">1. Select the book and enter the quantity. Click Add.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">2. Select the DVD and enter the quantity. Click Add.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">3. To check out, click Check-out.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">4. To close the application, click Exit. You will lose your selections.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">5. In the check out screen, revise the quantities if you wish to. If you do, click Edit.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">6. To place the final order, click Pay.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">7. To close the application, click Exit. You will lose your selections.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="mybutton">
                    <asp:Button ID="ShoppingPlazaBtn" runat="server" Text="Go to Shopping Plaza" OnClick="ShoppingPlazaBtn_Click" />
                    <asp:Button ID="ExitBtn" runat="server" Text="Exit" Width="81px" OnClick="ExitBtn_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
