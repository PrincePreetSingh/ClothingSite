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
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ordermain where status='Pending'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "orderid";
                DropDownList1.DataValueField = "orderid";
                DropDownList1.DataBind();
            }
            DropDownList1.Items.Add("Select");
            DropDownList1.SelectedValue = "Select";
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "Select")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from ordermain,registration where orderid='" + DropDownList1.SelectedValue + "' and ordermain.email=registration.email", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
                DropDownList2.SelectedValue=ds.Tables[0].Rows[0][5].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update ordermain set status='" + DropDownList2.SelectedValue + "' where orderid='" + DropDownList1.SelectedValue + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        SqlDataAdapter da = new SqlDataAdapter("select * from ordermain where status='Pending'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "orderid";
            DropDownList1.DataValueField = "orderid";
            DropDownList1.DataBind();
        }
        DropDownList1.Items.Add("Select");
        DropDownList1.SelectedValue = "Select";
        DropDownList2.SelectedIndex = 0;
        GridView1.DataSource = null;
        GridView1.DataBind();
    }
}
