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
    protected void Button1_Click(object sender, EventArgs e)
    {
        
           



            string s = "delete from advertise where advid='" + DropDownList1.SelectedValue + "'";
            SqlCommand cmd = new SqlCommand(s, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            Image1.ImageUrl = "";
            list();
            TextBox2.Text = "";
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Delete');", true);





        
    }
    void list()
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select * from advertise order by title", cn);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            DropDownList1.DataSource = ds1;
            DropDownList1.DataTextField = "title";
            DropDownList1.DataValueField = "advid";
            DropDownList1.DataBind();
        }
        DropDownList1.Items.Add("Select");
        DropDownList1.SelectedValue = "Select";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue != "Select")
        {
             SqlDataAdapter da = new SqlDataAdapter("select * from advertise where advid='" + DropDownList1.SelectedValue + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
            Image1.ImageUrl = "../advimg/" + ds.Tables[0].Rows[0][3].ToString();

        }

        }
    }
}
