<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.24/themes/base/jquery-ui.css">
  <style>#slider { margin: 10px; width:200px; height:1px }	</style>
  <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
  <script src="http://code.jquery.com/ui/1.8.24/jquery-ui.js"></script>
  
</head>
<body>
<form id="f1" runat="server">
<table align="right" style="font-family:Berlin Sans FB; font-size:medium" cellspacing="20" cellpadding="3">
<tr>
<td colspan="2" style="font-family:Berlin Sans FB; font-size:x-large" align="center">
My Settings
</td></tr>
<tr>
<td>Minimum Range</td>
<td>
<asp:TextBox ID="txtMin"  Text="0" runat="server" Columns="3"></asp:TextBox>
<asp:CompareValidator ControlToValidate="txtMin" Type="Integer"  Operator="DataTypeCheck"  ID="CompareValidator1" runat="server" ErrorMessage="Numeric Entry Required"></asp:CompareValidator>
   
</td></tr>
<tr>
<td>Maximum Range</td>
<td>
<asp:TextBox ID="txtMax" Columns="3" Text="50" runat="server"></asp:TextBox>
<asp:CompareValidator ControlToValidate="txtMax" Type="Integer"  Operator="DataTypeCheck"  ID="CompareValidator2" runat="server" ErrorMessage="Numeric Entry Required"></asp:CompareValidator>

</td></tr>

<tr>
<td>
Include Tax
</td>

<td align="left">
<asp:RadioButtonList    ID="radTax" runat="server">
<asp:ListItem Selected="True">Yes</asp:ListItem>
<asp:ListItem>No</asp:ListItem>        
    </asp:RadioButtonList>
    </td>
    </tr>
    <tr>
    <td>
    Include Deductions</td>
    <td align="left">
    <asp:RadioButtonList  ID="radDeduc" runat="server">
<asp:ListItem Selected="True">Yes</asp:ListItem>
<asp:ListItem>No</asp:ListItem>        
    </asp:RadioButtonList>
    </td>
</tr>

<tr>
<td colspan="2" align="center">
<asp:Button ID="butconf" runat="server" onclick="conf" Text="Click to Apply the New Tip Items Settings"></asp:Button>
</td></tr>
<tr><td colspan="2" align="center" align="center">
    <asp:Button ID="butConfiguringTipItems" runat="server" 
    Text="ConfiguringTipItems" OnClick="clkConfiguringTipItems"/>

</td></tr>
<tr>
<td colspan="2" align="center">
<asp:Label ID="lblError" style="font-family:Berlin Sans FB; font-size:large; color:Red" runat="server" Text=""></asp:Label>

</td></tr>
</table>








<table align="right" style="font-family:Berlin Sans FB; font-size:small" cellspacing="5" cellpadding="1">
    <asp:Repeater ID="rep1" runat="server">
             <HeaderTemplate>
    <thead>
    <tr>
    <th>Name of Guest</th>
  
    <th></th>
    <th>Tip</th>
    </tr></thead></HeaderTemplate>
   
   

    <ItemTemplate>
    <tr>
    <td>
    
        <asp:TextBox ID="txtName" Enabled="false" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"name") %>'></asp:TextBox>
            
        
    

    
    </td>
    
  

    <td>
        <asp:Label ID="lblDollar" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"dollar") %>'></asp:Label>
    
    </td>

    <td>
    <asp:TextBox ID="txtTipValue" Enabled="false" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"value") %>'></asp:TextBox>&nbsp;&nbsp<br /><br />
    
    </td>
    </tr></ItemTemplate>
    </asp:Repeater>
    </table>  


<table style="font-family:Berlin Sans FB; font-size:large" cellspacing="20" cellpadding="3">
<tr>
<td colspan="2" style="font-family:Berlin Sans FB; font-size:xx-large" align="center">Tip Splitting Calculator</td></tr>

<tr>
<td>
<asp:Label ID="lblNoOfGuests" runat="server" Text="No Of Guests"></asp:Label>

</td>

<td>
<asp:TextBox ID="txtNoOfGuests" runat="server"></asp:TextBox>
<asp:CompareValidator ControlToValidate="txtNoOfGuests" Type="Integer"  Operator="DataTypeCheck"  ID="CompareValidator3" runat="server" ErrorMessage="Numeric Entry Required"></asp:CompareValidator>

