<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="Taruc_Accomodation_Systems.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        Enter your email address : <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="retreivepass" runat="server" Text="Retreive Password" OnClick="retreivepass_Click"></asp:Button><br />
        <asp:Label ID="lblmsg" runat="server" Text="label"></asp:Label>
    </center>
    </div>
    </form>
</body>
</html>
