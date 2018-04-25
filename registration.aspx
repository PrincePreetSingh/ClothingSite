<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder2" Runat="Server">


    <form id="form1" runat="server">


<table cellpadding="0" cellspacing="0" width="700px">
<tr><td colspan="2" class="prodltext" style="font-size:24px">&nbsp;</td></tr>

<tr><td width="300px">


<img src="images/register.jpg" width="250px" height="300px" />








</td>

<td width="400px">


<table cellpadding="0" cellspacing="0" width="400px">

<tr><td width="50%" class="prodltext">Name</td><td width="50%">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
    </td><td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="TextBox1" Display="None" 
            ErrorMessage="Enter Only Characters between 3 to 50 For Name" 
            ValidationExpression="^([a-zA-Z _]{3,50})"></asp:RegularExpressionValidator>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Gender</td><td class="prodltext">
                                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g1" Text="Male" />
                                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" 
                                                Text="Female" />
                                            </td></tr>
<tr><td width="50%">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Address</td><td>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
    </td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Contact No</td><td>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" Display="None" ErrorMessage="Enter Contact No"></asp:RequiredFieldValidator>
    </td><td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox3" Display="None" 
            ErrorMessage="Enter Only 10 Digits For Contact No" 
            ValidationExpression="^([0-9]{10,10})"></asp:RegularExpressionValidator>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Mobile No</td><td>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="TextBox4" Display="None" ErrorMessage="Enter Mobile No"></asp:RequiredFieldValidator>
    </td><td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="TextBox4" Display="None" 
            ErrorMessage="Enter Only 10 Digits  For MobileNo" 
            ValidationExpression="^([0-9]{10,10})"></asp:RegularExpressionValidator>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Email</td><td>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="TextBox5" Display="None" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
    </td><td>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox5" Display="None" ErrorMessage="Invalid Email" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Password</td><td>
    <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="TextBox6" Display="None" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
    </td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Confirm Password</td><td>
    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
        ControlToValidate="TextBox7" Display="None" 
        ErrorMessage="Enter Confirm Password"></asp:RequiredFieldValidator>
    </td><td>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox6" ControlToValidate="TextBox7" Display="None" 
            ErrorMessage="Password and Confirm Password does not match"></asp:CompareValidator>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td width="50%">&nbsp;</td><td>
    <asp:Button ID="Button1" runat="server" Text="Registration" 
        onclick="Button1_Click" style="height: 26px" />
    </td></tr>
<tr><td width="50%" colspan="2">
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

