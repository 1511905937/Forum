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

public partial class Admin_del_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string ab = Convert .ToString (GridView1.DataKeys[e.RowIndex].Value);
        string str = Con();
        SqlConnection conn = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "delete from User_M where UserName='"+ab+"'";
        cmd.Connection = conn;
        conn.Open();
        cmd.ExecuteNonQuery();
        Response.Redirect("Admin_edit_user.aspx");
        conn.Close();
    }
}