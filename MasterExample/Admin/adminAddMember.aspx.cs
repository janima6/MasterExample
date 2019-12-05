using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using MasterExample.LibraryDataSetTableAdapters;
using System.Net.Mail;


namespace MasterExample
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        DataTable1TableAdapter adp = new DataTable1TableAdapter();
        member_info1TableAdapter adpInsert = new member_info1TableAdapter();
        login_tableTableAdapter adpIn = new login_tableTableAdapter();
        string lab;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string fName = txtAdmiAddMemFN.Text;
            string LName = txtAdmiAddMemLN.Text;
            string phoneNum = txtAdminAddMemPN.Text;
            string email = txtAdminAddMemEID.Text;
            string uName = txtUserName.Text.Trim();
            string pass = Encryptor.EncryptText(txtPassword.Text.Trim());
            string role = "member";
            int BookIssueLimit = 5;
            int BookReissueLimit = 5;

            if (UserExists(uName).Equals(uName))
            {
                lblMemAdd.Text = "This username is already taken. Please try again.";
                lblMemAdd.ForeColor = System.Drawing.Color.Red;
            }

            else
            {
                if (CreateUser(fName, LName, phoneNum, email, uName, pass, role, BookIssueLimit, BookReissueLimit) && CreateUserInLogin(uName, pass, role))
                {
                    lblMemAdd.Text = "New user created";
                    lblMemAdd.ForeColor = System.Drawing.Color.Green;
                    SendEmail(email, fName, LName, uName);
                }
                else
                {
                    lblMemAdd.Text = "New user not created";
                    lblMemAdd.ForeColor = System.Drawing.Color.Red;
                }
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
            Response.Redirect("~/Admin/Default.aspx");
        }

        private string UserExists(string username)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {

                string checkContinent = "select * from member_info";
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

        private bool CreateUser(string fName, string LName, string phoneNum, string email, string uName, string pass, string role, int BookIssueLimit, int   BookReissueLimit)
        {
            int result = adpInsert.InsertUser(fName, LName, phoneNum, email, uName, pass, BookIssueLimit, BookReissueLimit, role);
            return result == 1;
        }

        private bool CreateUserInLogin( string uName, string pass, string role)
        {
            int result = adpIn.InsertMember(uName, pass, role);
            return result == 1;
        }

        public void SendEmail(string email, string fName, string lName, string use)
        {

            MailMessage mailMessage = new MailMessage("thedogshowregi@gmail.com", email);
            mailMessage.Subject = "You have been added as a Library Member";
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