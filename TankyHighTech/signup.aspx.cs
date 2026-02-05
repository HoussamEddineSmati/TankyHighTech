using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class signup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
 


    protected void txtsignup_Click(object sender, EventArgs e)
    {
        if (isformvalid())
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["TankyShop"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Users(Name,Username,Password,Email,Usertype) Values(@Name,@Username,@Password,@Email,'User')", con);
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Username", txtUname.Text);
                cmd.Parameters.AddWithValue("@Password", txtPass.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.ExecuteNonQuery();

                Response.Write("<script> alert('Registration Successfully done');  </script>");
                clr();
                con.Close();

            }
            Response.Redirect("~/login.aspx");
        }
        else
        {
            Response.Write("<script> alert('Registration failed');  </script>");
            
        }

    }

    private bool isformvalid()
    {
        if (txtUname.Text == "")
        {
            Response.Write("<script> alert('username not valid');  </script>");
            txtUname.Focus();

            return false;
        }
        else if (txtPass.Text == "")
        {
            Response.Write("<script> alert('Password not valid');  </script>");
            txtPass.Focus();
            return false;
        }
        else if (txtPass.Text != txtrepass.Text)
        {
            Response.Write("<script> alert('confirm Password not valid');  </script>");
            txtrepass.Focus();
            return false;
        }
        else if (txtEmail.Text == "")
        {
            Response.Write("<script> alert('Email not valid');  </script>");
            txtEmail.Focus();
            return false;
        }
        else if (txtName.Text == "")
        {
            Response.Write("<script> alert('Name not valid');  </script>");
            txtName.Focus();
            return false;
        }

        return true;
    }

    private void clr()
    {
        txtName.Text = string.Empty;
        txtPass.Text = string.Empty;
        txtUname.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtrepass.Text = string.Empty;
    }
}