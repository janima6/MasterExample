using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class SearchBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        
        protected void btnLogout0_Click(object sender, EventArgs e)
        {

        }

        protected void btnIssueBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IssueBook.aspx");
        }

        protected void btnReturnBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ReturnBook.aspx");
        }

        protected void btnUnpaidOverdues_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UnpaidOverDues.aspx");
        }

        protected void btnHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/History.aspx");
        }

        protected void btnMyAccount0_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/MyAccount.aspx");
        }
    }
}