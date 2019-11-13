using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace MasterExample
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)

        {

            string fName = txtAdmiAddLinFN.Text;
            string lName = txtAdmiAddLinLN.Text;
            string pNumber = txtAdminAddLibPN.Text;
            string eMail = txtAdminAddLinEID.Text;

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string q3 = "Insert into Lib values ('" + fName + "','" + lName + "', '" + pNumber + "','" + eMail + "')";

            using (SqlConnection conn = new SqlConnection(cs))
            {

                

                SqlCommand cmd = new SqlCommand(q3, conn);
                conn.Open();

                int numRows = cmd.ExecuteNonQuery();

                lblLibAdd.Text = Convert.ToString("Successfully Added :" + fName+" " +lName);

            }
        }

        protected void btnAdminBookMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookManagement.aspx");
        }

        protected void btnAdminLibraMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LibManagement.aspx");
        }

        protected void btnAdminMemberMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MemberManagement.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminLandingPage.aspx");
        }
    }
}