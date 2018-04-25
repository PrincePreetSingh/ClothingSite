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
            SqlDataAdapter da = new SqlDataAdapter("select * from category order by catname", cn);
            DataSet ds = new DataSet(); 
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "catname";
                DropDownList1.DataValueField = "catid";
                DropDownList1.DataBind();
            }
            DropDownList1.Items.Add("Select");
            DropDownList1.SelectedValue = "Select";

            da = new SqlDataAdapter("select * from color order by color_name", cn);
            ds = new DataSet(); 
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "color_name";
                DropDownList2.DataValueField = "color_id";
                DropDownList2.DataBind();
            }
            DropDownList2.Items.Add("Select");
            DropDownList2.SelectedValue = "Select";



        SqlDataAdapter    da1 = new SqlDataAdapter("select * from brand", cn);
          DataSet  ds1 = new DataSet();
            da1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                DropDownList3.DataSource = ds1;
                DropDownList3.DataTextField = "brand";
                DropDownList3.DataValueField = "brandid";
                DropDownList3.DataBind();
            }
            DropDownList3.Items.Add("Select");
            DropDownList3.SelectedValue = "Select";



            da1 = new SqlDataAdapter("select * from size order by size", cn);
            ds1 = new DataSet();
            da1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                DropDownList4.DataSource = ds1;
                DropDownList4.DataTextField = "size";
                DropDownList4.DataValueField = "sizeid";
                DropDownList4.DataBind();
            }
            DropDownList4.Items.Add("Select");
            DropDownList4.SelectedValue = "Select";


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select * from product where pcode='" + TextBox1.Text + "'", cn);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Product already Exist');", true);
        }

        else
        {
            string f1 = "", f2 = "", f3 = "", f4 = "";
            if (FileUpload1.FileName != "")
            {
                f1 = Server.MapPath("../prodsimg/p" + TextBox1.Text + FileUpload1.FileName);
                FileUpload1.SaveAs(f1);
                f2 = "p" + TextBox1.Text + FileUpload1.FileName;
            }
            if (FileUpload2.FileName != "")
            {
                f3 = Server.MapPath("../prodlimg/p" + TextBox1.Text + FileUpload2.FileName);
                FileUpload1.SaveAs(f3);
                f4 = "p" + TextBox1.Text + FileUpload1.FileName;
            }
            string s = "insert into product values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + TextBox3.Text + "','" + DropDownList5.SelectedValue + "','" + f2 + "','" + f4 + "','" + TextBox4.Text + "')";
            SqlCommand cmd = new SqlCommand(s, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
           
            DropDownList1.SelectedValue = "Select";
            DropDownList2.SelectedValue = "Select";
            DropDownList3.SelectedValue = "Select";
            DropDownList4.SelectedValue = "Select";
            DropDownList5.SelectedValue = "Select";
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Save');", true);
        }
    }
}
