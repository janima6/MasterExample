using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace LibraryManagementSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string userName;
        protected void Page_Load(object sender, EventArgs e)
        {

            lblWelcome.Text = "Welcome: " + Session["Username"];

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                string uname = Convert.ToString(Session["Username"]);

                string query = "select mem_id from member_info where user_name=@username ";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@username", uname);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    userName = reader["mem_id"].ToString();
                    lblMemid.Text = userName;
                    Session["memberID"] = userName;
                }
            }

        }
    

        protected void btnSearchBook0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchBook.aspx");
        }

        protected void btnIssueBook0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Member/IssueBook.aspx");
        }

        protected void btnReturnBook0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ReturnBook.aspx");
        }

        protected void btnUnpaidOverdues0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UnpaidOverDues.aspx");
        }

        protected void btnHistory0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/History.aspx");
        }

        protected void btnMyAccount0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MyAccount.aspx");
        }

        protected void btnLogout0_Click(object sender, EventArgs e)
        {

        }
    }
}