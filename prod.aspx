<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="prod.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder2" Runat="Server">

    <table cellpadding="0" cellspacing="0" width="600px" align="center">
<tr><td class="prod" style="background-color:white; font-size:20px" height="40px" colspan="3"><%=Request.QueryString["catname"] %> <span style="font-size:13px"> >> </span><%=Request.QueryString["bname"]%> <span style="font-size:13px"> >> </span> Products</td></tr>

<% SqlConnection cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ToString());
   SqlDataAdapter da = new SqlDataAdapter("select * from product where catid='" + Request.QueryString["cid"] + "' and brandid='" + Request.QueryString["bid"] + "' order by pname", cn);
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
<tr><td width="170px"><img src="prodsimg/<%=ds.Tables[0].Rows[i][8] %>" width="150px" height="150px" /></td></tr>
<tr><td align="center" height="35px" style="background-color:White"><a href="viewdetail.aspx?pid=<%=ds.Tables[0].Rows[i][0] %>" class="link">View Detail</a></td></tr>
<tr><td>&nbsp;</td></tr>
</table>


</td>
<%if (i % 3 == 2)
  { %>


</tr>
<%}
       }
   } 
    
     else
   { %>



<tr><td align="center" class="prodrtext" height="160px" style="font-size:26px">Record Not Found</td></tr>

<%} %>

</table>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentplaceholder3" Runat="Server">
</asp:Content>

