using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace TMS_Project_WebForm
{
    public partial class Student_Signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ResetStudentSignup()
        {
            NameTextBox.Text = "";
            FatherNameTextBox.Text = "";
            SurnameTextBox.Text = "";
            GenderDropDownList.ClearSelection();
            AgeTextBox.Text = "";
            CountryTextBox.Text = "";
            CityTextBox.Text = "";
            AddressTextBox.Text = "";
            ClassTextBox.Text = "";
            GoingToDropDownList.ClearSelection();
            SubjectTextBox.Text = "";
            ContactTextBox.Text = "";
            TuitionTypeDropDownList.ClearSelection();
            TutorPreferDropDownList.ClearSelection();
            UsernameTextBox.Text = "";
            PasswordTextBox.Text = "";
            ConfirmPasswordTextBox.Text = "";
        }


        protected void StudentSignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Insert into Student_Signup values (@name,@fname,@surname,@gender,@age,@country,@city,@address,@standard,@goingto,@subject,@contactno,@tuitionType,@tutorprefer,@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", NameTextBox.Text);
            cmd.Parameters.AddWithValue("@fname", FatherNameTextBox.Text);
            cmd.Parameters.AddWithValue("@surname", SurnameTextBox.Text);
            cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedIndex.ToString());
            cmd.Parameters.AddWithValue("@age", Convert.ToInt32(AgeTextBox.Text));
            cmd.Parameters.AddWithValue("@country", CountryTextBox.Text);
            cmd.Parameters.AddWithValue("@city", CityTextBox.Text);
            cmd.Parameters.AddWithValue("@address",AddressTextBox.Text);
            cmd.Parameters.AddWithValue("@standard", ClassTextBox.Text);
            cmd.Parameters.AddWithValue("@goingto",GoingToDropDownList.SelectedIndex.ToString());
            cmd.Parameters.AddWithValue("@subject", SubjectTextBox.Text);
            cmd.Parameters.AddWithValue("@contactno", ContactTextBox.Text);
            cmd.Parameters.AddWithValue("@tuitionType", TuitionTypeDropDownList.SelectedIndex.ToString());
            cmd.Parameters.AddWithValue("@tutorprefer", TutorPreferDropDownList.SelectedIndex.ToString());
            cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
            
            con.Open();

            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert(You have registerd successfully.)</script>");
                ResetStudentSignup();
            }
            else
            {
                Response.Write("<script>alert(Registeration Failed.... Try Another....)</script>");
            }

            con.Close();
  
        }
    }
}