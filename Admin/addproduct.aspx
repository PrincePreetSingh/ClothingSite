<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="addproduct.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="450px" class="tableborder" align="center">

    
<tr>
<td colspan="2" class="toptdback">Add Product</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">Product Code</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" Display="None" ErrorMessage="Enter the code"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Product Name</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ControlToValidate="TextBox2" Display="None" ErrorMessage="Enter product name"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>


<tr><td width="50%"class="lefttext">Select Category</td><td width="50%" 
        align="left">
    <asp:DropDownList ID="DropDownList1" runat="server" 
     >
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToValidate="DropDownList1" Display="None" ErrorMessage="Select category" 
        Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td></tr>


<tr><td width="50%" class="lefttext">Select Color</td><td width="50%" align="left" 
        class="style2">
    <asp:DropDownList ID="DropDownList2" runat="server" 
       >
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">
    <asp:CompareValidator ID="CompareValidator2" runat="server" 
        ControlToValidate="DropDownList2" Display="None" ErrorMessage="Select color" 
        Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td></tr>


<tr><td width="50%" class="lefttext">Select Brand</td><td width="50%" align="left">
    <asp:DropDownList ID="DropDownList3" runat="server">
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%" class="lefttext">&nbsp;</td><td width="50%" align="left">
    <asp:CompareValidator ID="CompareValidator3" runat="server" 
        ControlToValidate="DropDownList3" Display="None" ErrorMessage="Select Brand" 
        Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td></tr>


<tr><td width="50%" class="lefttext">Select Size</td><td width="50%" align="left">
    <asp:DropDownList ID="DropDownList4" runat="server">
    </asp:DropDownList>
    </td></tr>


<tr><td width="50%" class="lefttext">&nbsp;</td><td width="50%" align="left">
    <asp:CompareValidator ID="CompareValidator4" runat="server" 
        ControlToValidate="DropDownList4" Display="None" ErrorMessage="Select Size" 
        Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td></tr>


<tr><td width="50%" class="lefttext">Price</td><td width="50%" align="left">
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </td></tr>


<tr><td width="50%" class="lefttext">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="TextBox3" Display="None" ErrorMessage="Enter price"></asp:RequiredFieldValidator>
    </td><td width="50%" align="left">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="TextBox3" Display="None" 
            ErrorMessage="Only digits between 3 to 7 For Price" 
            ValidationExpression="^([0-9]{1,1000})"></asp:RegularExpressionValidator>
    </td></tr>


<tr><td width="50%" class="lefttext">&nbsp;</td><td width="50%" align="left">
    &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Product For</td><td width="50%" align="left">
                                            <asp:DropDownList ID="DropDownList5" runat="server">
                                                <asp:ListItem Selected="True">Select</asp:ListItem>
                                                <asp:ListItem>Women</asp:ListItem>
                                                <asp:ListItem>Girls</asp:ListItem>
                                                <asp:ListItem>Kids</asp:ListItem>
                                            </asp:DropDownList>
                                            </td></tr>


<tr><td width="50%" class="lefttext">
    <asp:CompareValidator ID="CompareValidator5" runat="server" 
        ControlToValidate="DropDownList5" Display="None" 
        ErrorMessage="Select Product For" Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td><td width="50%" align="left">
        &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Upload Thumbnail Image</td><td width="50%">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    </td></tr>


<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
        ControlToValidate="FileUpload1" Display="None" ErrorMessage=" Upload image1"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Upload Large Image</td><td width="50%">
    <asp:FileUpload ID="FileUpload2" runat="server" />
    </td></tr>


<tr><td width="50%">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
        ControlToValidate="FileUpload2" Display="None" ErrorMessage="Upload Image2"></asp:RequiredFieldValidator>
    </td><td width="50%">
        &nbsp;</td></tr>


<tr><td width="50%" class="lefttext">Other Detail</td><td width="50%" align="left">

    <asp:TextBox ID="TextBox4" runat="server" Height="57px" TextMode="MultiLine" 
        Width="214px"></asp:TextBox>
    </td></tr>


<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
    <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" 
        style="margin-left: 0px" Width="82px" />
    </td></tr>

<tr><td width="50%" colspan="2" style="width: 100%">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </td></tr>

</table>
</asp:Content>

