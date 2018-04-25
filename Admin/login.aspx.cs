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

public partial class Admin_login : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from users where username='" + TextBox1.Text + "' and passw='" + TextBox2.Text + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["loginstatus"] = "Yes";
            Session["usertype"] = ds.Tables[0].Rows[0][2].ToString();
            Response.Redirect("welcome.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Invalid UserName Or Password');", true);
        }
    }
}
