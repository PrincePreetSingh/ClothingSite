<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="deletecat.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table cellpadding="0" cellspacing="0" width="400px" class="tableborder" align="center">

<tr><td colspan="2" class="toptdback">Delete Category</td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext" style="height: 22px">Select Category</td>
    <td width="50%" 
        align="left" style="height: 22px">
                               <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                   onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                               </asp:DropDownList>
    </td></tr>

<tr><td width="50%" class="lefttext">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="DropDownList1" Display="None" ErrorMessage="Select Category" 
        Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td><td width="50%" 
        align="left">
        &nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Category&nbsp; Name</td><td width="50%" 
        align="left">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>

<tr><td width="50%" class="lefttext">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" 
        ErrorMessage="Enter CategoryName"></asp:RequiredFieldValidator>
    </td><td width="50%">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="None" 
            ErrorMessage="Enter Only Characters 3 to 50 for  Category" 
            ValidationExpression="^([a-zA-Z_ ]{3,50})"></asp:RegularExpressionValidator>
    </td></tr>

<tr><td width="50%" class="lefttext">
    &nbsp;</td><td width="50%">
        &nbsp;</td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Delete" Width="63px" 
        onclick="Button1_Click" />
    &nbsp;&nbsp;
    </td></tr>
<tr><td width="50%" colspan="2" style="width: 100%" align="center">
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </td></tr>
</table>


</asp:Content>

