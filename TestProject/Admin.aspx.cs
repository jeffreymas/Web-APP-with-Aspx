using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestProject
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //memakai session
            if (Session["userLogin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                user.Text = "Hi! " + Session["userLogin"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["userLogin"] = null;
            Response.Redirect("login.aspx");
        }
    }
}