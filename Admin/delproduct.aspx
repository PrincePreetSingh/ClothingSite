<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="delproduct.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="450px" class="tableborder" align="center">

    
<tr>
<td colspan="2" class="toptdback">Delete Product</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Select Product Code</td><td width="50%" align="left">
    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList3_SelectedIndexChanged">
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%">
    <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="DropDownList3" Display="None" 
        ErrorMessage="Select Product Code" Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td><td width="50%">
        &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Product Name</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter product name"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Delete" onclick="Button1_Click" 
        style="margin-left: 0px" Width="82px" />
    </td></tr>

<tr><td width="50%" colspan="2" style="width: 100%">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </td></tr>

</table>
</asp:Content>

