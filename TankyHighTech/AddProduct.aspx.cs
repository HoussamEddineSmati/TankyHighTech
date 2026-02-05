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

public partial class AddProduct : System.Web.UI.Page
{
    public static String CS = ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //when page first time run then this code will execute
            BindBrand();
            BindCategory();


            BindGridview1();


        }
    }



    private void BindCategory()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Category", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlCategory.DataSource = dt;
                ddlCategory.DataTextField = "CatName";
                ddlCategory.DataValueField = "CatID";
                ddlCategory.DataBind();
                ddlCategory.Items.Insert(0, new ListItem("-Select-", "0"));

            }
        }
    }

    private void BindBrand()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Brands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlBrand.DataSource = dt;
                ddlBrand.DataTextField = "Name";
                ddlBrand.DataValueField = "BrandID";
                ddlBrand.DataBind();
                ddlBrand.Items.Insert(0, new ListItem("-Select-", "0"));

            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            

            SqlCommand cmd = new SqlCommand("sp_InsertProductCpu", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@PName", txtProductName.Text);
            cmd.Parameters.AddWithValue("@PPrice", txtPrice.Text);
            cmd.Parameters.AddWithValue("@PSelPrice", txtsellPrice.Text);
            cmd.Parameters.AddWithValue("@PBrandID", ddlBrand.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PCategoryID", ddlCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@PSubCatID", ddlSubCategory.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@CpuSupport", txtSupport.Text);
            cmd.Parameters.AddWithValue("@CpuFrequency", txtfrequence.Text);
            cmd.Parameters.AddWithValue("@PDescription", txtDescription.Text);
            cmd.Parameters.AddWithValue("@PProductDetails", txtPDetail.Text);
            cmd.Parameters.AddWithValue("@PMaterialCare", txtMatCare.Text);
            
            
            
          
         

            if (con.State == ConnectionState.Closed) { con.Open(); }
            Int64 PID = Convert.ToInt64(cmd.ExecuteScalar());
            
            

            if (string.IsNullOrEmpty(txtQuantity.Text) == false)
            {
                int Quantity = Convert.ToInt32(txtQuantity.Text);

                // SqlCommand cmd2 = new SqlCommand("insert into ProductSizeQuantity(PID,SizeID,Quantity) values('" + PID + "','" + SizeID + "','" + Quantity + "')", con);
                SqlCommand cmd2 = new SqlCommand("insert into ProductQuantity(PID,Quantity) values(@PID,@Quantity)", con);
                cmd2.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd2.Parameters.AddWithValue("@Quantity", Convert.ToInt32(Quantity));
                cmd2.ExecuteNonQuery();
            }

            //Insert and upload images
            if (fuImg01.HasFile)
            {
                string SavePath = Server.MapPath("~/Images/ProductImages/") + PID;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);

                }
                string Extention = Path.GetExtension(fuImg01.PostedFile.FileName);
                fuImg01.SaveAs(SavePath + "\\" + txtProductName.Text.ToString().Trim() + "01" + Extention);


                SqlCommand cmd3 = new SqlCommand("insert into ProductImages(PID,Name,Extention) values(@PID,@Name,@Extention)", con);
                cmd3.Parameters.AddWithValue("@PID", Convert.ToInt32(PID));
                cmd3.Parameters.AddWithValue("@Name", txtProductName.Text.ToString().Trim() + "01");
                cmd3.Parameters.AddWithValue("@Extention", Extention);
                cmd3.ExecuteNonQuery();
            }

            if (ddlSubCategory.SelectedItem.Value == "Cpu")
            {
                SqlCommand cmd1 = new SqlCommand("sp_InsertCpu", con);
                cmd1.CommandType = CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@CpuName", txtProductName.Text);
                cmd1.Parameters.AddWithValue("@CpuPrice", txtPrice.Text);
                cmd1.Parameters.AddWithValue("@CpuSelPrice", txtsellPrice.Text);
                cmd1.Parameters.AddWithValue("@CpuBrandID", ddlBrand.SelectedItem.Value);
                cmd1.Parameters.AddWithValue("@CpuSupport", txtSupport.Text);
                cmd1.Parameters.AddWithValue("@CpuFrequency", ddlSubCategory.SelectedItem.Value);
                cmd1.Parameters.AddWithValue("@CpuDescription", txtDescription.Text);
                cmd1.Parameters.AddWithValue("@CpuProductDetails", txtPDetail.Text);
                cmd1.Parameters.AddWithValue("@CpuMaterialCare", txtMatCare.Text);
            }

        }

    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cat = ddlCategory.SelectedValue;
        string subcat = ddlSubCategory.SelectedValue;


        if (cat == "Pieces")
        {

            switch (subcat)
            {
                case "Cpu":
                    pnlTextBox.Enabled = true;
                    pnlTextBox1.Enabled = true;
                    pnlTextBox2.Enabled = false;
                    pnlTextBox3.Enabled = false;
                    break;
                case "MotherBoard":
                    pnlTextBox.Enabled = true;
                    pnlTextBox1.Enabled = false;
                    pnlTextBox2.Enabled = true;
                    pnlTextBox3.Enabled = false;
                    break;
                case "Ram":
                    pnlTextBox.Enabled = false;
                    pnlTextBox1.Enabled = true;
                    pnlTextBox2.Enabled = true;
                    pnlTextBox3.Enabled = true;
                    break;
                default:
                    pnlTextBox.Enabled = false;
                    pnlTextBox1.Enabled = false;
                    pnlTextBox2.Enabled = false;
                    pnlTextBox3.Enabled = false;
                    break;
            }

        }


        int MainCategoryID = Convert.ToInt32(ddlCategory.SelectedItem.Value);

        using (SqlConnection con = new SqlConnection(CS))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from SubCategory where MainCatID=@MainCatID", con);
            cmd.Parameters.AddWithValue("@MainCatID", ddlCategory.SelectedItem.Value);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                ddlSubCategory.DataSource = dt;
                ddlSubCategory.DataTextField = "SubCatName";
                ddlSubCategory.DataValueField = "SubCatID";
                ddlSubCategory.DataBind();
                ddlSubCategory.Items.Insert(0, new ListItem("-Select-", "0"));

            }
        }
    }


    protected void ddlSubCategory_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void BindGridview1()
    {
        SqlConnection con = new SqlConnection(CS);
        SqlCommand cmd = new SqlCommand(" select distinct t1.PID,t1.PName,t1.PPrice,t1.PSelPrice,t2.Name as Brand,t3.CatName,t4.SubCatName,t8.Quantity from Products as t1  inner join Brands as t2 on t2.BrandID=t1.PBrandID  inner join Category as t3 on t3.CatID=t1.PCategoryID  inner join SubCategory as t4 on t4.SubCatID=t1.PSubCatID   inner join ProductQuantity as t8 on t8.PID=t1.PID order by t1.PName", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
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

