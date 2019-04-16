<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoadDetails.aspx.cs" Inherits="GroupReport6.LoadDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1">
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
            <asp:Button ID="btnAcceptLoad" runat="server" OnClick="btnAcceptLoad_Click" Text="Accept Load" />
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="Select Date, PaymentAmount, Weight, ContactPhoneNumber, l1.Description as 'To Location', l2.Description as 'From Location' ,u1.FirstName as 'Shipper', u2.FirstName as 'Carrier', t.Description as 'Truck Type', ss.Descripiton as 'Status' FROM Shipment inner join Location as l1 on Shipment.ToLocationid = l1.Locationid inner join Location as l2 on Shipment.FromLocationid = l2.Locationid inner join [User] as u1 on Shipment.ShipperUserid = u1.Userid inner join [User] u2 on Shipment.CarrierUserid = u2.userid inner join TruckType as t on Shipment.TruckTypeid = t.TruckTypeid inner join ShipmentStatus ss on Shipment.ShipmentStatusid = ss.ShipmentStautsid WHERE ([Shipmentid] = @Shipmentid)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="Shipmentid" QueryStringField="s" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
