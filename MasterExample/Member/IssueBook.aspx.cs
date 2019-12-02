using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using MasterExample.LibraryDataSetTableAdapters;

namespace LibraryManagementSystem
{
    public partial class IssueBook : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            { 
                string query = "select publication_name from book_info where available >=0 ";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DropDownList1.DataSource = reader;
                DropDownList1.DataValueField = "publication_name";
                DropDownList1.DataTextField = "publication_name";
                DropDownList1.DataBind();
            }

            }
      

        protected void btnLogout0_Click(object sender, EventArgs e)
        {

        }

        protected void btnSearchBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SearchBook.aspx");
        }

        protected void btnReturnBook0_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/ReturnBook.aspx");
        }

        protected void btnUnpaidOverdues0_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/UnpaidOverDues.aspx");
        }

        protected void btnHistory0_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/History.aspx");
        }

        protected void btnMyAccount0_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/MyAccount.aspx");
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {

           
                string fg = DropDownList1.SelectedItem.Text;
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {

                string query = "select * from book_info where publication_name=@pname";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@pname", DropDownList1.SelectedValue);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    lblName.Text = reader["book_title"].ToString();
                    lblAuthor.Text = reader["book_author"].ToString();

                    string book_id = reader["book_id"].ToString();
                    Session["bookId"] = book_id;

                    string pName = reader["publication_name"].ToString();

                    string a = reader["book_title"].ToString();
                    Session["bN"] = a;

                    string b = reader["isbn_number"].ToString();
                    Session["is"] = b;

                    string c = reader["book_author"].ToString();
                    Session["bA"] = c;

                    string d = reader["book_category"].ToString();
                    Session["bC"] = d;

                    string ep = reader["publication_name"].ToString();
                    Session["pN"] = ep;

                    string f = reader["available"].ToString();
                    Session["av"] = f;
                    reader.Close();
                }


            }
        }

        protected void btnIssueBook_Click(object sender, EventArgs e)
        {
         

        int mem_id = Convert.ToInt32(Session["memberID"]);
            int book_id = Convert.ToInt32(Session["bookId"]);

            string bName = Convert.ToString(Session["bN"]);

            requestedBooksTableAdapter adpRequest = new requestedBooksTableAdapter();
            //adpRequest.InsertBookRequst(mem_id, bookName, isbnNumber, isbnNumber, bookCate, publicationName, availble, book_id);

            lblDetails.Text = "Book Requested";



        }

        
    }
}