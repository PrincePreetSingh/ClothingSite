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
        SqlDataAdapter da = new SqlDataAdapter("select * from registration where email='" + Session["email"] + "' and passw='" + TextBox1.Text + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            SqlCommand cmd = new SqlCommand("update registration set passw='" + TextBox2.Text + "' where email='" + Session["email"] + "'", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Password Successfully Changed');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Invalid Password');", true);
        }
    }
}
