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

public partial class regin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if(TextBox1 .Text ==""||TextBox2 .Text =="")
        {
            Response.Write("<script>alert('请填写完整');</script>");
        }
        else 
        {
            string str = Con();
            SqlConnection conn = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            int o;
            if (DropDownList1 .SelectedValue =="普通用户")
            {
                cmd.CommandText = "select * from User_M where UserName='" + TextBox1.Text + "'";
                o= 1;
            }
            else
            {
                cmd.CommandText = "select * from Admin where AdminName='" + TextBox1.Text + "'";
                o = 0;
            }
               
            conn.Open();
            int ok=0;
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read ())
            {
                if((reader[0].ToString ()==TextBox1 .Text.ToString ())&&(reader[1].ToString ()==TextBox2 .Text .ToString ()))
                {
                    ok = 1;
                }
            }
            if(ok==0)
            {
                Response.Write("<script>alert('密码或用户名填写错误！');</script>");
            }
            else
            {
                if(o==1)
                Session["userName"] = TextBox1.Text;
                else
                {
                    Session["AdminName"] = TextBox1.Text;
                    Session["userName"] = TextBox1.Text;
                }
                
                Response.Redirect("index2.aspx");
            }
            
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}