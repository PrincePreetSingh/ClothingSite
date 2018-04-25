<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="addadv.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="450px" class="tableborder" align="center">
<tr>
<td colspan="2" class="toptdback">Add Advertisement</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Title</td><td width="50%" 
        align="left">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>

<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" 
        ErrorMessage=" Enter Title"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Company</td><td width="50%" 
        align="left">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td></tr>

<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="None" 
        ErrorMessage="Enter Company Name"></asp:RequiredFieldValidator>
    </td><td width="50%">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="None" 
            ErrorMessage="Only Character between 3 to 50 for Company" 
            ValidationExpression="^([a-zA-Z]{3,50})"></asp:RegularExpressionValidator>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Upload Pic</td><td width="50%">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    </td></tr>

<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="FileUpload1" Display="None" ErrorMessage="Upload image"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" 
        style="margin-left: 0px" Width="82px" />
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>

<tr><td width="50%" colspan="2" style="width: 100%">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </td></tr>

</table>
</asp:Content>

