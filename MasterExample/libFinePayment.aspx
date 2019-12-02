<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="libFinePayment.aspx.cs" Inherits="MasterExample.libFinePayment" %>
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
        Overdue Books</p>
    <p>
        &nbsp;<asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CheckBoxField HeaderText="Select" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </p>
    <p>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Payment Done" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="31px" Text="Submit" Width="96px" />
    </p>
</asp:Content>
