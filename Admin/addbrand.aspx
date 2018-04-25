<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="addbrand.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="450px" class="tableborder" align="center">



<tr>
<td colspan="2" class="toptdback" style="height: 19px">Add Brands</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Brand Name</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter brand name"></asp:RequiredFieldValidator>
    </td><td width="50%">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="None" 
            ErrorMessage="Only character between 3 to 50" 
            ValidationExpression="^([a-zA-Z _]{3,50})"></asp:RegularExpressionValidator>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>


<tr><td width="50%"class="lefttext">Brand Logo</td><td width="50%">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    </td></tr>


<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="FileUpload1" Display="None" 
        ErrorMessage="Enter image for file upload"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>


<tr><td width="50%">
    &nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" 
        style="margin-left: 0px" Width="82px" />
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>

<tr><td width="50%" colspan="2" style="width: 100%">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </td></tr>

</table>
</asp:Content>

