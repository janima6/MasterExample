<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MasterExample.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="css/indexCss.css" rel="stylesheet" />
    <script src="JS/JavaScript.js"></script>
    <title>Index LMS</title>
</head>
<body >
   
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
             <input class="button2" type="image" src="Images/Admin.png" alt="Submit" width="200" height="56" onclick="myFunction()" />
       
        <br />
         <br />
        <input class="button2" type="image" src="Images/Libra.png" alt="Submit" width="200" height="56" onclick="openLibrarianMain()"/>
        <br />
         <br />
        <input class="button2" type="image" src="Images/Member.png" alt="Submit" width="200" height="56"/>
    </p>
           
</div>
    
</body>
</html>
