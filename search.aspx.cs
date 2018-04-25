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
        if (!IsPostBack)
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


           da = new SqlDataAdapter("select * from brand order by brand", cn);
         ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "brand";
                DropDownList2.DataValueField = "brandid";
                DropDownList2.DataBind();
            }

            DropDownList2.Items.Add("Select");
            DropDownList2.SelectedValue = "Select";


            da = new SqlDataAdapter("select * from color order by color_name", cn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList3.DataSource = ds;
                DropDownList3.DataTextField = "color_name";
                DropDownList3.DataValueField = "color_id";
                DropDownList3.DataBind();
            }

            DropDownList3.Items.Add("Select");
            DropDownList3.SelectedValue = "Select";




            da = new SqlDataAdapter("select * from size order by size", cn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList4.DataSource = ds;
                DropDownList4.DataTextField = "size";
                DropDownList4.DataValueField = "sizeid";
                DropDownList4.DataBind();
            }

            DropDownList4.Items.Add("Select");
            DropDownList4.SelectedValue = "Select";



        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("searchprod.aspx?pname=" + TextBox1.Text + "&catid=" + DropDownList1.SelectedValue + "&brandid=" + DropDownList2.SelectedValue + "&colorid=" + DropDownList3.SelectedValue + "&sizeid=" + DropDownList4.SelectedValue + "&pfor=" + DropDownList5.SelectedValue + "&minprice="+ TextBox2.Text + "&maxprice="+ TextBox3.Text);
    }
}
