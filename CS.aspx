<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS.aspx.cs" Inherits="taskproject.CS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

         City : 
        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <br />
        Select 
        <asp:DropDownList ID="ddlCustomers" runat="server" AutoPostBack = "true">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <p>---Customer Details---</p>
        <hr />
       
       
    </div>
    </form>
</body>
</html>