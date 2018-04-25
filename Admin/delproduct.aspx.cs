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
    protected void Button1_Click(object sender, EventArgs e)
    {

      
        string s = "delete from product where pcode='" +  DropDownList3.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(s, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        TextBox2.Text = "";
        fill();

        ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Delete');", true);
        
    }
    void fill()
    {
          SqlDataAdapter da = new SqlDataAdapter("select * from product order by pcode", cn);
            DataSet ds = new DataSet(); 
            da.Fill(ds);
            DropDownList3.Items.Clear();
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList3.DataSource = ds;
                DropDownList3.DataTextField = "pcode";
                DropDownList3.DataValueField = "pcode";
                DropDownList3.DataBind();
            }
            DropDownList3.Items.Add("Select");
            DropDownList3.SelectedValue = "Select";
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList3.SelectedValue != "Select")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from product where pcode='" + DropDownList3.SelectedValue + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
            }
        }
    }
}
