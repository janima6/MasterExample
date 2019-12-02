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
    public partial class WebForm5 : System.Web.UI.Page
    {
        book_infoTableAdapter adpBook = new book_infoTableAdapter();
        string lab;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            string bName = txtAdminAddBookName.Text;
            string aName = txtAdminAuthorName.Text;
            string pName = txtAdminAddPub.Text;
            string cName = txtAdminAddCate.Text;
            string isbn = txtBookIsbn.Text.ToLower();
            int qty = Convert.ToInt32(txtBookQuantity.Text);

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {

                string checkContinent = "select * from book_info";
                SqlCommand cmdR = new SqlCommand(checkContinent, conn);
                conn.Open();
                SqlDataReader reader = cmdR.ExecuteReader();

                if (reader.Read())
                {
                    lab = reader["isbn_number"].ToString();
                    reader.Close();
                }

                

                else {
                    lblBookAdd.Text = "Book with this ISBN is already added";
                }
            }


            if (!lab.Equals(isbn) || lab == null)
            {

                AddBook(bName, aName, pName, cName, isbn, qty);
                lblBookAdd.Text = "New Book created";
                lblBookAdd.ForeColor = System.Drawing.Color.Green;

            }

            else {
                lblBookAdd.Text = "New Book Not Added";

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
            if (!IsPostBack)
            {
                Response.Redirect("~/Admin/adminLandingPage.aspx");
            }

        }

        private bool AddBook(string bName, string aName, string pName, string cName, string isbn, int qty)
        {
            int result = adpBook.InsertBook(bName, isbn, cName, aName, pName, qty);
            return result == 1;

        }

        
    }

}