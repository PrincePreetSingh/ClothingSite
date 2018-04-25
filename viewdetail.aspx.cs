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
            SqlDataAdapter da = new SqlDataAdapter("select * from product,category,color,brand,size where pcode='" + Request.QueryString["pid"] + "' and product.catid=category.catid and product.colorid=color.color_id and product.brandid=brand.brandid and product.size=size.sizeid", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label8.Text = ds.Tables[0].Rows[0][0].ToString();
                Label1.Text = ds.Tables[0].Rows[0][1].ToString();
                Label2.Text = ds.Tables[0].Rows[0][12].ToString();
                Label3.Text = ds.Tables[0].Rows[0][14].ToString();
                Label4.Text = ds.Tables[0].Rows[0][16].ToString();
                Label5.Text = ds.Tables[0].Rows[0][19].ToString();
                Label6.Text = ds.Tables[0].Rows[0][6].ToString();
                Label7.Text = ds.Tables[0].Rows[0][7].ToString();
                Image1.ImageUrl = "prodlimg/" + ds.Tables[0].Rows[0][9].ToString();
                Label9.Text = ds.Tables[0].Rows[0][10].ToString();

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["email"].ToString() != "")
        {
            Response.Redirect("cart.aspx?pid=" + Label8.Text + "&qty=" +Convert.ToInt32 (DropDownList1.SelectedValue));
        }
        else
        {
            Response.Redirect("login.aspx?pid=" + Label8.Text + "&qty=" + Convert.ToInt32(DropDownList1.SelectedValue));
        }
    }
}
