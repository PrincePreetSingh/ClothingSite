<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewOrders.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="900px" class="tableborder" align="center">



<tr>
<td colspan="2" class="toptdback">View Orders</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" colspan="2" style="width: 100%" align="center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical" PageSize="6" Width="865px" 
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
            <asp:HyperLinkField DataNavigateUrlFields="orderid" Text="More Detail" 
                DataNavigateUrlFormatString="vieworderdetail.aspx?oid={0}" 
                ControlStyle-ForeColor="Gray" >
<ControlStyle ForeColor="Gray"></ControlStyle>
            </asp:HyperLinkField>
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

