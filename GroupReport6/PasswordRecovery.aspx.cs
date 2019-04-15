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
            //validate email
            if(txtEmail.Text == string.Empty)
            {
                lblError.Text = "Please enter an email";
                return;

            //confirmation
            }
            else
            {
                lblError.Text = string.Empty;
                lblInfo.Text = "A link has been sent to your email, please follow the directions to reset your password.";
            }

            // connection string and sql statements
            string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string strSelect = "SELECT Username, Password FROM Users WHERE Email = @email";

            SqlConnection cn = new SqlConnection(strConnection);
            SqlCommand cm = new SqlCommand();
            cm.Connection = cn;
            cm.CommandType = CommandType.Text;
            cm.CommandText = strSelect;

            SqlParameter email = new SqlParameter("@email",
                SqlDbType.VarChar, 50);
            email.Value = txtEmail.Text.Trim().ToString();
            cm.Parameters.Add(email);

            //Create Dataset to store results and DataAdapter to fill Dataset
            DataSet dsPwd = new DataSet();
            SqlDataAdapter dAdapter = new SqlDataAdapter(cm);
            cn.Open();
            dAdapter.Fill(dsPwd);
            cn.Close();
            if(dsPwd.Tables[0].Rows.Count > 0)
            {
                MailMessage loginInfo = new MailMessage();
                loginInfo.To.Add(txtEmail.Text.ToString());
                loginInfo.From = new MailAddress("example@gmail.com");
                loginInfo.Subject = "Forgot Password Information";

                loginInfo.Body = "Username: " + dsPwd.Tables[0].Rows[0]
                    ["Username"] + "<br><br>Password: " +
                    dsPwd.Tables[0].Rows[0]["Password"] + "<br><br>";
                loginInfo.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new
                    System.Net.NetworkCredential("YourExampleGamil@gmail.com",
                    "YourGamilPassword");
                smtp.Send(loginInfo);
                lblInfo.Text = "Password is sent to you email, you may now login.";
            } else
            {
                lblError.Text = "Email Address Not Registered";
            }

        }
       

    }
}
