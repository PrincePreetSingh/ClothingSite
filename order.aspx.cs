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
            SqlDataAdapter da = new SqlDataAdapter("select max(orderid)from ordermain", cn);
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
            Label1.Text = id.ToString();
            Label2.Text = DateTime.Today.ToString();
            Label6.Text = Request.QueryString["totalamt"].ToString();
            Label7.Text = Request.QueryString["totalqty"].ToString();



            da = new SqlDataAdapter("select * from registration where email='" + Session["email"] + "'", cn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label3.Text = ds.Tables[0].Rows[0][0].ToString();
                Label4.Text = ds.Tables[0].Rows[0][2].ToString();
                Label5.Text = ds.Tables[0].Rows[0][3].ToString();
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into ordermain values('" + Convert.ToInt32(Label1.Text) + "','" + DateTime.Today + "','" + Session["email"] + "','" + Convert.ToInt32(Label6.Text) + "','" + Convert.ToInt32(Label7.Text) + "','Pending','" + TextBox1.Text + "')", cn);
        cn.Open();
        cmd.ExecuteNonQuery();



        SqlDataAdapter da = new SqlDataAdapter("select * from basket where email='" + Session["email"] + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            for(int i=0;i<ds.Tables[0].Rows.Count;i++)
            {
                cmd = new SqlCommand("insert into orderdetail values('" + Convert.ToInt32(Label1.Text) + "','" + ds.Tables[0].Rows[i][1] + "','" + Convert.ToInt32(ds.Tables[0].Rows[i][4]) + "','" + Convert.ToInt32(ds.Tables[0].Rows[i][5]) + "')", cn);
                cmd.ExecuteNonQuery();
            }
        }

        SqlCommand cmd1 = new SqlCommand("delete from basket where email='" + Session["email"] + "'", cn);
        cmd1.ExecuteNonQuery();
        

        cn.Close();
        Response.Redirect("thanks.aspx?oid=" + Label1.Text);

    }
}
