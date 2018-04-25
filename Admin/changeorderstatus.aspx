<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="changeorderstatus.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="700px" class="tableborder" align="center">



<tr>
<td colspan="2" class="toptdback">Change Order Status</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" align="right" class="lefttext">Select Order Id</td>
    <td width="50%" align="left">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="DropDownList1" Display="Dynamic" 
            ErrorMessage="Select OrderId" Operator="NotEqual" ValueToCompare="Select"></asp:CompareValidator>
    </td></tr>

<tr><td width="50%">&nbsp;</td><td width="50%" align="left">
                                            
                                            &nbsp;</td></tr>

<tr><td width="50%" colspan="2" style="width: 100%" align="center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical" PageSize="6" Width="680px" 
        onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="OrderId" />
            <asp:BoundField DataField="orderdate" HeaderText="OrderDate" DataFormatString="{0:d}" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="contactno" HeaderText="ContactNo" />
            <asp:BoundField DataField="totalamt" HeaderText="TotalAmount" />
            <asp:BoundField DataField="totalqty" HeaderText="TotalQuantity" />
            <asp:BoundField DataField="address" HeaderText="Shipping Address" />
            <asp:BoundField DataField="status" HeaderText="Status" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </td></tr>

<tr><td width="50%">
    &nbsp;</td><td width="50%" align="left">&nbsp;</td></tr>

<tr><td width="50%" class="lefttext">
    Status</td><td width="50%" align="left">
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem Selected="True">Pending</asp:ListItem>
            <asp:ListItem>Deliever</asp:ListItem>
        </asp:DropDownList>
    </td></tr>

<tr><td width="50%">
    &nbsp;</td><td width="50%" align="left">&nbsp;</td></tr>

<tr><td width="50%" colspan="2" style="width: 100%" align="center">
    <asp:Button ID="Button1" runat="server" Text="Change Status" 
        onclick="Button1_Click" />
    </td></tr>

</table>
</asp:Content>

