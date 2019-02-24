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

public partial class Admin_Paste : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["AdminName"]==null)
        {
            Response.Write("<script>alert('请以管理员身份登录！');</script>");
            Response.Redirect("../regin.aspx");
        }
    }

    string Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ab = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        string str = Con();
        SqlConnection conn = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from Paste where PasteId=" + ab ;
        cmd.Connection = conn;
        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("Admin_Paste.aspx");
        conn.Close();
    }
}