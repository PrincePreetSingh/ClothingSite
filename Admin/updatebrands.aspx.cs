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
        if (!IsPostBack)
        {
            list();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string f1 = "", f2 = "";
        if (FileUpload1.FileName != "")
        {
            f1 = Server.MapPath("../blogos/p" + DropDownList2.SelectedValue + TextBox1.Text + FileUpload1.FileName);
            FileUpload1.SaveAs(f1);
            f2 = "p" + DropDownList2.SelectedValue + TextBox1.Text + FileUpload1.FileName;

        }
        else
        {
            f2 = HiddenField1.Value.ToString();
        }

        string s = "update Brand set brand='" + TextBox1.Text + "',pic='" + f2 + "' where brandid='" + DropDownList2.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(s, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();

        TextBox1.Text = " ";
        Image1.ImageUrl = "";
        list();
        ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Update');", true);
    }
    void list()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Brand order by brand", cn);
        DataSet ds = new DataSet();
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
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedValue != "Select")
        {

            SqlDataAdapter da = new SqlDataAdapter("select * from Brand where brandid='" + DropDownList2.SelectedValue + "'", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {


                TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
                Image1.ImageUrl = "../blogos/" + ds.Tables[0].Rows[0][2].ToString();
                HiddenField1.Value = ds.Tables[0].Rows[0][2].ToString();


            }
        }
    }
}
