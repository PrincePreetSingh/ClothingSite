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
            SqlDataAdapter da = new SqlDataAdapter("select * from registration where email='" + Session["email"] + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
                if (ds.Tables[0].Rows[0][1].ToString() == "Male")
                {
                    RadioButton1.Checked = true;
                }
                else
                {
                    RadioButton2.Checked = true;
                }
                TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0][4].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string g = "";
        if (RadioButton1.Checked == true)
        {
            g = "Male";
        }
        else
        {
            g = "Female";
        }
        SqlCommand cmd = new SqlCommand("update registration set name='" + TextBox1.Text + "',gender='" + g + "',address='" + TextBox2.Text + "',contactno='" + TextBox3.Text + "',phoneno='" + TextBox4.Text + "' where email='" + Session["email"] + "'", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        SqlDataAdapter da = new SqlDataAdapter("select * from registration where email='" + Session["email"] + "'", cn);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0][0].ToString();
            if (ds.Tables[0].Rows[0][1].ToString() == "Male")
            {
                RadioButton1.Checked = true;
            }
            else
            {
                RadioButton2.Checked = true;
            }
            TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0][4].ToString();


            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Profile Updated Successfully');", true);

        }
    }
}
