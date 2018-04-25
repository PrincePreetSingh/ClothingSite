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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select * from users where username='" + TextBox1.Text + "'", cn);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('User Name already Exist');", true);
        }


        else
        {

           

            string s = "insert into users values ('" + TextBox1.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue + "')";

            SqlCommand cmd = new SqlCommand(s, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            TextBox1.Text = "";
            TextBox4.Text = "";
            TextBox3.Text = "";
            DropDownList1.SelectedValue = "Select";

            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Save');", true);
        }
    }
}
