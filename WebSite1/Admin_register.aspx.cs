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

public partial class Admin_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }
    string Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = Con();
        SqlConnection conn = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "insert into Admin (AdminName,AdminEmail,AdminAge,AdminPassword) values ('" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "')";
        conn.Open();
        cmd.ExecuteNonQuery();
        cmd.CommandText = "insert into User_M (UserName,UserEmail,UserAge,UserPassword) values ('" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox5.Text + "','" + TextBox2.Text + "')";
        if (cmd.ExecuteNonQuery() == 1)
        {
            Response.Write("<script>alert('注册成功');</script>");
            Response.Redirect("index2.aspx");
        }
        conn.Close();
    }
}