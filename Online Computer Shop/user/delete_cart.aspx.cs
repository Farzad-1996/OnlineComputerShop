using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class user_delete_cart : System.Web.UI.Page
{
    //SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\RESPONSIVE WEBSITE DESIGN\My Software\App_Data\computerDatabase.mdf;Integrated Security=True;User Instance=True");

    String s,t;
    String[] a = new String[6];
    int id=0;
    String product_name, product_desc, product_price, product_qty, product_images;
    int count = 0;
    int product_id,qty;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["id"].ToString());

        DataTable dt = new DataTable();
        dt.Rows.Clear();

        dt.Columns.AddRange(new DataColumn[6] { new DataColumn("product_name"), new DataColumn("product_desc"), new DataColumn("product_price"), new DataColumn("product_qty"), new DataColumn("product_images"), new DataColumn("id")});

        if (Request.Cookies["aa"] != null)
        {
            s = Convert.ToString(Request.Cookies["aa"].Value);
            String[] strArr = s.Split('|');

            for (int i = 0; i < strArr.Length; i++)
            {
                t = Convert.ToString(strArr[i].ToString());
                String[] strArr1 = t.Split(',');

                for (int j = 0; j < strArr1.Length; j++)
                {
                    a[j] = strArr1[j].ToString();
                }

                dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), a[4].ToString(), i.ToString());
            }
        }

        
        
        dt.Rows.RemoveAt(id);

        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["aa"].Expires = DateTime.Now.AddDays(-1);

        foreach (DataRow dr in dt.Rows)
        {
            product_name = dr["product_name"].ToString();
            product_desc = dr["product_desc"].ToString();
            product_price = dr["product_price"].ToString();
            product_qty = dr["product_qty"].ToString();
            product_images = dr["product_images"].ToString();
           // product_id = Convert.ToInt32(dr["product_id"].ToString());

            count = count + 1;

            if (count == 1)
            {
                Response.Cookies["aa"].Value = product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() + "," + product_qty.ToString() + "," + product_images.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }

            else
            {
                Response.Cookies["aa"].Value = Request.Cookies["aa"].Value + "|" + product_name.ToString() + "," + product_desc.ToString() + "," + product_price.ToString() + "," + product_qty.ToString() + "," + product_images.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }
        }

        Response.Redirect("view_cart.aspx");

    }
}