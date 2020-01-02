using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_delete : System.Web.UI.Page
{
    string category;
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\RESPONSIVE WEBSITE DESIGN\My Software\App_Data\computerDatabase.mdf;Integrated Security=True;User Instance=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {
        category = Request.QueryString["category"].ToString();

        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from product_category where product_category='"+category.ToString()+"'";
        cmd.ExecuteNonQuery();

        con.Close();
        
        con.Open();

        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "delete from product where product_category='" + category.ToString() + "'";
        cmd1.ExecuteNonQuery();

        con.Close();

        Response.Redirect("add_category.aspx");
         
    }
}