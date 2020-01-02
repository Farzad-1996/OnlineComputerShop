using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_adminlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\RESPONSIVE WEBSITE DESIGN\My Software\App_Data\computerDatabase.mdf;Integrated Security=True;User Instance=True");
    int i;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void b1_Click(object sender, EventArgs e)
    {
        i = 0;
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from admin_login where username='"+t1.Text+"'and password='"+t2.Text+"'";
        cmd.ExecuteNonQuery();
        DataTable dt=new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);

        i = Convert.ToInt32(dt.Rows.Count.ToString());
       //Response.Write(i);

        if (i == 1)
        {
            Session["admin"] = t1.Text;
            Response.Redirect("add_product.aspx");
        }

        else
        {
            l1.Text = "you have entered invalid username or password";
        }

        con.Close();
    }
}