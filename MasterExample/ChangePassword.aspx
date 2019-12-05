<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="LibraryManagementSystem.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 class="auto-style1" style="background-color: #00FF00">Change Password</h2>
    <p class="auto-style1">
                <asp:Button ID="btnSearchBook" runat="server" Text="Search Book" Width="154px"  />
<asp:Button ID="btnIssueBook0" runat="server" Text="Issue Book" Width="154px" OnClick="btnIssueBook0_Click" style="height: 26px" />
<asp:Button ID="btnReturnBook0" runat="server" Text="Return Book" Width="154px" OnClick="btnReturnBook0_Click" />
<asp:Button ID="btnUnpaidOverdues0" runat="server" Text="Unpaid Over dues" OnClick="btnUnpaidOverdues0_Click" />
<asp:Button ID="btnHistory0" runat="server" Text="History" Width="154px" OnClick="btnHistory0_Click" />
<asp:Button ID="btnMyAccount0" runat="server" Text="My Account" Width="154px" OnClick="btnMyAccount0_Click" />
        <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" Width="154px"  style="height: 26px" />
        
        
    </p>
    <p class="auto-style1">
                <asp:Button ID="btnViewAccount" runat="server" CssClass="btn"  Text="VIEW ACCOUNT" OnClick="btnViewAccount_Click" />
        <asp:Button ID="btnEditAccount" runat="server" CssClass="btn"  Text="EDIT ACCOUNT" OnClick="btnEditAccount_Click" />
        <asp:Button ID="btnChangePass" runat="server" CssClass="btn"  Text="CHANGE PASSWORD" Width="201px" OnClick="btnChangePass_Click" />
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Account" />
    </p>
    <p class="auto-style1">
        <strong>Enter a New Password:<asp:TextBox ID="txtChngePassword" runat="server"></asp:TextBox>
        </strong>
    </p>
    <p class="auto-style1">
        <strong>Confirm- Password:</strong><asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style1">
        <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" />
    </p>
    <p class="auto-style1">
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
