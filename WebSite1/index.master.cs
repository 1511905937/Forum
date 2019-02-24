using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class index : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userName"] == null)
        {
            Button1.Text = "登录";
         }
        else
        {
            Button1.Text = "欢迎，"+Session["userName"]+"!点击注销";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["userName"] == null)
        {
            Response.Redirect("regin.aspx");
        }
        else
        {
            Session["userName"] = null;
            Response.Write("<script>alert('注销成功！');</script>");
            Response.Redirect("index2.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }

    string Con()
    {
        return ConfigurationManager.ConnectionStrings["fornumConnectionString"].ConnectionString;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("index4.aspx?kind="+TextBox1 .Text );
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}
