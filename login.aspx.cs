using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ToString());
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from registration where email='" + TextBox1.Text + "' and passw='" + TextBox2.Text + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["email"] = TextBox1.Text.ToString();
            Response.Redirect("cart.aspx?pid=" + Request.QueryString["pid"]+ "&qty=" + Request.QueryString["qty"]);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Invalid UserName Or Password');", true);
        }
    }
}
