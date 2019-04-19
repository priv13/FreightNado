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
            text-align: center;
        }
        body {
            background-color: #333333;
            text-align: center;
            border-spacing: 0;
        }
        .auto-style7 {
            color: #FF3300;
            background-color: #000000;
            text-decoration: underline;
        }
        .auto-style8 {
            background-color: #000000;
            text-decoration: underline;
        }
        .auto-style9 {
            height: 137px;
            width: 580px;
            text-align: center;
        }
        .auto-style11 {
            height: 96px;
            width: 580px;
            text-align: center;
        }
        .auto-style12 {
            width: 409px;
            height: 96px;
            text-align: center;
        }
        .auto-style13 {
            height: 96px;
        }
        .auto-style14 {
            height: 102px;
            width: 580px;
            text-align: center;
        }
        .auto-style15 {
            width: 409px;
            height: 102px;
            text-align: center;
        }
        .auto-style16 {
            height: 102px;
        }
        #lblHome {
            text-align: left;
        }
        .auto-style17 {
            height: 22px;
            width: 580px;
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
        .auto-style20 {
            text-decoration: underline;
        }
        a:hover {
            background-color: yellow;
        }
        #txtEmail:focus {
            background-color: yellow;
        }
        #txtPin:focus {
            background-color: yellow;
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Email], [Password] FROM [User] WHERE (([Email] = @Email) AND ([TouchPin] = @TouchPin))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="txtPin" Name="TouchPin" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style20">
                        <Columns>
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style4">
                    <asp:Image ID="imgLocked" runat="server" Height="250px" Width="325px" ImageUrl="~/Images/locked.png" CssClass="auto-style20" />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15"><span class="auto-style20">Forgout your password?</span><br class="auto-style20" />
                    <span class="auto-style20">Please enter you email and pin.</span><br class="auto-style20" />
                    <br class="auto-style20" />
                    <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="Email" CssClass="auto-style20" placeholder="Email ..."></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtPin" runat="server" placeholder="Pin ..."></asp:TextBox>
                    <br class="auto-style20" />
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="auto-style20" />
                    <br class="auto-style20" />
                    <hr />
                </td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12">
                    <asp:Label ID="lblHome" runat="server" CssClass="auto-style20"><a href="Login.aspx">Login?</a></asp:Label> <span class="auto-style20">&nbsp; </span> <a href="CreateAccount.aspx"> Create Account?</a>
                    <br class="auto-style20" />
                    <asp:Label ID="lblError" runat="server" CssClass="auto-style7"></asp:Label>
                    <br class="auto-style20" />
                    <asp:Label ID="lblInfo" runat="server" ForeColor="#66FF33" CssClass="auto-style8"></asp:Label>
                </td>
                <td class="auto-style13"></td>
            </tr>
        </table>
    </form>
</body>
</html>
