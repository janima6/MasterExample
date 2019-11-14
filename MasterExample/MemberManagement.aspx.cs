﻿using System;
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

        protected void btnAdminAddBook0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminAddMember.aspx");
        }

        protected void btnAdminMemberMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/MemberManagement.aspx");
        }

        protected void grdAllBooks_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnAdminBookMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/BookManagement.aspx");
        }

        protected void btnAdminLibraMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LibManagement.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminLandingPage.aspx");
        }
    }
}