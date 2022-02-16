using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class Config : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //configattach();
        }
    }
    protected void configattach()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Cpu", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCpu.DataTextField = "CpuName";
                ddlCpu.DataValueField = "CpuID";
                ddlCpu.DataBind();
                ddlCpu.Items.Insert(0, new ListItem(" --Slect Cpu-- ", "0"));

            }
        }
    }

    protected void ddlCpu_SelectedIndexChanged(object sender, EventArgs e)
    {
        string supp = ddlCpu.SelectedValue;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from MotherBoard where MSupport = " + supp, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlMotherBoard.DataTextField = "MName";
                ddlMotherBoard.DataValueField = "MPort";
                ddlMotherBoard.DataBind();
                ddlMotherBoard.Items.Insert(0, new ListItem(" --Slect MotherBoard-- ", "0"));

            }
        }
    }

    protected void ddlMotherBoard_SelectedIndexChanged(object sender, EventArgs e)
    {
        string supp = ddlMotherBoard.SelectedValue;
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Ram where RPort = " + supp, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlRam.DataSource = dt;
                ddlRam.DataTextField = "RName";
                ddlRam.DataValueField = "RPort";
                ddlRam.DataBind();
                ddlRam.Items.Insert(0, new ListItem(" --Slect Ram-- ", "0"));

            }
        }

    }

}