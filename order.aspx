<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table cellpadding="0" cellspacing="0" width="600px">


<tr><td colspan="2" class="toptdback">Place Order</td></tr>
<tr><td  colspan="2">&nbsp;</td></tr>
<tr><td width="50%" style="height: 19px" class="lefttext">OrderId</td>
    <td width="50%" 
        style="height: 19px" class="lefttext">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
 
<tr ><td width="50%" class="lefttext">OrderDate</td><td width="50%" class="lefttext">
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Name</td><td width="50%" class="lefttext">
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Address</td><td width="50%" class="lefttext">
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                            </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%"  class="lefttext">ContactNo</td><td width="50%" class="lefttext">
    <asp:Label ID="Label5" runat="server"></asp:Label>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">TotalAmount</td><td width="50%" 
        class="lefttext">
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">TotalQuantity</td><td width="50%" 
        class="lefttext">
    <asp:Label ID="Label7" runat="server"></asp:Label>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Shipping Address</td><td width="50%">
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">
    <asp:Button ID="Button1" runat="server" Height="41px" Text="Confirm Order" 
        Width="140px" onclick="Button1_Click" />
    </td></tr>

</table>
  
</asp:Content>

