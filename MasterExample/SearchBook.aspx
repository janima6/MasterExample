<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SearchBook.aspx.cs" Inherits="LibraryManagementSystem.SearchBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 400px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
<asp:Button ID="btnIssueBook" runat="server" Text="Issue Book" Width="154px" OnClick="btnIssueBook_Click" />
<asp:Button ID="btnReturnBook" runat="server" Text="Return Book" Width="154px" OnClick="btnReturnBook_Click" />
<asp:Button ID="btnUnpaidOverdues" runat="server" Text="Unpaid Over dues" OnClick="btnUnpaidOverdues_Click" />
<asp:Button ID="btnHistory" runat="server" Text="History" Width="154px" OnClick="btnHistory_Click" />
<asp:Button ID="btnMyAccount0" runat="server" Text="My Account" Width="154px" OnClick="btnMyAccount0_Click1" />
        <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" Width="154px" />
</p>
    <h2 class="auto-style4" style="background-color: #00FF00">
        Search Book</h2>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Find result with :&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtTitle" runat="server" Width="147px"></asp:TextBox>
        <asp:Button ID="btnSearchTitle" runat="server" Text="Search by title" />
        <asp:Button ID="btnSearchAuthor" runat="server" Text="Search by Author" />
        <asp:Button ID="btnSearchByPublisher" runat="server" Text="Search by Publisher" />
        <asp:Button ID="btnSearchCategory" runat="server" Text="Search by Category" />
</p>
    <p class="auto-style3">
        &nbsp;</p>
    <p class="auto-style3">
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
