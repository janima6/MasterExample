using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;



namespace MasterExample
{
    public partial class Index : System.Web.UI.Page
    {
        LibraryDataSetTableAdapters.login_tableTableAdapter adplogin_table = new LibraryDataSetTableAdapters.login_tableTableAdapter();
        LibraryDataSet.login_tableDataTable tbllogintable = new LibraryDataSet.login_tableDataTable();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text.Trim();
            string password = Encryptor.EncryptText(txtPassword.Text.Trim());

            tbllogintable = adplogin_table.GetUserByUsernamePassword(username, password);

            if (tbllogintable.Count == 1)
            {
                var row = tbllogintable[0];   // read the only row

                // initialize FormsAuthentication
                FormsAuthentication.Initialize();

                // create a new ticket used for authentication
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
                    1,                              // ticket version
                    username,                       // username associated with ticket
                    DateTime.Now,                   // date/time issued
                    DateTime.Now.AddMinutes(30),    // date/time to expire
                    chkRememberMe.Checked,          // "true" for a persistent user cookie
                    row.role,                       // user-data, in this case the roles
                    FormsAuthentication.FormsCookiePath);   // path cookie is valid for

                // encrypt the ticket using the machine key for secure transport
                string hashedTicket = FormsAuthentication.Encrypt(ticket);

                // create cookie
                HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hashedTicket);

                // set the cookie's expiration time to the ticket's expiration time
                if (ticket.IsPersistent)
                    cookie.Expires = ticket.Expiration;

                // add the cookie to the list for outgoing response
                Response.Cookies.Add(cookie);

                // redirect to requested URL, or to the role's homepage
                string returnUrl = Request.QueryString["ReturnUrl"];

                if (returnUrl == null)
                {
                    if (row.role == "admin")
                        returnUrl = "~/Admin/";
                    else if (row.role == "member")
                        returnUrl = "~/Member/";
                    else if (row.role == "librarian")
                        returnUrl = "~/Librarian/";
                    else
                        returnUrl = "~/";
                }

                Session["Username"] = username;
                Session["Role"] = row.role;

                Response.Redirect(returnUrl);
            }
            else
                lblMessage.Text = "Login failed. Please try again.";
        }

    }
    }
