<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="deladv.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="450px" class="tableborder" align="center">
<tr>
<td colspan="2" class="toptdback">Delete Advertisement</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Select Title</td><td width="50%" 
        align="left">
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                            </asp:DropDownList>
    </td></tr>

<tr><td width="50%">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="DropDownList1" Display="None" ErrorMessage="Select Title" 
        Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
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

<tr><td width="50%" class="lefttext">Old Pic</td><td width="50%" align="left">



    <asp:Image ID="Image1" runat="server" Height="90px" Width="90px" />



</td></tr>

<tr><td width="50%" class="lefttext">&nbsp;</td><td width="50%" align="left">



    &nbsp;</td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Delete" onclick="Button1_Click" 
        style="margin-left: 0px" Width="82px" />
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>

<tr><td width="50%" colspan="2" style="width: 100%">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </td></tr>

</table>
</asp:Content>

