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
            }
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select Date, PaymentAmount, Weight, ContactPhoneNumber, Description FROM Shipment inner join Location on Shipment.ToLocationid = Location.Locationid", con);
                if (searchType == 1)
                     cmd = new SqlCommand("Select * FROM Shipment where CarrierUserid = " + signedInUser, con);
                else if (searchType == 2)
                     cmd = new SqlCommand("Select * FROM Shipment where ShipperUserid = " + signedInUser, con);

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
    }
}