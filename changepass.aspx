<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="800px">

<tr><td width="300px">

<img src="images/chpass.jpg" />

</td>




<td width="500px">

<table cellpadding="0" cellspacing="0" width="400px" class="tableborder">

<tr><td colspan="2" class="toptdback">Change Password</td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext">Old Password</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter Old Password"></asp:RequiredFieldValidator>
    </td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext">New Password</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter New Password"></asp:RequiredFieldValidator>
    </td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext">Confirm Password</td><td width="50%" 
        align="left">
    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" Display="None" 
        ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
    </td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBox3" ControlToValidate="TextBox2" Display="None" 
        ErrorMessage="Password and Confirm Password does not match"></asp:CompareValidator>
    </td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Change" onclick="Button1_Click" 
            Width="98px" />
    </td></tr>
<tr><td width="50%" colspan="2" style="width: 100%">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </td></tr>
</table>

</td>
</tr>



</table>
</asp:Content>

