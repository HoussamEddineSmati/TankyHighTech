using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            btnlogout.Visible = true;
            btnLogin.Visible = false;
            lblSuccess.Text = "Welcome <b>" + Session["Username"].ToString() + "</b>";
        }
        else
        {
            btnlogout.Visible = false;
            btnLogin.Visible = true;
            Response.Redirect("~/login.aspx");
        }
    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
        //Session.Abandon();
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/Home.aspx");

    }
}