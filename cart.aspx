<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   

    <table cellpadding="0" cellspacing="0" width="700px" align="center" class="tableborder">

<tr><td colspan="2" align="center" class="toptdback">View Cart</td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2" align="center">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" 
        DataKeyNames="rowid" DataSourceID="SqlDataSource1" Width="647px" 
        onrowdeleted="GridView1_RowDeleted" onrowdeleting="GridView1_RowDeleting">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="rowid" HeaderText="RowId" ReadOnly="True" 
                SortExpression="rowid" />
            <asp:BoundField DataField="pname" HeaderText="ProductName" SortExpression="pname" />
            <asp:BoundField DataField="pid" HeaderText="ProductCode" SortExpression="pid" />
            <asp:BoundField DataField="category" HeaderText="Category" 
                SortExpression="category" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
            <asp:BoundField DataField="totalamonut" HeaderText="TotalAmonut" 
                SortExpression="totalamonut" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:clothingConnectionString %>" 
        DeleteCommand="DELETE FROM [basket] WHERE [rowid] = @rowid" 
        InsertCommand="INSERT INTO [basket] ([rowid], [pname], [pid], [category], [price], [qty], [totalamonut]) VALUES (@rowid, @pname, @pid, @category, @price, @qty, @totalamonut)" 
        SelectCommand="SELECT [rowid], [pname], [pid], [category], [price], [qty], [totalamonut] FROM [basket] WHERE ([email] = @email)" 
        
        UpdateCommand="UPDATE [basket] SET [pname] = @pname, [pid] = @pid, [category] = @category, [price] = @price, [qty] = @qty, [totalamonut] = @totalamonut WHERE [rowid] = @rowid">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="email" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="rowid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="pid" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="qty" Type="Int32" />
            <asp:Parameter Name="totalamonut" Type="Int32" />
            <asp:Parameter Name="rowid" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="rowid" Type="Int32" />
            <asp:Parameter Name="pname" Type="String" />
            <asp:Parameter Name="pid" Type="String" />
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="qty" Type="Int32" />
            <asp:Parameter Name="totalamonut" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    </td></tr>
<tr><td width="50%" class="lefttext">Total Quantity<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </td><td width="50%" class="lefttext">Total Amount<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </td></tr>
<tr><td width="50%">&nbsp;</td><td width="50%">&nbsp;</td></tr>
<tr><td width="50%">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Continue To Shopping" />
    </td><td width="50%">
        <asp:Button ID="Button2" runat="server" Text="Place Order" 
            onclick="Button2_Click" />
    </td></tr>
<tr><td width="50%">
    &nbsp;</td><td width="50%">
        &nbsp;</td></tr>
</table>


 


</asp:Content>

