using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupReport6
{
    public partial class LoadDetails : System.Web.UI.Page

    {
        int signedInUser = 0;
        int selectedShipment = 0;
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
                paramInfo = pColl.GetKey(i);
                string[] pValues = pColl.GetValues(i);
                if (paramInfo.Equals("Userid"))
                {
                    signedInUser = Convert.ToInt16(pValues[0]);
                }
                if (paramInfo.Equals("s"))
                {
                    selectedShipment = Convert.ToInt16(pValues[0]);
                }
            }

            if (signedInUser == 0)
            {
                //user is not signed in. send them to error page
                //nope i guess we will just sign someone in for now
                signedInUser = 1;
            }
            if (selectedShipment == 0)
            {
                //user is not signed in. send them to error page
                //nope i guess we will just sign someone in for now
                selectedShipment = 1;
            }
        }

        protected void btnAcceptLoad_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update Shipment set CarrierUserid = " + signedInUser  + " where Shipmentid = " + selectedShipment, con);
                cmd.ExecuteNonQuery();
                con.Close();
               
            }
        }
    }
}