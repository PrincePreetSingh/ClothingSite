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
        SqlDataAdapter da = new SqlDataAdapter("select max(enqid)from enquiry", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int id;
        if (ds.Tables[0].Rows.Count > 0 && Convert.IsDBNull(ds.Tables[0].Rows[0][0])==false)
        {
            id = Convert.ToInt32(ds.Tables[0].Rows[0][0]) + 1;
        }
        else
        {
            id = 1;
        }
        SqlCommand cmd = new SqlCommand("insert into enquiry values('" + id + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','Pending')", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Your Enquiry is Successfully Submitted');", true);
    }
}
