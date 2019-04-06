<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="GroupReport6.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 595px;
        }
        .auto-style2 {
            width: 100%;
            height: 592px;
        }
        .auto-style3 {
            width: 405px;
            background-color: #99CCFF;
        }
        .auto-style5 {
            width: 405px;
            height: 91px;
            background-color: #99CCFF;
        }
        .auto-style7 {
            height: 91px;
            background-color: #FFFFCC;
        }
        .auto-style8 {
            width: 405px;
            height: 95px;
            background-color: #99CCFF;
        }
        .auto-style10 {
            height: 95px;
            background-color: #FFFFCC;
            text-decoration-color: white;
            text-align: center;
        }
        body {
            background-color: white;
            text-align: center;
            cellspacing = 0;
        }
        .auto-style12 {
            width: 405px;
            height: 130px;
            background-color: #99CCFF;
        }
        .auto-style13 {
            width: 496px;
            height: 130px;
            background-color: #FFFFFF;
        }
        .auto-style14 {
            height: 130px;
            background-color: #FFFFFF;
        }
        
        .auto-style15 {
            height: 30px;
            background-color: #FFFFFF;
            border: 4px solid #FFFFFF;
        }
        .auto-style16 {
            width: 496px;
            height: 30px;
            background-color: #FFFFFF;
            border: 4px solid #FFFFFF;
        }
        .auto-style17 {
            width: 405px;
            height: 30px;
            background-color: #333333;
            text-align: left;
        }
                
        .auto-style21 {
            width: 496px;
            background-color: #FFFFFF;
        }
        .auto-style22 {
            background-color: #FFFFFF;
        }
        #lblWelcome {
            color: white;
        }
        
        .auto-style23 {
            color: #000000;
            background-color: #FFFFCC;
        }
        
        .auto-style24 {
            color: #FF0000;
        }
        .auto-style25 {
            color: #000000;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <table class="auto-style2" cellspacing="0">
                <tr>
                    <td class="auto-style17">
                        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/Images/logo_transparent.png" />
                    </td>
                    <td class="auto-style16"></td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">About us</td>
                    <td class="auto-style21">
                        <asp:Label ID="lblInfo" runat="server" CssClass="auto-style24"></asp:Label>
                        </td>
                    <td class="auto-style22">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <p style="line-height:0; margin-bottom:5px;">
                            <span class="--mb--rich-text" data-boldtype="0" style="font-family:SFUIText; font-weight:400; font-size:14px; color:rgb(16, 16, 16); font-style:normal; letter-spacing:0px; line-height:17px; text-decoration:none;">At FreightNado, we strive to give the best in both worlds to couriers and shippers around the world. We believe that the two should have a good connection, and get to choose who they want to work with.</span></p>
                    </td>
                    <td class="auto-style21">
                        <asp:Label ID="lblWelcome" runat="server" Text="Welcome to FreightNado, please fill out the details below to join." CssClass="auto-style25" ForeColor="Black"></asp:Label>
                        <br />
                        <br />
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Email ..."></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="lblContacts" runat="server" CssClass="auto-style23" Text="Contact us!"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <p style="line-height:0; margin-bottom:5px;">
                            <span class="--mb--rich-text" data-boldtype="0" style="font-family:SFUIText; font-weight:400; font-size:14px; color:rgb(16, 16, 16); font-style:normal; letter-spacing:0px; line-height:17px; text-decoration:none;">That is why we created this app, we are giving the ability for shippers and couriers to connect with one another and rate eachother off of our 5 star system.</span></p>
                        <p style="line-height:0; margin-bottom:5px;">
                            <span class="--mb--rich-text" data-boldtype="0" style="font-family:SFUIText; font-weight:400; font-size:14px; color:rgb(16, 16, 16); font-style:normal; letter-spacing:0px; line-height:17px; text-decoration:none;">If you would like to know anything more about us please don&#39;t hesitate to contact either through mail, email, or by phone.</span></p>
                        <p style="line-height:0; margin-bottom:5px;">
                            <span class="--mb--rich-text" data-boldtype="0" style="font-family:SFUIText; font-weight:400; font-size:14px; color:rgb(16, 16, 16); font-style:normal; letter-spacing:0px; line-height:17px; text-decoration:none;">Thank you for choosing us!</span></p>
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password ..."></asp:TextBox>
                        <br />
                        <br />
                        <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password" placeholder="Confirm Password ..."></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style10">Email: <a href="mailto:FreightNado@shipping.net">FreightNado@shipping.net</a><br />
                        Phone: (987) 654 - 3210 <br />
                        Mail: Freight Ave, Minnesota 453</td>
                </tr>
                <tr>
                    <td class="auto-style12"></td>
                    <td class="auto-style13">
                        <br />
                        <br />
                        Already a member? Click<a href="Login.aspx">HERE!</a>
                    </td>
                    <td class="auto-style14"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
