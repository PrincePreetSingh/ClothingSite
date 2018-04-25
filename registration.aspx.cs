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
            RadioButton1.Checked = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string g="";
        if(RadioButton1.Checked==true)
        {
            g="Male";
        }
        else{
            g="Female";
        }
        SqlCommand cmd = new SqlCommand("insert into registration values('" + TextBox1.Text + "','" + g + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        RadioButton1.Checked = true;
        RadioButton2.Checked = false;

        ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('You are Successfully Registered');", true);
    }
}
