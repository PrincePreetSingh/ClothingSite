<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="400px" class="tableborder" align="center">

<tr><td colspan="2" class="toptdback"> Add User</td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext">User Name</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>
<tr><td width="50%" class="lefttext">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter Add User"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>
<tr><td width="50%" class="lefttext">Password</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>
<tr><td width="50%" class="lefttext">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="TextBox3" Display="None" 
        ErrorMessage="Password and confirm Password does not match" 
        ControlToCompare="TextBox4"></asp:CompareValidator>
    </td><td width="50%">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox4" Display="None" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
    </td></tr>
<tr><td width="50%">
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="TextBox4" Display="None" 
        ErrorMessage="Enter AplhaNumeric Characters  6 to 10 For Password" 
        ValidationExpression="^([a-zA-Z0-9]{6,10})"></asp:RegularExpressionValidator>
    </td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext">Confirm Password</td>
    <td width="50%" 
        class="style3" align="left">
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" Display="None" 
        ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
    </td><td width="50%">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox3" Display="None" 
            ErrorMessage="Enter AplhaNumeric Characters  6 to 10 For Confirm Password" 
            ValidationExpression="^([a-zA-Z0-9]{6,10})"></asp:RegularExpressionValidator>
    </td></tr>
<tr><td width="50%">
    &nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext">Select User Type</td>
    <td width="50%" align="left" 
       >
    <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px">
        <asp:ListItem Selected="True">Select</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
        <asp:ListItem>General</asp:ListItem>
    </asp:DropDownList>
    </td></tr>
<tr><td width="50%" class="lefttext">
    <asp:CompareValidator ID="CompareValidator2" runat="server" 
        ControlToValidate="DropDownList1" Display="None" 
        ErrorMessage="Select User Type" Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td><td width="50%" 
       >
        &nbsp;</td></tr>
<tr><td width="50%" align="center">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Save" Width="63px" 
        onclick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>
<tr><td width="50%" class="style1" colspan="2" align="center">
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    </td></tr>
<tr><td width="50%" class="style1" colspan="2" align="center">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ForeColor="#CC0000" />
    </td></tr>
</table>
</asp:Content>

