<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeleteAccount.aspx.cs" Inherits="LibraryManagementSystem.DeleteAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 1px;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 class="auto-style2" style="background-color: #00FF00">Request To Delete Account</h2>
    <p>
                <asp:Button ID="btnSearchBook" runat="server" Text="Search Book" Width="154px"  />
<asp:Button ID="btnIssueBook0" runat="server" Text="Issue Book" Width="154px" OnClick="btnIssueBook0_Click" style="height: 26px" />
<asp:Button ID="btnReturnBook0" runat="server" Text="Return Book" Width="154px" OnClick="btnReturnBook0_Click" />
<asp:Button ID="btnUnpaidOverdues0" runat="server" Text="Unpaid Over dues" OnClick="btnUnpaidOverdues0_Click" />
<asp:Button ID="btnHistory0" runat="server" Text="History" Width="154px" OnClick="btnHistory0_Click" />
<asp:Button ID="btnMyAccount0" runat="server" Text="My Account" Width="154px" OnClick="btnMyAccount0_Click" />
        <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" Width="154px"  style="height: 26px" />
        
        
    </p>
    <p>
                <asp:Button ID="btnViewAccount" runat="server" CssClass="btn"  Text="VIEW ACCOUNT"  />
        <asp:Button ID="btnEditAccount" runat="server" CssClass="btn"  Text="EDIT ACCOUNT" OnClick="btnEditAccount_Click" />
        <asp:Button ID="btnChangePass" runat="server" CssClass="btn"  Text="CHANGE PASSWORD" Width="201px" OnClick="btnChangePass_Click1"  />
        <asp:Button ID="btnDelete0" runat="server" OnClick="btnDelete_Click" Text="Delete Account" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
&nbsp;<asp:Button ID="btnDelete" runat="server" CssClass="auto-style1" ForeColor="Red" Text="Click here to send delete account request to admin" Width="763px" />
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
