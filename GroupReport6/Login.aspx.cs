using System;
using System.Collections.Generic;
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
            if(txtEmail.Text == string.Empty)
            {
                lblError.Text = "** Please enter a email";
                return;
            }
            else
            {
                lblError.Text = string.Empty;
            }

            //password validation
            if(txtPassword.Text == string.Empty)
            {
                lblError.Text = "** Please enter a password";
                return;
            } else
            {
                lblError.Text = string.Empty;
            }
            if (txtPassword.Text.Length < 6)
            {
                lblError.Text = "Password is incorrect(Must be 6 characters at least).";
                return;
            }
            else
            {
                Response.Redirect("Profile.aspx");
            }
        }
    }
}