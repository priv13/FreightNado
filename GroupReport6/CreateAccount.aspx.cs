using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            if(txtPassword.Text != txtPassword.Text)
            {
                lblInfo.Text = "** Confirmed password does not match original, please check spelling.";
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
        }
    }
}