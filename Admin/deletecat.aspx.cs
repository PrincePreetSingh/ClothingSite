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
            fill();
        }
    }


    void fill()
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from category order by catname", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "catname";
            DropDownList1.DataValueField = "catid";
            DropDownList1.DataBind();

        }
        DropDownList1.Items.Add("Select");
        DropDownList1.SelectedValue = "Select";
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "Select")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from category where catid='" + DropDownList1.SelectedValue + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from product where catid='" + DropDownList1.SelectedValue + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Cannot be Deleted because dependency exist');", true);
            }
            else
            {
                string s = "delete from category where catid='" + DropDownList1.SelectedValue + "'";

                SqlCommand cmd = new SqlCommand(s, cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                TextBox1.Text = "";
                fill();

                ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Delete');", true);
            }

    }
}
