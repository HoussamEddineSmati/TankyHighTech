using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBrand : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBrandRepeater();
        }
    }
    private void BindBrandRepeater()
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("select * from Brands", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptrBrands.DataSource = dt;
                    rptrBrands.DataBind();
                }
            }
        }
    }
    protected void btnAddBrand_Click(object sender, EventArgs e)
    {
        if (txtBrand.Text != null && txtBrand.Text != "" && txtBrand.Text != string.Empty)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Brands(Name) Values(@Name)", con);
                cmd.Parameters.AddWithValue("@Name", txtBrand.Text);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Brand Added Successfully ');  </script>");
                txtBrand.Text = string.Empty;

                con.Close();
                //lblMsg.Text = "Registration Successfully done";
                //lblMsg.ForeColor = System.Drawing.Color.Green;
                txtBrand.Focus();


            }
        }
    }

}