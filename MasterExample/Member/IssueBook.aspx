﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="LibraryManagementSystem.IssueBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     
        
       
             
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
     
        
       
             
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="auto-style1"><asp:Button ID="btnSearchBook" runat="server" Text="Search Book" Width="154px" OnClick="btnSearchBook_Click" />
<asp:Button ID="btnReturnBook0" runat="server" Text="Return Book" Width="154px" OnClick="btnReturnBook0_Click1" />
<asp:Button ID="btnUnpaidOverdues0" runat="server" Text="Unpaid Over dues" OnClick="btnUnpaidOverdues0_Click1" />
<asp:Button ID="btnHistory0" runat="server" Text="History" Width="154px" OnClick="btnHistory0_Click1" />
<asp:Button ID="btnMyAccount0" runat="server" Text="My Account" Width="154px" OnClick="btnMyAccount0_Click1" />
        <asp:Button ID="btnLogout" runat="server" Text="LOGOUT" Width="154px" />
        <br />
        <br />
        <h2 class="auto-style1" style="background-color: #00FF00">Book Issue</h2>
        <div class="auto-style2">
            Select Publication:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="false" >
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Book:<asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click" />
            <h3 class="auto-style1" style="background-color: #00FF00">View Book Details<br />
            </h3>
            <div class="auto-style2">
                <strong>Book Name:<asp:Label ID="lblName" runat="server"></asp:Label>
                <br />
                <asp:Image ID="Image1" runat="server" Width="154px" />
                <br />
                </strong>Author:<asp:Label ID="lblAuthor" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                Publication:<asp:Label ID="lblPublication" runat="server"></asp:Label>
                <br />
                Branch:<asp:Label ID="lblBranch" runat="server"></asp:Label>
                <br />
                Price:<asp:Label ID="lblPrice" runat="server"></asp:Label>
                <br />
                <br />
                Total Quantity:<asp:Label ID="lblTotal" runat="server"></asp:Label>
                <br />
                Available Quantity:<asp:Label ID="lblAvailable" runat="server"></asp:Label>
                <br />
                Rent Qnt:<asp:Label ID="lblRent" runat="server"></asp:Label>
                <br />
                Detail:
                <asp:Label ID="lblDetails" runat="server"></asp:Label>
                <br />
                <br />
                Days:
&nbsp;&nbsp;
                <asp:TextBox ID="txtDays" runat="server"></asp:TextBox>
                <asp:Button ID="btnIssueBook" runat="server" Text="Issue Book" OnClick="btnIssueBook_Click" />
                <br />
                
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
        <ul style="margin-left: 240px">
            <li>
            </li>
        </ul>
    </li>
    <li>
        <table >
            </table>
    </li>
        
     
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
