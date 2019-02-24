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

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
    }
     
    string  Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str =Con();
        SqlConnection conn = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandText = "insert into User_M (UserName,UserEmail,UserAge,UserSex,UserJob,UserPassword) values ('"+TextBox1 .Text +"','"+TextBox8 .Text +"','"+TextBox5.Text  +"','"+RadioButtonList1 .SelectedValue +"','"+TextBox7 .Text +"','"+TextBox2 .Text +"')";
        conn.Open();
        if (cmd.ExecuteNonQuery() == 1)
        {
            Response.Write("<script>alert('注册成功');</script>");
            Response.Redirect("index2.aspx");
        }
        conn.Close();
    }
}