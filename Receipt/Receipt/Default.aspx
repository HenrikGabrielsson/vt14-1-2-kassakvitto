<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReceiptWriter.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kassakvitto</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

    <h1>Kassakvitto</h1>
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
        <h2>Some Store</h2>
        <p class="info">Telefon: 0761-223344</p>
        <p class="info">Öppettider 8 -17</p>

        <p>Totalt: <asp:Label ID="ReceiptSubtotal" CssClass="receiptRow" runat="server"></asp:Label></p>
        <p>Rabattsats: <asp:Label ID="ReceiptDiscountRate" CssClass="receiptRow" runat="server"></asp:Label></p>
        <p>Rabatt: <asp:Label ID="ReceiptMoneyOff" CssClass="receiptRow" runat="server"></asp:Label></p>
        <p>Att betala: <asp:Label ID="ReceiptTotal" CssClass="receiptRow" runat="server"></asp:Label></p>   

        <p class="info">Välkommen åter!</p>

    </asp:Panel>

</body>
</html>
