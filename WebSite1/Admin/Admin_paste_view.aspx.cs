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

public partial class Admin_paste_view : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if(Request["id"]!=null)
        TextBox1.Text = Request["id"].ToString();
    }

    string Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ab = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
        string str = Con();
        SqlConnection conn = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from Content where ContentId=" + ab;
        cmd.Connection = conn;
        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("Admin_paste_view.aspx?id="+Request["id"].ToString());
        conn.Close();
    }
}