<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tip_tailoring.aspx.cs" Inherits="tip_tailoring" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.24/themes/base/jquery-ui.css">
  <style>#slider { margin: 10px; width:200px; height:1px }	</style>
  <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
  <script src="http://code.jquery.com/ui/1.8.24/jquery-ui.js"></script>

    <title></title>
</head>
<body>
<p style="font-family:Berlin Sans FB; font-size:xx-large" align="center">Tip Tailoring</p>
    <form id="form1" runat="server">
    <div>
    <table align="center" style="font-family:Berlin Sans FB; font-size:large" cellspacing="20" cellpadding="3">
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
    
        <asp:TextBox ID="txtName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"name") %>'></asp:TextBox>
            
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ErrorMessage="Name Required" ControlToValidate="txtName"></asp:RequiredFieldValidator>

    

    
    </td>
    
  

    <td>
        <asp:Label ID="lblDollar" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"dollar") %>'></asp:Label>
    
    </td>

    <td>
    <asp:TextBox ID="txtTipValue" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"value") %>'></asp:TextBox>&nbsp;&nbsp<br /><br />
    <asp:CompareValidator ControlToValidate="txtTipValue" Type="Double"  Operator="DataTypeCheck"  ID="CompareValidator1" runat="server" ErrorMessage="Numeric Entry Required"></asp:CompareValidator>

    </td>
    </tr></ItemTemplate>
    </asp:Repeater>
    </table>
    
    <center><asp:Button ID="cmdSubmit" runat="server" Text="Submit" OnClick="cmdSubmit_Click" />    
    <asp:Literal ID="litResults" runat="server"></asp:Literal></center>
    </div>
    
    </form>
</body>
</html>
