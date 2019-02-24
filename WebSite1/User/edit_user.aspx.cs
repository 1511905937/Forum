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

public partial class edit_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack )
        {
            string str = Con();
            SqlConnection conn = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "select * from User_M where UserName='" + Session["userName"] + "'";
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader[0].ToString();
               // TextBox2.Text = reader[1].ToString();
                TextBox3.Text = reader[2].ToString();
                TextBox4.Text = reader[5].ToString();
                TextBox5.Text = reader[4].ToString();
                if (reader[3].ToString() == "男")
                {
                    RadioButtonList1.SelectedValue = "男";
                }
                else
                {
                    RadioButtonList1.SelectedValue = "女";
                }
            }
            conn.Close();
        }
        
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
        cmd.CommandText = "select * from User_M where UserName='" + Session["userName"] + "'";
        conn.Open();
        int ok = 0;
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            if ((reader[0].ToString() == TextBox1.Text.ToString()) && (reader[1].ToString() == TextBox7.Text.ToString()))
            {
                ok = 1;
            }
        }
        conn.Close();
        if(ok==1)
        {
 cmd.CommandText = "update User_M set UserPassword='" + TextBox6 .Text +"', UserAge='"+TextBox3.Text  +"', UserSex='"+RadioButtonList1 .SelectedValue +"', UserEmail='"+TextBox5 .Text +"', UserJob='"+TextBox4 .Text +"' where UserName='"+TextBox1 .Text +"'";
        conn.Open();
        if(cmd.ExecuteNonQuery ()==1)
        {
            Response.Write("<script>alert('修改成功');</script>");
        }
        }
        else
        {
            Response.Write("<script>alert('密码错误');</script>");
        }
       
        conn.Close();
    }
}