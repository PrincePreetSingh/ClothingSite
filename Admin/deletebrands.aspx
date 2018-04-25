﻿<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="deletebrands.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="450px" class="tableborder" align="center">



<tr>
<td colspan="2" class="toptdback">Delete Brands</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Select Brand</td><td width="50%" 
        align="left">
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
        style="margin-left: 0px; height: 22px;">
    </asp:DropDownList>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="DropDownList2" Display="None" ErrorMessage="Select Brand " 
        Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td></tr>



<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>



<tr><td width="50%" class="lefttext">Brand Name</td><td width="50%" align="left">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>



<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter brand name"></asp:RequiredFieldValidator>
    </td><td width="50%">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="None" 
            ErrorMessage="Only character 3 to 50 for brand name" 
            ValidationExpression="^([a-zA-Z _]{3,50})"></asp:RegularExpressionValidator>
    </td></tr>



<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>



<tr><td width="50%"class="lefttext">Old Pic</td><td width="50%" align="left">
    <asp:Image ID="Image1" runat="server" Height="91px" Width="99px" />
    <asp:HiddenField ID="HiddenField1" runat="server" />
    </td></tr>



<tr><td width="50%">
    &nbsp;</td><td width="50%">&nbsp;</td></tr>

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

