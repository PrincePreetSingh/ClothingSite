<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder2" Runat="Server">


    <form id="form1" runat="server">


<table cellpadding="0" cellspacing="0" width="700px" align="center">
<tr><td width="300px" height="300px"><img src="images/login1.jpg" width="250px" height="250px" /></td>

<td width="400px">

<table cellpadding="0" cellspacing="0" width="400px" align="left" 
        class="tableborder">

<tr><td colspan="2" class="toptdback">Login</td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">
    &nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Email</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>

<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
    </td><td width="50%">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="None" ErrorMessage="Invalid Email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Password</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>

<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
    </td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Login" Width="78px" 
        onclick="Button1_Click" />
    </td></tr>

<tr><td width="50%" colspan="2" style="width: 100%">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </td></tr>

</table>

</td>



</tr>


</table>



    </form>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder3" Runat="Server">
</asp:Content>

