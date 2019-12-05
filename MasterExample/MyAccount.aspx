<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="LibraryManagementSystem.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        
        .tblhead
        {
            background:green;
            color:#fff;
            text-align:center;
            font-weight:bold;
            height:30px;
            
            }
            
        .btn {}
        .auto-style4 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="btnSearchBook0" runat="server" Text="Search Book" Width="154px" OnClick="btnSearchBook0_Click1" />
<asp:Button ID="btnIssueBook0" runat="server" Text="Issue Book" Width="154px" OnClick="btnIssueBook0_Click1" />
<asp:Button ID="btnReturnBook0" runat="server" Text="Return Book" Width="154px" OnClick="btnReturnBook0_Click1" />
<asp:Button ID="btnUnpaidOverdues0" runat="server" Text="Unpaid Over dues" OnClick="btnUnpaidOverdues0_Click1" />
<asp:Button ID="btnHistory0" runat="server" Text="History" Width="154px" OnClick="btnHistory0_Click1" />
    <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" Width="125px" />
    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2 class="auto-style4" style="background-color: #00FF00">&nbsp;&nbsp;My Account</h2>
        <br />
        <ul style="margin-left: 120px">
            <li>
                <asp:Button ID="btnViewAccount" runat="server" CssClass="btn"  Text="VIEW ACCOUNT" OnClick="btnViewAccount_Click" />
&nbsp;<asp:Button ID="btnEditAccount" runat="server" CssClass="btn"  Text="EDIT ACCOUNT" OnClick="btnEditAccount_Click" />
&nbsp;<asp:Button ID="btnChangePass" runat="server" CssClass="btn"  Text="CHANGE PASSWORD" Width="201px" OnClick="btnChangePass_Click" />
&nbsp;
                <asp:Button ID="btnDelete" runat="server"  Text="Delete Account" OnClick="btnDelete_Click1" />
            </li>
            
        </ul>
    </li>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
