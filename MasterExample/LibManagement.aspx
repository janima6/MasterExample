<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LibManagement.aspx.cs" Inherits="MasterExample.WebForm4" %>
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
    
<br />
    <asp:Label ID="Label2" runat="server" Text="All Added Librarians" Font-Size="X-Large" ForeColor="White" Font-Bold="True"></asp:Label>&nbsp;
    <br />
    <br />
      
                <asp:GridView ID="grdAllBooks" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="LibDataSource" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdAllBooks_SelectedIndexChanged" Width="798px" CssClass="centerLibMgmt">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                        <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete Librarian" ShowHeader="True" Text="Delete" />
                        <asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Edit Librarian" ShowHeader="True" Text="Edit" />
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
    <br />
      <br />
    <br />


                <asp:SqlDataSource ID="LibDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Lib]"></asp:SqlDataSource>

        
           
       <p>

          <asp:Button ID="btnAdminAddLib" runat="server" Text="Add Librarian" CssClass="roundcorner" BackColor="#00CC99" OnClick="btnAdminAddLib_Click" />

            </p>

     
</asp:Content>
