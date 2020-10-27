using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //memakai session
            if (Session["userLogin"] != null)
            {
                Response.Redirect("admin.aspx");
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string cekuser = " SELECT COUNT(*) FROM [user] WHERE email = '" + Email.Text + "'";
            SqlCommand qwery = new SqlCommand(cekuser, conn);
            int cek = Convert.ToInt32(qwery.ExecuteScalar().ToString());
            conn.Close();
            //email ada
            if (cek == 1)
            {
                //cek password ke database
                conn.Open();
                string cekpswuser = " SELECT password, username FROM [user] WHERE email = '" + Email.Text + "'";
                SqlCommand qwerypsw = new SqlCommand(cekpswuser, conn);
                string password = qwerypsw.ExecuteScalar().ToString();
                conn.Close();
                
                if (password == Password.Text)
                {
                    Session["userLogin"] = Email.Text;
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Write("password is Wrong!!");
                }
            }
            //Jika Email salah
            else
            {
                Response.Write("Email not valid!");
            }
        }
    }
}