using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterExample
{
    public partial class libSearchBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.aspx");
        }

        protected void btnRequests_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/libExtensionRequest.aspx");
        }

        protected void btnSearchBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/libSearchBook.aspx");
        }

        protected void btnIssue_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/libIssueBook.aspx");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/libReturnBook.aspx");
        }

        protected void btnPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/libFinePayment.aspx");
        }

        protected void btnGenerate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/libGenerateReport.aspx");
        }
    }
}