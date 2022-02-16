using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            if (!IsPostBack)
            {
                BindGridview();
            }
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void txtID_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString);
        if (con.State == ConnectionState.Closed) { con.Open(); }
        SqlCommand cmd = new SqlCommand("select PName from Products where PID=@ID", con);
        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(txtID.Text));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        da.Fill(ds, "dt");
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            btnUpdateProduct.Enabled = true;
            txtUpdateProductName.Text = ds.Tables[0].Rows[0]["PName"].ToString();

        }
        else
        {
            btnUpdateProduct.Enabled = false;
            txtUpdateProductName.Text = string.Empty;
        }
        con.Close();
    }
    protected void btnUpdateProduct_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString);
        if (con.State == ConnectionState.Closed) { con.Open(); }
        SqlCommand cmd = new SqlCommand("update Products set PName=UPPER(@PName) where PID=@ID", con);
        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(txtID.Text));
        cmd.Parameters.AddWithValue("@PName", txtUpdateProductName.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Update successfully')</script>");
        BindGridview();
        txtID.Text = string.Empty;
        txtUpdateProductName.Text = string.Empty;


    }

    protected void btnDeleteProduct_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString);
        if (con.State == ConnectionState.Closed) { con.Open(); }
        SqlCommand cmd = new SqlCommand("DELETE FROM ProductQuantity WHERE @PID = PID", con);
        cmd.Parameters.AddWithValue("@PID", Convert.ToInt32(txtID.Text));
        cmd.ExecuteNonQuery();

        
        if (con.State == ConnectionState.Closed) { con.Open(); }
        SqlCommand cmd1 = new SqlCommand("DELETE FROM ProductImages WHERE @PID = PID", con);
        cmd1.Parameters.AddWithValue("@PID", Convert.ToInt32(txtID.Text));
        cmd1.ExecuteNonQuery();

        SqlCommand cmd2 = new SqlCommand("delete from Products where PID=@ID", con);
        cmd2.Parameters.AddWithValue("@ID", Convert.ToInt32(txtID.Text));
        cmd2.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Delete successfully')</script>");
        BindGridview();
        txtID.Text = string.Empty;
        txtUpdateProductName.Text = string.Empty;


    }

    private void BindGridview()
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString);
        if (con.State == ConnectionState.Closed) { con.Open(); }
        SqlDataAdapter da = new SqlDataAdapter("select * from Products", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        else
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
    }
}