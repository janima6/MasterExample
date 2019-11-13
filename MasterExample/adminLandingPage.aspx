<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLandingPage.aspx.cs" Inherits="MasterExample.WebForm2" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/masterStyle.css" rel="stylesheet" />
    <link href="css/AdmiStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
   <ul>
      <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btnAdminBookMgmt" runat="server" Text="Book Management" CssClass="roundcorner" BackColor="#009999" OnClick="btnAdminBookMgmt_Click" /></li>  
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  
       <li><asp:Button ID="btnAdminLibraMgmt" runat="server" Text="Librarian Management"  CssClass="roundcorner" BackColor="#009999" OnClick="btnAdminLibraMgmt_Click" /></li> 
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   

        <li><asp:Button ID="btnAdminMemberMgmt" runat="server" Text="Member Management"  CssClass="roundcorner" BackColor="#009999" OnClick="btnAdminMemberMgmt_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;
                   
                        
         <asp:Button ID="btnAdminLogout" runat="server" Text="Logout" CssClass="roundcorner" BackColor="#00CC99"/>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
       <li>
           <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Large" Text="Welcome Admin" ForeColor="White"></asp:Label>
       </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <aside>



    </aside>
</asp:Content>
