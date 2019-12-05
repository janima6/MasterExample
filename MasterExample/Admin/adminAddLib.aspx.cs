using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

using System.Net.Mail;
using MasterExample.LibraryDataSetTableAdapters;

namespace MasterExample
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string lab;
        librarian_infoTableAdapter adpInsert = new librarian_infoTableAdapter();
        login_tableTableAdapter adpIn = new login_tableTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)

        {

            string fName = txtAdmiAddLinFN.Text;
            string lName = txtAdmiAddLinLN.Text;
            string pNumber = txtAdminAddLibPN.Text;
            string eMail = txtAdminAddLinEID.Text;
            string uName = txtUserName.Text.Trim();
            string pass = Encryptor.EncryptText(txtPassword.Text.Trim());
            string role = "librarian";

            //if (UserExists(uName).Equals(uName))
            //{
            //    lblLibAdd.Text = "This username is already taken. Please try again.";
            //    lblLibAdd.ForeColor = System.Drawing.Color.Red;
            //}

            //else
            //{
            //}
            if (CreateUser(fName, lName, pNumber, eMail, uName, pass, role) && CreateUserInLogin(uName, pass, role))
            {
                lblLibAdd.Text = "New Librarian created";
                lblLibAdd.ForeColor = System.Drawing.Color.Green;
                SendEmail(eMail, fName, lName, uName);
            }
            else
            {
                lblLibAdd.Text = "New Librarian not created";
                lblLibAdd.ForeColor = System.Drawing.Color.Red;
            }


        }

    

        protected void btnAdminBookMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/BookManagement.aspx");
        }

        protected void btnAdminLibraMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/LibManagement.aspx");
        }

        protected void btnAdminMemberMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/MemberManagement.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Defualt.aspx");
        }

        private string UserExists(string username)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {

                string checkContinent = "select * from librarian_info";
                SqlCommand cmdR = new SqlCommand(checkContinent, conn);
                conn.Open();
                SqlDataReader reader = cmdR.ExecuteReader();

                if (reader.Read())
                {
                    lab = reader["user_name"].ToString();

                }

                reader.Close();
                return lab;

            }
        }


        private bool CreateUser(string fName, string lName, string pNumber, string eMail,string  uName, string  pass, string role)
        {
            int result = adpInsert.InsertLibrarianQuery(fName, lName, pNumber, eMail, uName, pass, role);
            return result == 1;
        }

        private bool CreateUserInLogin(string uName, string pass, string role)
        {
            int result = adpIn.InsertMember(uName, pass, role);
            return result == 1;
        }

        public void SendEmail(string email, string fName, string lName, string use)
        {

            MailMessage mailMessage = new MailMessage("thedogshowregi@gmail.com", email);
            mailMessage.Subject = "You have been added as a Librarian";
            mailMessage.Body = "Your Details are as follow \n" + "Firstname: \n" + fName + "LastName \n" + lName +
                "Username: " + use;

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {

                UserName = "thedogshowregi@gmail.com",
                Password = "@#Boston92"

            };

            smtpClient.EnableSsl = true;
            smtpClient.Send(mailMessage);
        }


    }
}