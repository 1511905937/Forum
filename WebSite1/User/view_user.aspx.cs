using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class User_view_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["userName"]==null)
        {
            Response.Redirect("../regin.aspx");
        }
        string str = Con();
        SqlConnection conn = new SqlConnection(str);

        string strr = "select PasteName from Paste where PasteId in (select PasteId from Content where 用户='" + Session["userName"]+"')";
        conn.Open();
        SqlDataAdapter da = new SqlDataAdapter(strr, str);
        DataSet ds = new DataSet();

        da.Fill(ds);
        da.Dispose();
        
        GridView1.DataSource = ds;
        GridView1.DataBind();
        GridView1.AllowPaging = true;
        conn.Close();
       
    }

    string Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}