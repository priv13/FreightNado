<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GroupReport6.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 464px;
        }
        .auto-style2 {
            width: 100%;
            height: 467px;
            align-items: center;
            background-color: #333333;
        }
        .auto-style3 {
            width: 371px;
        }
        body {
            background-color: #333333;
            text-align: center;
        }
        .auto-style4 {
            color: #FFFFFF;
        }     
        .auto-style5 {
            width: 547px;
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
        

    </style>
</head>
<body style="height: 653px">
    <form id="form1" runat="server">
        <div class="auto-style1">
         
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Image ID="imgLogo" runat="server" Height="195px" Width="238px" ImageUrl="~/Images/logo_transparent.png" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email ..." OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password ..."></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        <hr />
                        <a href="PasswordRecovery.aspx">Forgot password?</a>   
                        <span class="auto-style4">or</span>
                        <a href="CreateAccount.aspx">Create an Account?</a>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                </table>
         
        </div>
    </form>
</body>
</html>