</td></tr>
<tr>
<td>
<asp:Label ID="lblQOS" runat="server" Text="Quality Of Service"></asp:Label>
</td>

<td>
    <div id="slider"></div>
   
    
<script>

   var high=15;
   var low=0;
     //document.getElementById("txtMax").value = high;
   //document.getElementById("txtMin").value = low;

    $("#slider").slider({
        value: (document.getElementById("txtMin").value+document.getElementById("txtMax").value)/2,
        min: document.getElementById("txtMin").value,
        max: document.getElementById("txtMax").value,
        step: 1,
        
        animate:true,
    });
    
    
</script>

</td></tr>

<tr>
<td>
<asp:Label ID="lblBillTotal" runat="server" Text="Bill Total" ></asp:Label>
</td>
<td>
    <asp:Label ID="lblDollar1" runat="server" Text="$"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="txtBillTotal" runat="server"></asp:TextBox>
<asp:CompareValidator ControlToValidate="txtBillTotal" Type="Double"  Operator="DataTypeCheck"  ID="CompareValidator4" runat="server" ErrorMessage="Numeric Entry Required"></asp:CompareValidator>

</td>
</tr>

<tr>
<td>
    <asp:Label ID="lblBillDeductions" runat="server" Text="Bill Deductions"></asp:Label>
</td>

<td>
    <asp:Label ID="lblDollar2" runat="server" Text="$"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="txtBillDeductions" runat="server"></asp:TextBox>

</td></tr>

<tr>
<td>
    <asp:Label ID="lblTax" runat="server" Text="Tax"></asp:Label>
</td>

<td>
    <asp:Label ID="Label2" runat="server" Text="$"></asp:Label>&nbsp;&nbsp;
    <asp:TextBox ID="txtTax" runat="server"></asp:TextBox>

</td></tr>

<tr>
<td>
    <asp:Label ID="lblTpRate" runat="server" Text="Tip Rate"></asp:Label>
</td>

<td>
    <asp:TextBox ID="lblTipRate" runat="server"></asp:TextBox>
    <script>
        $("#slider").slider({
            change: function (event, ui) {
                document.getElementById("lblTipRate").value = $("#slider").slider("value");
                // var abc = $("#slider").slider("option(max)")
                // var xyz = abc.toString();

                //alert(xyz);
                // document.getElementById("lblMax").innerHTML = abc.
                //alert($("#slider").slider($('abc').prop('outerHTML')));
            }
        });
</script>

    <asp:Label ID="lblPer" runat="server" Text="%"></asp:Label>
</td></tr>

<tr>
<td>
    <asp:Label ID="lblTotTip" runat="server" Text="Total Tip"></asp:Label>

</td>

<td>
    <asp:Label ID="lblDollar3" runat="server" Text="$"></asp:Label>&nbsp;&nbsp
    <asp:TextBox ID="lblTotalTip" Enabled="false" runat="server" ></asp:TextBox>&nbsp;&nbsp;&nbsp;

<asp:Button ID="butconfigTip" runat="server" 
    Text="Click to apply the Tip Tailoring" OnClick="clkTailorTip"/>

</td>
</tr>

<tr>

<td>
<asp:Label ID="lblPrPrsonTip" runat="server" Text="Per Person Tip"></asp:Label>
</td>

<td>
    <asp:Label ID="lblDollar4" runat="server" Text="$"></asp:Label>&nbsp;&nbsp
    
    <asp:TextBox ID="lblPerPersonTip" Enabled="false" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;

    <asp:Button ID="butTipTailoring" runat="server" Text="TipTailoring" OnClick="clkTipTailoring"/>


</td></tr>

<tr>

<td>
<asp:Label ID="lblTot" runat="server" Text="Total(Bill and Tip)"></asp:Label>
</td>
<td>
    <asp:Label ID="lblDollar5" runat="server" Text="$"></asp:Label>&nbsp;&nbsp
    
    <asp:TextBox ID="lblTotal" Enabled="false" runat="server"></asp:TextBox>
</td></tr>
<tr>
<td colspan="2" align="center">
<asp:Button ID="butCalculateTotal" runat="server" Text="Calculate Total" OnClick="calcTotal"  />

</td></tr>

</table>


  



   
</form>
    
</body>

</html>
