<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReceiptWriter.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="CostForm" runat="server">
        <asp:Panel ID="FormDiv" runat="server" DefaultButton="CalculateButton" >  
            
            <%-- Här hämtas kostnaden --%>
            <label for="Cost">Total köpesumma: </label>
            <asp:TextBox ID="Cost" runat="server"></asp:TextBox>

            <%-- Validering --%>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Du får inte lämna fältet tomt!" ControlToValidate="Cost" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Det du skriver måste kunna tolkas som ett tal större än 0." Display="Dynamic" ControlToValidate="Cost" Operator="GreaterThan" ValueToCompare="0" SetFocusOnError="True" Type="Double"></asp:CompareValidator>

            <asp:Button ID="CalculateButton" runat="server" Text="Skriv kvitto" OnClick="CalculateButton_Click" />
        </asp:Panel>
        
    </form>

    <%-- Kvittot som ska skrivas ut--%>
    <asp:Panel ID="ReceiptPanel" runat="server" Visible="false">
        <asp:Label ID="ReceiptTitle" runat="server" Text="DerpStore"></asp:Label>
        <asp:Label ID="ReceiptPhone" runat="server" Text="Telefon: 0761-223344"></asp:Label>
        <asp:Label ID="ReceiptOpenHours" runat="server" Text="Öppettider 8 -17"></asp:Label>

        <p>Totalt: <asp:Label ID="ReceiptSubtotal" runat="server"></asp:Label></p>
        <p>Rabattsats: <asp:Label ID="ReceiptDiscountRate" runat="server"></asp:Label></p>
        <p>Rabatt: <asp:Label ID="ReceiptMoneyOff" runat="server"></asp:Label></p>
        <p>Att betala: <asp:Label ID="ReceiptTotal" runat="server"></asp:Label></p>   
    </asp:Panel>

</body>
</html>
