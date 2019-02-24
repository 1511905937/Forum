using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.Text = Request["kind"];
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}