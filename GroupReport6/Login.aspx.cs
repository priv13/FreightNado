using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupReport6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // email validation
            if (txtEmail.Text == string.Empty)
            {
                lblError.Text = "** Please enter a email";
                return;
            }
            else
            {
                lblError.Text = string.Empty;
            }

            //password validation
            if (txtPassword.Text == string.Empty)
            {
                lblError.Text = "** Please enter a password";
                return;
            }
            else
            {
                lblError.Text = string.Empty;
            }


            string connetionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cnn;
            cnn = new SqlConnection(connetionString);
            cnn.Open();

            // grabs password and email
            string sql = "Select Userid from [User] where Email = @email AND Password = @password";
            

            SqlCommand cmd = new SqlCommand(sql, cnn);

            SqlParameter param = new SqlParameter();



            cmd = new SqlCommand(sql, cnn);

            param = new SqlParameter();
            param.ParameterName = "@email";
            param.Value = txtEmail.Text;

            cmd.Parameters.Add(param);

            param = new SqlParameter();
            param.ParameterName = "@password";
            param.Value = txtPassword.Text;

            cmd.Parameters.Add(param);

            SqlDataReader reader = cmd.ExecuteReader();
            int userId = 0;

            if (reader == null || !reader.HasRows)
            {
                lblError.Text = "Email or password not correct, please try again";
            }
            if (reader.HasRows)
            {

                while (reader.Read())
                {
                    userId = Convert.ToInt16(reader["Userid"]);

                }

                cnn.Close();
                // if email && password exist, redirected here
                Response.Redirect("http://localhost:55690/JobBoard.aspx?Userid=" + userId + "&SearchType=0");
            }
        }
    }
}
