using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class ReturnBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
                       
        protected void btnIssueBook0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IssueBook.aspx");
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

        protected void btnLogout_Click(object sender, EventArgs e)
        {

        }

        protected void btnSearchBook_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchBook.aspx");
        }
    }
}