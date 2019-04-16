using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupReport6
{
    public partial class JobBoard : System.Web.UI.Page
    {
        int signedInUser = 0;
        int searchType = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Create a string to contain the paramaters'
            // information.
            string paramInfo = "";

            // Obtain a reference to the Request.Params
            // collection.
            NameValueCollection pColl = Request.Params;
            
            for (int i = 0; i <= pColl.Count - 1; i++)
            {
                paramInfo = pColl.GetKey(i) ;
                string[] pValues = pColl.GetValues(i);
                if (paramInfo.Equals("Userid")){
                    signedInUser = Convert.ToInt16( pValues[0]);
                }
                if (paramInfo.Equals("SearchType"))
                {
                    searchType = Convert.ToInt16(pValues[0]);
                }
            }

            if(signedInUser == 0)
            {
                //user is not signed in. send them to error page
                //nope i guess we will just sign someone in for now
                signedInUser = 1;
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select Date, PaymentAmount, Weight, ContactPhoneNumber, l1.Description as 'To Location', l2.Description as 'From Location' ,u1.FirstName as 'Shipper', u2.FirstName as 'Carrier', t.Description as 'Truck Type', ss.Descripiton as 'Status' FROM Shipment inner join Location as l1 on Shipment.ToLocationid = l1.Locationid inner join Location as l2 on Shipment.FromLocationid = l2.Locationid inner join [User] as u1 on Shipment.ShipperUserid = u1.Userid inner join [User] u2 on Shipment.CarrierUserid = u2.userid inner join TruckType as t on Shipment.TruckTypeid = t.TruckTypeid inner join ShipmentStatus ss on Shipment.ShipmentStatusid = ss.ShipmentStautsid", con);
                if (searchType == 1)
                     cmd = new SqlCommand("Select Date, PaymentAmount, Weight, ContactPhoneNumber, l1.Description as 'To Location', l2.Description as 'From Location' ,u1.FirstName as 'Shipper', u2.FirstName as 'Carrier', t.Description as 'Truck Type', ss.Descripiton as 'Status' FROM Shipment inner join Location as l1 on Shipment.ToLocationid = l1.Locationid inner join Location as l2 on Shipment.FromLocationid = l2.Locationid inner join [User] as u1 on Shipment.ShipperUserid = u1.Userid inner join [User] u2 on Shipment.CarrierUserid = u2.userid inner join TruckType as t on Shipment.TruckTypeid = t.TruckTypeid inner join ShipmentStatus ss on Shipment.ShipmentStatusid = ss.ShipmentStautsid where CarrierUserid = " + signedInUser, con);
                else if (searchType == 2)
                     cmd = new SqlCommand("Select Date, PaymentAmount, Weight, ContactPhoneNumber, l1.Description as 'To Location', l2.Description as 'From Location' ,u1.FirstName as 'Shipper', u2.FirstName as 'Carrier', t.Description as 'Truck Type', ss.Descripiton as 'Status' FROM Shipment inner join Location as l1 on Shipment.ToLocationid = l1.Locationid inner join Location as l2 on Shipment.FromLocationid = l2.Locationid inner join [User] as u1 on Shipment.ShipperUserid = u1.Userid inner join [User] u2 on Shipment.CarrierUserid = u2.userid inner join TruckType as t on Shipment.TruckTypeid = t.TruckTypeid inner join ShipmentStatus ss on Shipment.ShipmentStatusid = ss.ShipmentStautsid where ShipperUserid = " + signedInUser, con);

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    if (dt.Rows.Count > 0)
                    {
                        GridView2.DataSourceID = null;
                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                    }
                    con.Close();
                }
            }

        }

        protected void btnAllLoads_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55690/JobBoard.aspx?Userid=" + signedInUser + "&SearchType=0");
        }

        protected void btnMyLoads_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55690/JobBoard.aspx?Userid=" + signedInUser + "&SearchType=1");
        }

        protected void btnMyShipments_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55690/JobBoard.aspx?Userid=" + signedInUser + "&SearchType=2");
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:55690/LoadDetails.aspx?Userid=" + signedInUser + "&s=" + GridView2.SelectedIndex);
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Attaching one onclick event for the entire row, so that it will
                // fire SelectedIndexChanged, while we click anywhere on the row.
                e.Row.Attributes["onclick"] =
                  ClientScript.GetPostBackClientHyperlink(this.GridView2, "Select$" + e.Row.RowIndex + 1);
            }
        }
    }
}