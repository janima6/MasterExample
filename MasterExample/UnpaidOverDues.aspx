<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UnpaidOverDues.aspx.cs" Inherits="LibraryManagementSystem.UnpaidOverDues" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li><asp:Button ID="btnSearchBook" runat="server" Text="Search Book" Width="154px" OnClick="btnSearchBook_Click" />
<asp:Button ID="btnIssueBook0" runat="server" Text="Issue Book" Width="154px" OnClick="btnIssueBook0_Click1" />
<asp:Button ID="btnReturnBook0" runat="server" Text="Return Book" Width="154px" OnClick="btnReturnBook0_Click1" />
<asp:Button ID="btnHistory0" runat="server" Text="History" Width="154px" OnClick="btnHistory0_Click1" />
<asp:Button ID="btnMyAccount0" runat="server" Text="My Account" Width="154px" OnClick="btnMyAccount0_Click1" />
        <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" Width="154px" />
    </li>
    <li>
        <h2 class="auto-style1" style="background-color: #00FF00">List of Books</h2>
    </li>
    <li>&nbsp; </li>
    <li></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
