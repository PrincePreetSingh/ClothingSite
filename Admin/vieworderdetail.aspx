<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="vieworderdetail.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="700px" class="tableborder" align="center">



<tr>
<td colspan="2" class="toptdback">View Orders Detail</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" colspan="2" style="width: 100%" align="center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical" PageSize="6" Width="680px" 
        onpageindexchanging="GridView1_PageIndexChanging">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="OrderId" />
            <asp:BoundField DataField="pid" HeaderText="ProductCode" />
            <asp:BoundField DataField="pname" HeaderText="ProductName" />
            <asp:BoundField DataField="catname" HeaderText="Category" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="qty" HeaderText="Quantity" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </td></tr>

<tr><td width="50%" colspan="2" style="width: 100%" align="center">
    &nbsp;</td></tr>

</table>
</asp:Content>

