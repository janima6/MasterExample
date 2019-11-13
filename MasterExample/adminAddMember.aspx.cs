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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string fName = txtAdmiAddMemFN.Text;
            string lName = txtAdmiAddMemLN.Text;
            string pNumber = txtAdminAddMemPN.Text;
            string eMail = txtAdminAddMemEID.Text;
            int bookLimit = Convert.ToInt32(dropBookLimitt.SelectedValue);
            int ReIssuebookLimit = Convert.ToInt32(dropReissueLimit.SelectedValue);

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string q3 = "Insert into Members values ('" + fName + "','" + lName + "', '" + pNumber + "','" + eMail + "', '" + bookLimit + "', '" + ReIssuebookLimit + "' )";

            using (SqlConnection conn = new SqlConnection(cs))
            {



                SqlCommand cmd = new SqlCommand(q3, conn);
                conn.Open();

                int numRows = cmd.ExecuteNonQuery();

                lblMemAdd.Text = Convert.ToString("Successfully Added :" + fName + " " + lName);

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