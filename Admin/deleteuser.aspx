<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="deleteuser.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="400px" class="tableborder" align="center">

<tr><td colspan="2" class="toptdback">Delete User</td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext">User Name</td><td width="50%" align="left">
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        Height="28px" onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
        Width="112px">
    </asp:DropDownList>
    </td></tr>
<tr><td width="50%" class="lefttext">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="DropDownList2" Display="None" 
        ErrorMessage="Select User Name" Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td><td width="50%">
        &nbsp;</td></tr>
<tr><td width="50%" class="lefttext">Select User Type</td>
    <td width="50%" align="left" 
       >
    <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px">
        <asp:ListItem Selected="True">Select</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>General</asp:ListItem>
    </asp:DropDownList>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Delete" Width="63px" 
        onclick="Button1_Click" />
    </td></tr>
<tr><td width="50%" colspan="2" style="width: 100%">
    &nbsp;</td></tr>
<tr><td width="50%" colspan="2" style="width: 100%">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ForeColor="#CC0000" />
    </td></tr>
</table>
</asp:Content>

