<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Receipt.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="CostForm" runat="server">
    <div>
        <asp:TextBox ID="TotalCost" runat="server"></asp:TextBox>
        <asp:Button ID="CalculateButton" runat="server" Text="Skriv kvitto" OnClick="CalculateButton_Click" />
    </div>
    </form>
</body>
</html>
