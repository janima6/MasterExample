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
    public partial class WebForm5 : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string bName = txtAdminAddBookName.Text;
            string aName = txtAdminAuthorName.Text;
            string pName = txtAdminAddPub.Text;
            string cName = txtAdminAddCate.Text;

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string q3 = "Insert into Book values ('" +bName+"','"+aName+"', '" +pName+"','" +cName+"')";

            using (SqlConnection conn = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand(q3, conn);
                conn.Open();

                int numRows = cmd.ExecuteNonQuery();

                lblBookAdd.Text = Convert.ToString("Number of book(s) added: "+numRows);

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
            if (!IsPostBack)
            {
                Response.Redirect("~/adminLandingPage.aspx");
            }
        }
        }
    }
