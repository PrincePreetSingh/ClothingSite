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
public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["cn"].ToString());
        if (Session["loginstatus"].ToString() != "Yes")
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            list();
        }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedValue != "Select")
        {

            SqlDataAdapter da = new SqlDataAdapter("select * from Color where color_id='" + DropDownList2.SelectedValue + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
            }
        }

    }
    void list()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Color", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "Color_name";
            DropDownList2.DataValueField = "Color_id";
            DropDownList2.DataBind();
        }
        DropDownList2.Items.Add("Select");
        DropDownList2.SelectedValue = "Select";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = "update Color set Color_name='" + TextBox1.Text + "' where Color_id='" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(s, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        TextBox1.Text = " ";
        list();
        ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Update');", true);
    }
}
