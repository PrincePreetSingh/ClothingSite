using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ToString());

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from basket where email='" + Session["email"] + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        


        Session["email"] = "";

        Response.Redirect("home.aspx");
    }
}
