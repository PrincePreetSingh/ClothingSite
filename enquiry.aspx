<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder2" Runat="Server">



    <form id="form1" runat="server">



<table cellpadding="0" cellspacing="0" width="600px" align="center">


<tr><td width="300px">


<img src="images/enquiry.jpg" width="200px" height="200px" />



</td>


<td width="400px">

<table cellpadding="0" cellspacing="0" width="400px">

<tr><td colspan="2" class="toptdback">Enquiry</td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td width="50%" class="lefttext">Name</td><td width="50%">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

</td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
    </td><td width="50%">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" Display="None" 
            ErrorMessage="Enter Only Characters between 3 to 50 For Name" 
            ValidationExpression="^([a-zA-Z _]{3,50})"></asp:RegularExpressionValidator>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">ContactNo</td><td width="50%">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
    <tr><td width="50%">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter ContactNo"></asp:RequiredFieldValidator>
        </td><td width="50%">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox2" Display="None" 
                ErrorMessage="Enter Only 10 Digits For Contact No" 
                ValidationExpression="^([0-9]{10,10})"></asp:RegularExpressionValidator>
        </td></tr>
    

    <tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
    

    <tr><td width="50%" class="lefttext" style="height: 22px">Email</td><td width="50%" 
            style="height: 22px">
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td></tr>
    

    <tr><td width="50%">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" Display="None" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
        </td><td width="50%">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox3" Display="None" ErrorMessage="Invalid Email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td></tr>
    

    <tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
    

    <tr><td width="50%" class="lefttext">Enquiry Message</td><td width="50%">
        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td></tr>
    

    <tr><td width="50%">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" Display="None" ErrorMessage="Enter Enquiry"></asp:RequiredFieldValidator>
        </td><td width="50%">&nbsp;</td></tr>
    

    <tr><td width="50%">&nbsp;</td><td width="50%">
        <asp:Button ID="Button1" runat="server" Text="Enquiry" 
            onclick="Button1_Click" style="height: 26px" />
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

