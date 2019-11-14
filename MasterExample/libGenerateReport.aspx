<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="libGenerateReport.aspx.cs" Inherits="MasterExample.libGenerateReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/LibStyles.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="btnRequests" CssClass="roundcorner" runat="server" Height="35px" Text="Extension Requests" Width="190px" OnClick="btnRequests_Click"/>
    <asp:Button ID="btnSearchBook" CssClass="roundcorner" runat="server" Height="35px" Text="Search a Book" Width="190px" OnClick="btnSearchBook_Click" />
    <asp:Button ID="btnIssue" CssClass="roundcorner" runat="server" Height="35px" Text="Issue a Book" Width="190px" OnClick="btnIssue_Click"/>
    <asp:Button ID="btnReturn" CssClass="roundcorner" runat="server" Height="35px" Text="Return a Book" Width="190px" OnClick="btnReturn_Click" />
    <asp:Button ID="btnPayment" CssClass="roundcorner" runat="server" Height="35px" Text="Calculate Fines and Payment" Width="190px" OnClick="btnPayment_Click" />
    <asp:Button ID="btnGenerate" CssClass="roundcorner" runat="server" Height="35px" Text="Generate Reports" Width="190px" OnClick="btnGenerate_Click"/>
    <asp:Button ID="btnLogout" CssClass="roundcorner" runat="server" Text="Logout" Width="190px" BackColor="#00CC99" Height="35px" OnClick="btnLogout_Click" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        Generate Report of All
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Books</asp:ListItem>
            <asp:ListItem>Authors</asp:ListItem>
            <asp:ListItem>Publishers</asp:ListItem>
            <asp:ListItem>Categories</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <asp:Button ID="Button1" runat="server" Height="27px" Text="Submit" Width="80px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button2" runat="server" Height="33px" Text="Generate report of All Issued books" Width="326px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button3" runat="server" Height="32px" Text="Generate report of All Overdue books" Width="328px" />
    </p>
</asp:Content>
