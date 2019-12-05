<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MasterExample.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="css/indexCss.css" rel="stylesheet" />
    <script src="JS/JavaScript.js"></script>
    <title>Index LMS</title>
</head>
<body >
   
        <form id="form1" runat="server">
   
        <div class="container">
    <p>
     Welcome to 
         <br />
         <br />
        LMH Library
        <br />
         <br />
        Get in as:
        <br />
        <br />
             &nbsp;<br />
         <br />
        UserName:
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
    <br />
                Password:
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        <br />
        <asp:CheckBox ID="chkRememberMe" runat="server" />
         <br />
        <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
</div>
    
        </form>
    
</body>
</html>
