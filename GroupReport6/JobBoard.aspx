<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobBoard.aspx.cs" Inherits="GroupReport6.JobBoard" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        body {
            background-color: #ddffef
        }
        .auto-style2 {
            margin-left: 0px;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            
            Choose your shipment/load status:<br />
            
            <asp:Button ID="btnAllLoads" runat="server" Text="All Loads" OnClick="btnAllLoads_Click" CssClass="auto-style2" Width="215px" /><asp:Button ID="btnMyLoads" runat="server" Text="My Loads Status" OnClick="btnMyLoads_Click" Width="215px" /><asp:Button ID="btnMyShipments" runat="server" Text="My Shipments Status" OnClick="btnMyShipments_Click" Width="215px" /><br />
            Shipment DB<br />
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" SelectedIndex="1" >
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="PaymentAmount" HeaderText="PaymentAmount" SortExpression="PaymentAmount" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                    <asp:BoundField DataField="ContactPhoneNumber" HeaderText="ContactPhoneNumber" SortExpression="ContactPhoneNumber" />
                    <asp:BoundField DataField="To Location" HeaderText="To Location" SortExpression="To Location" />
                    <asp:BoundField DataField="From Location" HeaderText="From Location" SortExpression="From Location" />
                    <asp:BoundField DataField="Shipper" HeaderText="Shipper" SortExpression="Shipper" />
                    <asp:BoundField DataField="Carrier" HeaderText="Carrier" SortExpression="Carrier" />
                    <asp:BoundField DataField="Truck Type" HeaderText="Truck Type" SortExpression="Truck Type" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Image ID="Image1" runat="server" Height="400px" ImageUrl="~/Images/logo_transparent.png" Width="500px" />
            <br />
            <br />
            <asp:Button ID="btnSignout" runat="server" OnClick="btnSignout_Click" Text="Sign out" />
            <br />
        </div>
        
    </form>
</body>
</html>
