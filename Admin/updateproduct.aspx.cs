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


            da = new SqlDataAdapter("select * from brand order by brand", cn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList4.DataSource = ds;
                DropDownList4.DataTextField = "brand";
                DropDownList4.DataValueField = "brandid";
                DropDownList4.DataBind();
            }
            DropDownList4.Items.Add("Select");
            DropDownList4.SelectedValue = "Select";


            da = new SqlDataAdapter("select * from size order by size", cn);
            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DropDownList5.DataSource = ds;
                DropDownList5.DataTextField = "size";
                DropDownList5.DataValueField = "sizeid";
                DropDownList5.DataBind();
            }
            DropDownList5.Items.Add("Select");
            DropDownList5.SelectedValue = "Select";
            fill();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string f1 = "", f2 = "", f3 = "", f4 = "";
        if (FileUpload1.FileName != "")
        {
            f1 = Server.MapPath("../prodsimg/p" + DropDownList3.SelectedValue + FileUpload1.FileName);
            FileUpload1.SaveAs(f1);
            f2 = "p" + DropDownList3.SelectedValue + FileUpload1.FileName;
        }
        else
        {
            f2 = HiddenField1.Value.ToString();
        }
        if (FileUpload2.FileName != "")
        {
            f3 = Server.MapPath("../prodlimg/p" + DropDownList3.SelectedValue + FileUpload2.FileName);
            FileUpload2.SaveAs(f3);
            f4 = "p" + DropDownList3.SelectedValue + FileUpload2.FileName;
        }
        else
        {
            f4 = HiddenField2.Value.ToString();
        }
        string s = "update product set pname='" + TextBox2.Text + "',catid='" + DropDownList1.SelectedValue + "',colorid='" + DropDownList2.SelectedValue + "',brandid='" + DropDownList4.SelectedValue + "',size='" + DropDownList5.SelectedValue + "',price='" + TextBox3.Text + "',productfor='" + DropDownList6.SelectedValue + "',pic1='" + f2 + "',pic2='" + f4 + "',detail='" + TextBox4.Text + "' where pcode='" +  DropDownList3.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(s, cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();

     
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Image1.ImageUrl = "";
        Image2.ImageUrl = "";

        DropDownList1.SelectedValue = "Select";
        DropDownList2.SelectedValue = "Select";
        DropDownList4.SelectedValue = "Select";
        DropDownList5.SelectedValue = "Select";
        DropDownList6.SelectedValue = "Select";
        fill();

        ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Update');", true);
        
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
                DropDownList1.SelectedValue = ds.Tables[0].Rows[0][2].ToString();
                DropDownList2.SelectedValue = ds.Tables[0].Rows[0][3].ToString();
                DropDownList4.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
                DropDownList5.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][6].ToString();
                DropDownList6.SelectedValue = ds.Tables[0].Rows[0][7].ToString();
                Image1.ImageUrl = "../prodsimg/" + ds.Tables[0].Rows[0][8].ToString();
                HiddenField1.Value = ds.Tables[0].Rows[0][8].ToString();
                Image2.ImageUrl = "../prodlimg/" + ds.Tables[0].Rows[0][9].ToString();
                HiddenField2.Value = ds.Tables[0].Rows[0][9].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0][10].ToString();
            }
        }
    }
}
