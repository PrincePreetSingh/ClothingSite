<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="addcolor.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="450px" class="tableborder" align="center">



<tr>
<td colspan="2" class="toptdback">Add Color</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Color Name</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" 
        ErrorMessage="Enter color name"></asp:RequiredFieldValidator>
    </td><td width="50%">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="None" 
            ErrorMessage="Only character between 3 to 50 for color name" 
            ValidationExpression="^([a-zA-Z _]{3,50})"></asp:RegularExpressionValidator>
    </td></tr>


<tr><td width="50%">
    &nbsp;</td><td width="50%">
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

