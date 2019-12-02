<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAccount.aspx.cs" Inherits="LibraryManagementSystem.ViewAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h2 class="auto-style1" style="background-color: #00FF00">My Account Details</h2>
    <p class="auto-style1" style="Name">
                <asp:Button ID="btnSearchBook" runat="server" Text="Search Book" Width="154px"  />
<asp:Button ID="btnIssueBook0" runat="server" Text="Issue Book" Width="154px" OnClick="btnIssueBook0_Click" style="height: 26px" />
<asp:Button ID="btnReturnBook0" runat="server" Text="Return Book" Width="154px" OnClick="btnReturnBook0_Click" />
<asp:Button ID="btnUnpaidOverdues0" runat="server" Text="Unpaid Over dues" OnClick="btnUnpaidOverdues0_Click" />
<asp:Button ID="btnHistory0" runat="server" Text="History" Width="154px" OnClick="btnHistory0_Click" />
<asp:Button ID="btnMyAccount0" runat="server" Text="My Account" Width="154px" OnClick="btnMyAccount0_Click" />
        <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" Width="154px"  style="height: 26px" />
        
        
    </p>
    <p class="auto-style1" style="Name">
                <asp:Button ID="btnViewAccount" runat="server" CssClass="btn"  Text="VIEW ACCOUNT" OnClick="btnViewAccount_Click" />
        <asp:Button ID="btnEditAccount" runat="server" CssClass="btn"  Text="EDIT ACCOUNT" OnClick="btnEditAccount_Click" />
        <asp:Button ID="btnChangePass" runat="server" CssClass="btn"  Text="CHANGE PASSWORD" Width="201px" OnClick="btnChangePass_Click" />
                <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete Account" />
    </p>
    <p class="auto-style1" style="Name">
        Name:<asp:Label ID="lblName" runat="server"></asp:Label>
    </p>
    <p class="auto-style1" style="Name">
        Mobile:<asp:Label ID="lblMobile" runat="server"></asp:Label>
    </p>
    <p class="auto-style1" style="Name">
        Address:<asp:Label ID="lblAddress" runat="server"></asp:Label>
    </p>
    <p class="auto-style1" style="Name">
        City:<asp:Label ID="lblCity" runat="server"></asp:Label>
    </p>
    <p class="auto-style1" style="Name">
        Pincode:<asp:Label ID="lblPincode" runat="server"></asp:Label>
    </p>
    <p class="auto-style1" style="Name">
        Email:<asp:Label ID="lblEmail" runat="server"></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
