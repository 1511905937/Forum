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

public partial class add_paste : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["userName"]==null)
        {
            Response.Redirect("../regin.aspx");
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
        cmd.CommandText = "insert into Paste (PasteName,PasteUserName,PasteDate,PasteKind) values ('" + TextBox1.Text + "','" + Session["userName"] + "','" + DateTime.Now + "','" + TextBox2.Text + "')";
        conn.Open();
        if (cmd.ExecuteNonQuery() == 1)
        {
            Response.Write("<script>alert('发起成功');</script>");
            cmd.CommandText = "select PasteId from Paste where PasteName='"+TextBox1 .Text +"'";
            string s="";
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read ())
            {
                s = reader[0].ToString ();
            }
                Response.Redirect("../paste.aspx?id=" + s);
        }
        conn.Close();
    }
}