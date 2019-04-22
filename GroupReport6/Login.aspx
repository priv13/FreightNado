<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GroupReport6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 801px;
        }
        .auto-style2 {
            width: 100%;
            height: 857px;
            align-items: center;
            background-color: #333333;
        }
        .auto-style3 {
            width: 371px;
            background-color: #333333;
        }
        body {
            background-color: #FFFFFF;
            text-align: center;
        }
        .auto-style4 {
            color: #FFFFFF;
        }     
        .auto-style5 {
            width: 547px;
            background-color: #333333;
        }
        #txtEmail:focus {
            background-color: yellow;
        }
        #txtPassword:focus {
            background-color: yellow;
        }
        a:hover {
            background-color: yellow;
        }
        #btnLogin:hover {
            background-color: green;
        }
        table {
            border-collapse : collapse;
        }

        .auto-style6 {
            background-color: #333333;
            height: 92px;
        }
        .auto-style7 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            color: #FFFFFF;
            background-color: #333333;
            }
        td {
            border: none;
        }
        

        .auto-style10 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            color: #FFFFFF;
            background-color: #333333;
            height: 111px;
        }
        .auto-style11 {
            width: 547px;
            background-color: #333333;
            height: 238px;
        }
        .auto-style12 {
            width: 371px;
            background-color: #333333;
            height: 238px;
        }
        .auto-style13 {
            background-color: #333333;
            height: 238px;
        }
        .auto-style16 {
            width: 547px;
            background-color: #333333;
            height: 69px;
        }
        .auto-style17 {
            width: 371px;
            background-color: #333333;
            height: 69px;
        }
        .auto-style18 {
            background-color: #333333;
            height: 69px;
        }
        .auto-style25 {
            width: 311px;
        }
        .auto-style26 {
            width: 547px;
            background-color: #333333;
            height: 111px;
        }
        .auto-style27 {
            width: 371px;
            background-color: #99CCFF;
            height: 111px;
        }
        .auto-style28 {
            width: 547px;
            background-color: #333333;
            height: 92px;
        }
        .auto-style29 {
            width: 371px;
            background-color: #99CCFF;
            height: 92px;
        }
        

    </style>
</head>
<body style="height: 807px">
    <form id="form1" runat="server">
        <div class="auto-style1">
         
            <table class="auto-style2">
                <tr>
                    <td class="auto-style16"></td>
                    <td class="auto-style17">
                    </td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        <asp:Image ID="imgLogo" runat="server" Height="195px" Width="238px" ImageUrl="~/Images/logo_transparent.png" />
                    </td>
                    <td class="auto-style13"></td>
                </tr>
                <tr>
                    <td class="auto-style28"></td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email ..." OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password ..." OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lblError" runat="server" ForeColor="Red" CssClass="auto-style4"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26"></td>
                    <td class="auto-style27">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        <hr class="auto-style25" />
                        <a href="PasswordRecovery.aspx">Forgot password?</a>   
                        or
                        <a href="CreateAccount.aspx">Create an Account?</a>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                </table>
         
        </div>
    </form>
</body>
</html>
