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
            SqlDataAdapter da = new SqlDataAdapter("select max(rowid) from basket", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int id;
            if (ds.Tables[0].Rows.Count > 0 && Convert.IsDBNull(ds.Tables[0].Rows[0][0]) == false)
            {
                id = Convert.ToInt32(ds.Tables[0].Rows[0][0]) + 1;
            }
            else
            {
                id = 1;
            }


            da = new SqlDataAdapter("select * from product,category where pcode='" + Request.QueryString["pid"] + "' and product.catid=category.catid", cn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                SqlCommand cmd = new SqlCommand("insert into basket values('" + id + "','" + Request.QueryString["pid"] + "','" + (ds.Tables[0].Rows[0][1]) + "','" + (ds.Tables[0].Rows[0][12]) + "','" + Convert.ToInt32(ds.Tables[0].Rows[0][6]) + "','" + Request.QueryString["qty"] + "','" + (Convert.ToInt32(ds.Tables[0].Rows[0][6]) * Convert.ToInt32(Request.QueryString["qty"])) + "','" + Session["email"] + "')", cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
            }

            SqlDataAdapter da1 = new SqlDataAdapter("select sum(qty),sum(totalamonut) from basket where email='" + Session["email"] + "'", cn);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds1.Tables[0].Rows[0][0].ToString();
                TextBox2.Text = ds1.Tables[0].Rows[0][1].ToString();
            }

            

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select sum(qty),sum(totalamonut) from basket where email='" + Session["email"] + "'", cn);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = ds1.Tables[0].Rows[0][0].ToString();
            TextBox2.Text = ds1.Tables[0].Rows[0][1].ToString();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" && TextBox2.Text == "")
        {
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('You have no items for Shopping in Your Cart');", true);
        }
        else
        {
            Response.Redirect("order.aspx?totalqty=" + TextBox1.Text + "&totalamt=" + TextBox2.Text);
        }
    }
}
