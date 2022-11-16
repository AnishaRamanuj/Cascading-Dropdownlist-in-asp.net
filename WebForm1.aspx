<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="taskproject.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>DropDownList Example in Asp.Net</title>

    <style>
        #tbBooks, #ddlBooks, #lblMessage
        {
            font:14px Verdana;
        }
    </style>
</head>
<body>
    <form runat="server">
    <div>
        <div>
            <%--ADD A TEXTBOX AND BUTTON.--%>
             <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
            <asp:TextBox ID="tbBooks" runat="server"></asp:TextBox>
                <asp:Button ID="btAdd" Text="Add" 
                    OnClick="Add_Num" runat="server" BackColor="#CCFF66"/>

            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbBooks" ErrorMessage="Add Numbers Only ." ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>

            <p>
                <%--YOUR DROPDOWNLIST CONTROL WITH A LABEL CONTROL (TO MESSAGE).--%>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sum" />
&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                
                <p>
                    &nbsp;</p>
            </p>
        </div>
    </div>
    </form>
</body>
</html>
