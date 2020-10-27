using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace TestProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //memakai session
            if (Session["userLogin"] != null)
            {
                Response.Redirect("admin.aspx");
            }
        }

        protected void daftar_Click(object sender, EventArgs e)
        {
            //Cek User jika email sudah ada maka tidak bisa mendaftar
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string cekuser = " SELECT COUNT(*) FROM [user] WHERE email = '" + Email.Text + "'";
            SqlCommand qwery = new SqlCommand(cekuser, conn);
            int cek = Convert.ToInt32(qwery.ExecuteScalar().ToString());
            conn.Close();
            //Jika email sudah ada database
            if (cek != 0)
            {
                Response.Write("Email Has Registered!");
            }
            //Jika Email tidak ada di database
            else
            {
                conn.Open();
                string insert = "INSERT INTO [user] (email,username,password,gender) VALUES (@email,@username,@password,@gender)";
                SqlCommand insertqwe = new SqlCommand(insert,conn);
                insertqwe.Parameters.AddWithValue("@email", Email.Text);
                insertqwe.Parameters.AddWithValue("@username", Username.Text);
                insertqwe.Parameters.AddWithValue("@password", Password.Text);
                insertqwe.Parameters.AddWithValue("@gender", Gender.SelectedItem.ToString());
                insertqwe.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("admin.aspx");

            }
        }
    }
}