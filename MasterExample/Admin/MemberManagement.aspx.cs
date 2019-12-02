using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterExample
{
    public partial class WebForm7 : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAddAdminMember_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/adminAddMember.aspx");
        }

        protected void SearchFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnFindMemByFName_Click(object sender, EventArgs e)
        {


        }

        protected void btnFindMemByFName_Click1(object sender, EventArgs e)
        {
            grdAllBooks.DataSourceID = "";
            SqlDataSource2.SelectCommand = "SELECT * FROM  member_info where mem_first_name=@mem_first_name";
            SqlDataSource2.InsertParameters.Add("@@mem_first_name", txtSearch.Text);
            GridView2.DataSource = SqlDataSource2;
            GridView2.DataBind();
            GridView2.Visible = true;
           
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Default.aspx");
        }
    }
}