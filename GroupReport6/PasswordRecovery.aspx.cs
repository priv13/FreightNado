using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GroupReport6
{
    public partial class WebForm2 : System.Web.UI.Page
    {
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
            
        }
    }
}