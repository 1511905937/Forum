using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class paste : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = Con();
        SqlConnection conn = new SqlConnection(str);
        string strr = "select 用户,内容 from Content where PasteId='"+Request ["id"]+"'";
        SqlDataAdapter da = new SqlDataAdapter(strr, str);
        DataSet ds = new DataSet();
        da.Fill(ds);
        da.Dispose();
        ListView1.DataSource = ds;
        ListView1.DataBind();
    }

    string Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Session["userName"]==null)
        {
            Response.Write("<script>alert('请先登录，再评论！');</script>");
        }
        else
        {
            string str = Con();
            SqlConnection conn = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            conn.Open();
            cmd.CommandText = "insert into Content  (PasteId , 用户,内容)values('" + Request["id"] + "','" + Session["userName"] + "','" + TextBox1.Text + "') ";
            if (cmd.ExecuteNonQuery() == 1)
            {
                Response.Write("<script>alert('评论成功');</script>");
            }
            Response.Redirect("paste.aspx?id="+Request ["id"]);

            conn.Close();
        }
        
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}