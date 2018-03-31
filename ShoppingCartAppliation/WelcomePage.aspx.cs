using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoppingCartAppliation
{
    public partial class WelcomePage : System.Web.UI.Page
    {

        protected void ShoppingPlazaBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForms/ShoppingPlazaForm.aspx");
        }

        protected void ExitBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForms/ExitPage.aspx");
        }
    }
}