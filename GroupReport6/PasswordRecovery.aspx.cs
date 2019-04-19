using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace GroupReport6
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        public object TextBox1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string email = txtEmail.Text;
            string pin = txtPin.Text;
            //validate email
            if (txtEmail.Text == string.Empty)
            {
                lblError.Text = "Please enter an email";
                return;

                //confirmation
            }
            else
            {
                //lblError.Text = string.Empty;
                // lblInfo.Text = "A link has been sent to your email, please follow the directions to reset your password.";
                // }

                // Code to check if email exist in database
                string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                SqlConnection cn = new SqlConnection(strConnection);
                cn.Open();

                string qry1 = "SELECT * FROM [User] WHERE email=@email AND TouchPin=@touchpin";

                SqlCommand cmd = new SqlCommand(qry1, cn);
                SqlParameter param = new SqlParameter();

                cmd = new SqlCommand(qry1, cn);

                param = new SqlParameter();
                param.ParameterName = "@email";
                param.Value = txtEmail.Text;

                cmd.Parameters.Add(param);

                param = new SqlParameter();
                param.ParameterName = "@touchpin";
                param.Value = txtPin.Text;

                cmd.Parameters.Add(param);
                //cmd.Parameters.AddWithValue("@email", email);
                
                //cmd.Parameters.AddWithValue("@touchpin", pin);

                SqlDataReader rdr = cmd.ExecuteReader();

                if(rdr == null || !rdr.HasRows)
                {
                    lblError.Text = "Email not registered or pin incorrect";
                    lblInfo.Text = "";
                }
                    if (rdr.HasRows)
                    {
                        //when in read mode ask for data
                        while (rdr.Read())
                        {
                            email = rdr["email"].ToString();
                            if (txtEmail.Text == email)
                            {
                                //display password if email is in database
                                lblError.Text = "";
                                lblInfo.Text = "Email found, please check above for your password";
                            }

                        }
                    }

            }

        }
    }
}

