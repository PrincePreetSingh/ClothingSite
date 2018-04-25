<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="viewproduct.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="650px" class="tableborder" align="center">



<tr>
<td colspan="2" class="toptdback">View Products</td>
</tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>

<tr><td width="50%" colspan="2" style="width: 100%" align="center">

    <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Height="200px" Width="500px">
 


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
        GridLines="Vertical" onpageindexchanging="GridView1_PageIndexChanging" 
        PageSize="6" Width="900px">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:BoundField DataField="pcode" HeaderText="ProductCode" />
            <asp:BoundField DataField="pname" HeaderText="ProductName" />
            <asp:BoundField DataField="catname" HeaderText="Category" />
            <asp:BoundField DataField="color_name" HeaderText="Color" />
            <asp:BoundField DataField="brand" HeaderText="Brand" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="productfor" HeaderText="ProductFor" />
            <asp:ImageField DataImageUrlField="pic1" 
                DataImageUrlFormatString="../prodsimg/{0}" HeaderText="ThumbnailPic">
                <ControlStyle Height="50px" Width="50px" BorderStyle="None" />
            </asp:ImageField>
            <asp:ImageField DataImageUrlField="pic2" 
                DataImageUrlFormatString="../prodlimg/{0}" HeaderText="LargePic">
                <ControlStyle Height="50px" Width="50px" />
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    
    
       </asp:Panel>
    
    
    </td></tr>

<tr><td width="50%" colspan="2" style="width: 100%" align="center">
    &nbsp;</td></tr>

</table>
</asp:Content>

