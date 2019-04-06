<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordRecovery.aspx.cs" Inherits="GroupReport6.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 655px;
            background-color: #FFFFFF;
        }
        .auto-style3 {
            height: 137px;
        }
        .auto-style4 {
            width: 409px;
            height: 137px;
        }
        body {
            background-color: #333333;
            text-align: center;
            border-spacing: 0;
        }
        .auto-style7 {
            color: #FF3300;
        }
        .auto-style8 {
            background-color: #FFFFCC;
        }
        .auto-style9 {
            height: 137px;
            width: 424px;
        }
        .auto-style11 {
            height: 96px;
            width: 424px;
        }
        .auto-style12 {
            width: 409px;
            height: 96px;
        }
        .auto-style13 {
            height: 96px;
        }
        .auto-style14 {
            height: 102px;
            width: 424px;
        }
        .auto-style15 {
            width: 409px;
            height: 102px;
        }
        .auto-style16 {
            height: 102px;
        }
        #lblHome {
            text-align: left;
        }
        .auto-style17 {
            height: 22px;
            width: 424px;
            background-color: #333333;
            text-align: left;
        }
        .auto-style18 {
            width: 409px;
            height: 22px;
            background-color: #333333;
        }
        .auto-style19 {
            height: 22px;
            background-color: #333333;
        }
        #btnSubmit {
            border-radius: 2px, 2px, 2px, 2px;
        }
    </style>
</head>
<body style="height: 680px; margin-top: 0px;">
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1" cellspacing="0">
            <tr>
                <td class="auto-style17">
                    <asp:Image ID="imgLogo" runat="server" Height="70px" ImageUrl="~/Images/logo_transparent.png" Width="73px" />
                </td>
                <td class="auto-style18">
                </td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style9">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Image ID="imgLocked" runat="server" Height="250px" Width="325px" ImageUrl="~/Images/locked.png" />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15">Forgout your password?<br />
                    Please enter you email and hit submit.<br />
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Email"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <br />
                    <hr />
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Label ID="lblHome" runat="server"><a href="Login.aspx">Login?</a></asp:Label>
                    <br />
                    <asp:Label ID="lblError" runat="server" CssClass="auto-style7"></asp:Label>
                    <br />
                    <asp:Label ID="lblInfo" runat="server" ForeColor="#66FF33" CssClass="auto-style8"></asp:Label>
                </td>
                <td class="auto-style13"></td>
            </tr>
        </table>
    </form>
</body>
</html>
