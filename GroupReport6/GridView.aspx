<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="GroupReport6.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Location DB<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Locationid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Locationid" HeaderText="Locationid" ReadOnly="True" SortExpression="Locationid" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Location]"></asp:SqlDataSource>
            <br />
            Shipment DB<asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Shipmentid" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Shipmentid" HeaderText="Shipmentid" ReadOnly="True" SortExpression="Shipmentid" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Shipment]"></asp:SqlDataSource>
            <br />
            Shipment Status DB<asp:GridView ID="GridView3" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ShipmentStautsid" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="ShipmentStautsid" HeaderText="ShipmentStautsid" ReadOnly="True" SortExpression="ShipmentStautsid" />
                    <asp:BoundField DataField="Descripiton" HeaderText="Descripiton" SortExpression="Descripiton" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ShipmentStatus]"></asp:SqlDataSource>
            <br />
            Truck Type DB<asp:GridView ID="GridView4" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TruckTypeid" DataSourceID="SqlDataSource4">
                <Columns>
                    <asp:BoundField DataField="TruckTypeid" HeaderText="TruckTypeid" ReadOnly="True" SortExpression="TruckTypeid" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="MaxWeight" HeaderText="MaxWeight" SortExpression="MaxWeight" />
                    <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                    <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TruckType]"></asp:SqlDataSource>
            <br />
            User DB<asp:GridView ID="GridView5" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Userid" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:BoundField DataField="Userid" HeaderText="Userid" ReadOnly="True" SortExpression="Userid" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                    <asp:BoundField DataField="TouchPin" HeaderText="TouchPin" SortExpression="TouchPin" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
