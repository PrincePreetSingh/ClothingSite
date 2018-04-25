<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="updateprofile.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="800px" align="center">




<tr align="left"><td width="300px">



<img src="images/updateprofile.jpg" width="280px" height="200px"/>


</td>
<td width="500px">
                    <table cellpadding="0" cellspacing="0" width="400px" class="tableborder" align="center">
                    <tr><td colspan="2" class="toptdback">Update Profile</td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Name</td><td width="50%" align="left">
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
<tr><td width="50%" class="prodltext">Gender</td><td class="prodltext" align="left">
                                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g1" Text="Male" />
                                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" 
                                                Text="Female" />
                                            </td></tr>
<tr><td width="50%">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Address</td><td align="left">
    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
    </td></tr>
<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter Address"></asp:RequiredFieldValidator>
    </td><td>&nbsp;</td></tr>
<tr><td width="50%" class="prodltext">Contact No</td><td align="left">
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
<tr><td width="50%" class="prodltext">Mobile No</td><td align="left">
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

<tr><td width="50%">&nbsp;</td><td align="left">
    <asp:Button ID="Button1" runat="server" Text="Update" 
        onclick="Button1_Click" style="height: 26px" Width="104px" />
    </td></tr>
<tr><td width="50%" colspan="2">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </td></tr>
</table>


</td>


</tr>


</table>


</asp:Content>

