<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="brand.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder2" Runat="Server">
    <table cellpadding="0" cellspacing="0" width="600px" align="center">
<tr><td class="prod" style="background-color:white; font-size:20px" height="40px" colspan="3"><%=Request.QueryString["catname"] %> >> Brands</td></tr>

<% SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ToString());
   SqlDataAdapter da = new SqlDataAdapter("select * from brand order by brand", cn);
   DataSet ds = new DataSet();
   da.Fill(ds);
   if (ds.Tables[0].Rows.Count > 0)
   {

       for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
       {

           if (i % 3 == 0)
           {
        %>

<tr>

<%} %>

<td align="center">



<table cellpadding="0" cellspacing="0">
<tr><td align="center" height="35px"  class="prod"><%=ds.Tables[0].Rows[i][1]%></td></tr>
<tr><td><a href="prod.aspx?catname=<%=Request.QueryString["catname"] %>&cid=<%=Request.QueryString["cid"] %>&bid=<%=ds.Tables[0].Rows[i][0] %>&bname=<%=ds.Tables[0].Rows[i][1] %>"><img src="blogos/<%=ds.Tables[0].Rows[i][2] %>" width="130px" height="130px" /></a></td></tr>

<tr><td>&nbsp;</td></tr>
</table>


</td>
<%if (i % 3 == 2)
  { %>


</tr>
<%}
       }
   } %>

</table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder3" Runat="Server">
   

</asp:Content>

