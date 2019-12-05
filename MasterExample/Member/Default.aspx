<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LibraryManagementSystem.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
       
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:Button ID="btnSearchBook0" runat="server" Text="Search Book" Width="154px" OnClick="btnSearchBook0_Click" />
<asp:Button ID="btnIssueBook0" runat="server" Text="Issue Book" Width="154px" OnClick="btnIssueBook0_Click" />
<asp:Button ID="btnReturnBook0" runat="server" Text="Return Book" Width="154px" OnClick="btnReturnBook0_Click" />
<asp:Button ID="btnUnpaidOverdues0" runat="server" Text="Unpaid Over dues" OnClick="btnUnpaidOverdues0_Click" />
<asp:Button ID="btnHistory0" runat="server" Text="History" Width="154px" OnClick="btnHistory0_Click" />
<asp:Button ID="btnMyAccount0" runat="server" Text="My Account" Width="154px" OnClick="btnMyAccount0_Click" />
    <asp:Button ID="btnLogout0" runat="server" Text="LOGOUT" Width="154px" OnClick="btnLogout0_Click" />
    &nbsp;
    <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
    &nbsp;<asp:Label ID="lblMemid" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White"></asp:Label>
    <br />
    <br />
    <h2 class="auto-style1" style="background-color: #00FF00">Welcome to HRM Library management system</h2>
    <br />
    <br />
<br />
<br />
</asp:Content>
