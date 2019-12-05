<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="LibraryManagementSystem.History" %>
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
<asp:Button ID="btnUnpaidOverdues0" runat="server" Text="Unpaid Over dues" OnClick="btnUnpaidOverdues0_Click1" />
<asp:Button ID="btnMyAccount0" runat="server" Text="My Account" Width="154px" OnClick="btnMyAccount0_Click1" />
        <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" Width="154px" />
    </li>
    <li>
    </li>
    <li>
        <h2 class="auto-style1" style="background-color: #00FF00">History</h2>
    </li>
    <li></li>
    <ul style="margin-left: 200px">
        <li>
            <asp:Button ID="btnHistoryBook" runat="server" CssClass="btn"  Text="History Of Book" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnHistoryReturn" runat="server" CssClass="btn"  Text="History of Return" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnHisotruOverdue" runat="server" CssClass="btn"  Text="History Of overdue paid" Width="201px" />
&nbsp;&nbsp;&nbsp; </li>
    </ul>
    <li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
