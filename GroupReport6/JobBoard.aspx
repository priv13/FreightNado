﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobBoard.aspx.cs" Inherits="GroupReport6.JobBoard" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Button ID="btnAllLoads" runat="server" Text="All Loads" OnClick="btnAllLoads_Click" /><asp:Button ID="btnMyLoads" runat="server" Text="My Loads Status" OnClick="btnMyLoads_Click" /><asp:Button ID="btnMyShipments" runat="server" Text="My Shipments Status" OnClick="btnMyShipments_Click" /><br />
            Shipment DB<asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" SelectedIndex="1" >
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
        </div>
        
    </form>
</body>
</html>
