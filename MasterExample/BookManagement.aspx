<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BookManagement.aspx.cs" Inherits="MasterExample.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/masterStyle.css" rel="stylesheet" />
    <link href="css/AdmiStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
   <ul>
       <li>

            <asp:Button ID="btnHome" runat="server" Text="Admin Main Page" CssClass="roundcornerTwo" BackColor="#009999" OnClick="btnHome_Click" CausesValidation="False"/>
       </li>
      <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnAdminBookMgmt" runat="server" Text="Book Management" CssClass="roundcornerTwo" BackColor="#009999" OnClick="btnAdminBookMgmt_Click" CausesValidation="False" /></li>  
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
       <li><asp:Button ID="btnAdminLibraMgmt" runat="server" Text="Librarian Management"  CssClass="roundcornerTwo" BackColor="#009999" OnClick="btnAdminLibraMgmt_Click" CausesValidation="False" /></li> 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   

        <li><asp:Button ID="btnAdminMemberMgmt" runat="server" Text="Member Management"  CssClass="roundcornerTwo" BackColor="#009999" OnClick="btnAdminMemberMgmt_Click" CausesValidation="False" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;
                   
                        
         <asp:Button ID="btnAdminLogout" runat="server" Text="Logout" CssClass="roundcorner" BackColor="#00CC99" CausesValidation="False"/>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
       <li>

           <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Large" Text="Welcome Admin" ForeColor="White"></asp:Label>
       </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="margin-left:130px">
    <asp:Label ID="Label2" runat="server" Text="All Added Books" Font-Size="X-Large" ForeColor="White" Font-Bold="True"></asp:Label>&nbsp;
    </p>
        <p style="margin-left:120px">
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearchByBookName" runat="server" Text="Search By BookName" />
        <asp:Button ID="btnSearchByAuther" runat="server" Text="Search By Auther Name" />
        <asp:Button ID="searchByCode" runat="server" Text="Search By Book Code" />
            </p>
            <p>
                

              <asp:GridView ID="grdAllBooks" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="BookId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdAllBooks_SelectedIndexChanged" Width="1000px" CssClass="centerBoobMgmt">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="BookId" HeaderText="BookId" InsertVisible="False" ReadOnly="True" SortExpression="BookId" />
                        <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                        <asp:BoundField DataField="AutherName" HeaderText="AutherName" SortExpression="AutherName" />
                        <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
                        <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                        <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete Book" ShowHeader="True" Text="Delete" />
                        <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit Book" ShowHeader="True" Text="Edit" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>

                 <br />
        <br />
    <br />

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Book]"></asp:SqlDataSource>

            </p>
     <br />
        <br />
    <br />
   
            
       
            <p style="margin-left:170px">

          <asp:Button ID="btnAdminAddBook0" runat="server" Text="Add Book" CssClass="roundcorner" BackColor="#00CC99" OnClick="btnAdminAddBook0_Click" />

            </p>
     

   
     
</asp:Content>
