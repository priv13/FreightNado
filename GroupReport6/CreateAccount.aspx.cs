using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// changed UserId identification specifcation to true, was not accepting null values before. 
namespace GroupReport6
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //variables
            //input validation for email
            if(txtEmail.Text == string.Empty)
            {
                lblInfo.Text = "** Please enter a email address";
                return;
            } else
            {
                lblInfo.Text = string.Empty;
            }

            //input validation for password
            if(txtPassword.Text == string.Empty)
            {
                lblInfo.Text = "** Please enter a password";
                return;
            } else
            {
                lblInfo.Text = string.Empty;
            }

            //input validation to confirm password
            if(txtPasswordConfirm.Text == string.Empty)
            {
                lblInfo.Text = "** Please confirm your password";
                return;
            } else
            {
               lblInfo.Text = string.Empty;
            }

            //matching passwords
            if(txtPassword.Text != txtPasswordConfirm.Text)
            {
                lblInfo.Text = "** Confirmed password does not match original, please check spelling.";
                //return added for if passwords don't match
                return; 
            } else
            {
                lblInfo.Text = string.Empty;
            }

            //makes sure password is of valid length, 6 or more characters in this case
            if (txtPassword.Text.Length < 6)
            {
                lblInfo.Text = "Please make sure your password is at least 6 characters";
                return;
            }
            else
            {
                lblInfo.Text = string.Empty;
            }
            // add the user to the databse 
            string connetionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cnn;
            cnn = new SqlConnection(connetionString);
            cnn.Open();
            
            string sql = "insert into [User] (Email, Password,Firstname,Lastname, Username, PhoneNumber, Rating, TouchPin) values (@email,@password,@firstname,@lastname,@username,@phonenumber,@rating,@touchpin)";
            SqlCommand cmd = new SqlCommand(sql, cnn);

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@email";
            param.Value = txtEmail.Text;

            cmd.Parameters.Add(param);

            param = new SqlParameter();
            param.ParameterName = "@password";
            param.Value = txtPassword.Text;

            cmd.Parameters.Add(param);

            param = new SqlParameter();
            param.ParameterName = "@firstname";
            param.Value = txtFirstname.Text;

            cmd.Parameters.Add(param);

            param = new SqlParameter();
            param.ParameterName = "@lastname";
            param.Value = txtLastname.Text;

            cmd.Parameters.Add(param);

            param = new SqlParameter();
            param.ParameterName = "@username";
            param.Value = txtUsername.Text;

            cmd.Parameters.Add(param);

            param = new SqlParameter();
            param.ParameterName = "@rating";
            param.Value = "5";

            cmd.Parameters.Add(param);

            param = new SqlParameter();
            param.ParameterName = "@touchpin";
            param.Value = txtTouchPin.Text;

            cmd.Parameters.Add(param);

            param = new SqlParameter();
            param.ParameterName = "@phonenumber";
            param.Value = txtPhoneNumber.Text;

            cmd.Parameters.Add(param);

            cmd.ExecuteNonQuery();

            sql = "Select Userid from [User] where Email = @email";
            cmd = new SqlCommand(sql, cnn);

            param = new SqlParameter();
            param.ParameterName = "@email";
            param.Value = txtEmail.Text;

            cmd.Parameters.Add(param);

            SqlDataReader reader = cmd.ExecuteReader();
            int userId = 0;
            while (reader.Read())
            {
                userId = Convert.ToInt16(reader["Userid"]);
                
            }
            
            cnn.Close();

            Response.Redirect("http://localhost:55690/JobBoard.aspx?Userid=" + userId + "&SearchType=0");
        }
    }
}