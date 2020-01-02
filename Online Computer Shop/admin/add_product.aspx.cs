using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_add_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\RESPONSIVE WEBSITE DESIGN\My Software\App_Data\computerDatabase.mdf;Integrated Security=True;User Instance=True");
    String a, b;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("adminlogin.aspx");
        }

        if (IsPostBack) return;

        dd.Items.Clear();

        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from product_category";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {
            dd.Items.Add(dr["product_category"].ToString());

        }

        con.Close();
    }

    protected void b1_Click(object sender, EventArgs e)
    {
        a = Class1.GetRandomPassword(10).ToString();
        f1.SaveAs(Request.PhysicalApplicationPath + "./images/" + a + f1.FileName.ToString());

        b = "images/" + a + f1.FileName.ToString();

        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into product values('"+t1.Text+"','"+t2.Text+"',"+t3.Text+","+t4.Text+",'"+b.ToString()+"','"+dd.SelectedItem.ToString()+"')";
        cmd.ExecuteNonQuery();

        con.Close();
    }
}