﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TMS_Project_WebForm.Admin
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from admin_login where username = @username and password = @password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", UserNameTxt.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTxt.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                //Response.Write("<script>alert('Login SuccessFull');</script>");
                Session["username"] = UserNameTxt.Text;
                Response.Redirect("AdminIndex.aspx");
            }
            else
            {
                Response.Write("<script>alert('Username or password is InCorrect');</script>");
                //ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "Swal.fire({ title: 'Failure',text: 'Username or password is InCorrect', icon: 'Error'}); ", true);
            }
            con.Close();
        }
    }
}