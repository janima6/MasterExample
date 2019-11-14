<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="libExtensionRequest.aspx.cs" Inherits="MasterExample.libExtensionRequest" %>
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

    <br />
    <br />
    <br />
    <br />
    Member ID :
    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="144px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp; Book ID :
    <asp:TextBox ID="TextBox2" runat="server" Width="145px" Height="16px"></asp:TextBox>
    <br />
    <br />
    Due date of book :
    <asp:TextBox ID="TextBox3" runat="server" Width="141px" Height="17px"></asp:TextBox>
    <br />
    <br />
    Number of extended days :
    <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="139px"></asp:TextBox>
    <br />
    <br />
    New book due date :
    <asp:TextBox ID="TextBox5" runat="server" Height="18px" Width="146px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" Height="33px" Width="85px" />
    <br />
    <br />
    <br />

</asp:Content>
