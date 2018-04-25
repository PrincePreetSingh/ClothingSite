<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewdetail.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder2" Runat="Server">

    <form id="form1" runat="server">

<table cellpadding="0" cellspacing="0" width="700px">


<tr><td colspan="2" class="prodltext">
 Product Code:&nbsp;&nbsp;&nbsp; <asp:Label ID="Label8" runat="server"></asp:Label>
    </td></tr>
<tr><td width="300px">
    <asp:Image ID="Image1" runat="server" Height="310px" Width="244px" />
    </td>

<td width="400px">

<table cellpadding="0" cellspacing="0" width="400px">


<tr><td width="50%" class="prodltext">ProductName</td><td width="50%">
    <asp:Label ID="Label1" runat="server" CssClass="prodrtext"></asp:Label>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Category</td><td width="50%">
    <asp:Label ID="Label2" runat="server" CssClass="prodrtext"></asp:Label>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Color</td><td width="50%">
    <asp:Label ID="Label3" runat="server" CssClass="prodrtext"></asp:Label>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Brand</td><td width="50%">
    <asp:Label ID="Label4" runat="server" CssClass="prodrtext"></asp:Label>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Size</td><td width="50%">
    <asp:Label ID="Label5" runat="server" CssClass="prodrtext"></asp:Label>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Price</td><td width="50%">
    <asp:Label ID="Label6" runat="server" CssClass="prodrtext"></asp:Label>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Product For</td><td width="50%">
    <asp:Label ID="Label7" runat="server" CssClass="prodrtext"></asp:Label>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Quantity</td><td width="50%">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="87px">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
    </asp:DropDownList>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">
    <asp:Button ID="Button1" runat="server" Text="Buy Now" Width="94px" 
        onclick="Button1_Click" />
    </td></tr>
</table>
</td>
</tr>
<tr><td colspan="2"><p>
    <asp:Label ID="Label9" runat="server" CssClass="prodrtext"></asp:Label>
    </p></td></tr>
</table>




    </form>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder3" Runat="Server">
</asp:Content>

