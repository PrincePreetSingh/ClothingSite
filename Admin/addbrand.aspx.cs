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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da1 = new SqlDataAdapter("select * from brand where  brand='" + TextBox2.Text + "'", cn);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Brand already Exist');", true);
        }

        else
        {
            SqlDataAdapter da = new SqlDataAdapter("select max(brandid) from brand", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            int id;
            if (ds.Tables[0].Rows.Count > 0 && Convert.IsDBNull(ds.Tables[0].Rows[0][0]) == false)
            {
                id = Convert.ToInt16(ds.Tables[0].Rows[0][0]) + 1;
            }
            else
            {
                id = 1;
            }
   
            string f1 = "", f2 = "";
            if (FileUpload1.FileName != "")
            {
                f1 = Server.MapPath("../blogos/p" + id + FileUpload1.FileName);
                FileUpload1.SaveAs(f1);
                f2 = "p" + id + FileUpload1.FileName;
            }
            string s = "insert into brand values('" + id + "','" + TextBox2.Text + "','" + f2 + "')";
            SqlCommand cmd = new SqlCommand(s, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

           
            TextBox2.Text = "";
            ClientScript.RegisterStartupScript(this.GetType(), "title", "alert('Record Save');", true);
        }

    }
}
