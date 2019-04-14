<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobBoard.aspx.cs" Inherits="GroupReport6.JobBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Button ID="btnAllLoads" runat="server" Text="All Loads" /><asp:Button ID="btnMyLoads" runat="server" Text="My Loads Status" /><asp:Button ID="btnMyShipments" runat="server" Text="My Shipments Status" /><br />
            Shipment DB<asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="PaymentAmount" HeaderText="PaymentAmount" SortExpression="PaymentAmount" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                    <asp:BoundField DataField="ContactPhoneNumber" HeaderText="ContactPhoneNumber" SortExpression="ContactPhoneNumber" />
                    <asp:BoundField DataField="ShipperUserid" HeaderText="ShipperUserid" SortExpression="ShipperUserid" />
                    <asp:BoundField DataField="CarrierUserid" HeaderText="CarrierUserid" SortExpression="CarrierUserid" />
                    <asp:BoundField DataField="ToLocationid" HeaderText="ToLocationid" SortExpression="ToLocationid" />
                    <asp:BoundField DataField="FromLocationid" HeaderText="FromLocationid" SortExpression="FromLocationid" />
                    <asp:BoundField DataField="TruckTypeid" HeaderText="TruckTypeid" SortExpression="TruckTypeid" />
                    <asp:BoundField DataField="ShipmentStatusid" HeaderText="ShipmentStatusid" SortExpression="ShipmentStatusid" />
                </Columns>
            </asp:GridView>
            <br />
        </div>
        
    </form>
</body>
</html>
