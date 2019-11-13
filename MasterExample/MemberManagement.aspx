<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemberManagement.aspx.cs" Inherits="MasterExample.WebForm7" %>
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

                   
                        
         <asp:Button ID="btnAdminLogout" runat="server" Text="Logout" CssClass="roundcorner" BackColor="#009999" CausesValidation="False"/>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            
            
       <li>
           <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Large" Text="Welcome Admin" ForeColor="White"></asp:Label>
       </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="center">
        <br />
        <p style="margin-left:250px">
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="txtFindMemByFName" runat="server" Text="Search By FirstName"  />
       <asp:Button ID="txtFindMemByEmailId" runat="server" Text="Search By Email Id" />
        <asp:Button ID="txtFindMemByPhone" runat="server"  Text="Search By PhoneNumber" />

            </p>
            <p>

                &nbsp;<asp:GridView ID="grdAllBooks" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdAllBooks_SelectedIndexChanged" Width="798px" CssClass="center">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                        <asp:BoundField DataField="BookLimit" HeaderText="BookLimit" SortExpression="BookLimit" />
                        <asp:BoundField DataField="perMemberBook" HeaderText="perMemberBook" SortExpression="perMemberBook" />
                        <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete Member" />
                        <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit Member" ShowHeader="True" Text="Edit" />
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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>

            </p>
            <p>

                &nbsp;</p>
            <p style="margin-left:250px">

          <asp:Button ID="btnAdminMember" runat="server" Text="Add Member" CssClass="roundcorner" BackColor="#00CC99" OnClick="btnAdminAddBook0_Click" />

            </p>
     

    </div>

     
</asp:Content>