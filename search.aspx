<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder2" Runat="Server">

    <form id="form1" runat="server">

<table cellpadding="0"  cellspacing="0" width="700px" align="center">
<tr><td width="50%" class="toptdback" colspan="2">Search</td></tr>

<tr><td width="300px" align="center">



<img src="images/search.jpg" width="250px" height="200px" />




</td>

<td width="400px">



<table cellpadding="0" cellspacing="0" width="400px">

<tr><td width="50%" class="lefttext">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Product Name</td><td width="50%">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Select Category</td><td width="50%">
    <asp:DropDownList ID="DropDownList1" runat="server">
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Select Brand</td><td width="50%">
    <asp:DropDownList ID="DropDownList2" runat="server">
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Select Color</td><td width="50%">
    <asp:DropDownList ID="DropDownList3" runat="server">
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Select Size</td><td width="50%">
    <asp:DropDownList ID="DropDownList4" runat="server">
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">ProductFor</td><td width="50%">
                                            <asp:DropDownList ID="DropDownList5" runat="server">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem>Women</asp:ListItem>
                                                <asp:ListItem>Girls</asp:ListItem>
                                                <asp:ListItem>Kids</asp:ListItem>
                                            </asp:DropDownList>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Minimum Price</td><td width="50%">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%" class="lefttext">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Maximum Price</td><td width="50%">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%" class="lefttext">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    <asp:Button ID="Button1" runat="server" Text="Search" Width="109px" 
        onclick="Button1_Click" />
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>


</table>
</td>
</tr>
</table>



    </form>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder3" Runat="Server">
</asp:Content>

