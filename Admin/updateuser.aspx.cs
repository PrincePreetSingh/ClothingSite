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
            SqlDataAdapter da = new SqlDataAdapter("select * from users", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "username";
                DropDownList2.DataValueField = "username";
                DropDownList2.DataBind();
            }
            DropDownList2.Items.Add("Select");
            DropDownList2.SelectedValue = "Select";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    string s = "update users set passw='" + TextBox2.Text + "',typeofuser='" + DropDownList1.SelectedValue + "' where username='" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(s, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList2.SelectedValue = "Select";
        DropDownList1.SelectedValue = "Select";
        ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Updated Successfully');", true);

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedValue != "Select")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from users where username='" + DropDownList2.SelectedValue + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {

                TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][1].ToString();
                DropDownList1.SelectedValue = ds.Tables[0].Rows[0][2].ToString();


            }

        }
        else
        {
            TextBox2.Text = "";
            TextBox3.Text = "";

            DropDownList1.SelectedValue = "Select";
        }
    }
}
