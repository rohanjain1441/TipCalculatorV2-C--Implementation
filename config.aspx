<%@ Page Language="C#" AutoEventWireup="true" CodeFile="config.aspx.cs" Inherits="config" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
  
    <form id="form1" runat="server">
    <table align="center" style="font-family:Berlin Sans FB; font-size:large" cellspacing="20" cellpadding="3">
    <tr>
<td colspan="2" style="font-family:Berlin Sans FB; font-size:xx-large" align="center">Configuring Tip Items</td></tr>
<tr>
<td align="center" colspan="2">The tip range is the percentage <br />range for selecting tips. Defaults<br /> values are provided but you can<br /> adjust the range if you wish</td></tr>
<tr>
<td>
    <asp:Label ID="lblMinTip" runat="server" Text="Minimum Tip Percentage"></asp:Label>

</td>
<td>
    <asp:TextBox columns="5" ID="txtMinTip" text="0" runat="server"></asp:TextBox>
    <asp:CompareValidator ControlToValidate="txtMinTip" Type="Double"  Operator="DataTypeCheck"  ID="CompareValidator1" runat="server" ErrorMessage="Numeric Entry Required"></asp:CompareValidator>

</td>
</tr>

<tr>
<td>
    <asp:Label ID="lblMaxTip" runat="server" Text="Maximum Tip Percentage"></asp:Label>

</td>

<td>
    <asp:TextBox columns="5" ID="txtMaxTip" text="50" runat="server"></asp:TextBox>
    <asp:CompareValidator ControlToValidate="txtMaxTip" Type="Double"  Operator="DataTypeCheck"  ID="CompareValidator4" runat="server" ErrorMessage="Numeric Entry Required"></asp:CompareValidator>

</td></tr>
<tr>
<td colspan="2" align="center">The Tip Base is the items of the bill<br /> used to determine the Tip amount.<br /> The Tip Base consists of: the Bill<br /> total, the Tax and items deducted<br /> from the bill(discounts, refunds..)</p></td></tr>
<tr>
<td>Include Tax</td>

<td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ErrorMessage="Select an option to proceed" ControlToValidate="radTax"></asp:RequiredFieldValidator>

<asp:RadioButtonList ID="radTax" runat="server">
<asp:ListItem>Yes</asp:ListItem>
<asp:ListItem>No</asp:ListItem>        
    </asp:RadioButtonList>

</td></tr>

<tr>
<td>
Include Deductions
</td>
<td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Select an option to proceed" ControlToValidate="radDeduc"></asp:RequiredFieldValidator>

    <asp:RadioButtonList ID="radDeduc" runat="server">
<asp:ListItem>Yes</asp:ListItem>
<asp:ListItem>No</asp:ListItem>        
    </asp:RadioButtonList>


</td>
</tr>
<tr>
<td align="center" colspan="2">
    <asp:Button ID="butConfig" runat="server" Text="Configure" 
        onclick="butConfig_Click" />

</td></tr>
</table>

    
    
    


    
    
    </form>
</body>
</html>
