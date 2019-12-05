<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminAddLib.aspx.cs" Inherits="MasterExample.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/masterStyle.css" rel="stylesheet" />
    <link href="css/AdmiStyles.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            margin-left: 500px;
            float: left;
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
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
    
    <div class="auto-style2">
            <p class="auto-style3" style="margin-left:200px">New Librarian</p>
            
        <ul style="margin-left:200px">
             <li> 
                 <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                 <asp:TextBox ID="txtAdmiAddLinFN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAdmiAddLinFN" Display="Dynamic" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                <br />
                 </li>  
            <li>
                <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
                <asp:TextBox ID="txtAdmiAddLinLN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdmiAddLinLN" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                </li>
            <li>
                <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
                <asp:TextBox ID="txtAdminAddLibPN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdminAddLibPN" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
            </li>
            <li>
                <asp:Label ID="Label5" runat="server" Text="Email Id "></asp:Label>
                <asp:TextBox ID="txtAdminAddLinEID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAdminAddLinEID" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
            </li>

            <li>
                <asp:Label ID="Label6" runat="server" Text="UserName: "></asp:Label>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUserName" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
            </li>

            <li>
                <asp:Label ID="Label7" runat="server" Text="Passeword: "></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPassword" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
            </li>

            <li>
                <asp:Label ID="Label8" runat="server" Text="Confirm Passeword: "></asp:Label>
                <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtConfirm" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
            </li>

           </ul>
            

          <asp:Button ID="btnAddBook" runat="server" Text="Add" CssClass="roundcorner" BackColor="#00CC99" OnClick="btnAddBook_Click" />

            <br />
            <asp:Label ID="lblLibAdd" runat="server" ForeColor="White"></asp:Label>

            </p>
     

    </div>

     
</asp:Content>