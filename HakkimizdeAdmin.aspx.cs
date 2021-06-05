using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class HakkimizdeAdmin : System.Web.UI.Page
{
    data baglan = new data();

    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        if (Page.IsPostBack == false) {
            SqlCommand komut = new SqlCommand("select * from Table_Hakkimizda ", baglan.bag());
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[0].ToString();
            }
            baglan.bag().Close();
        }
       
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Table_Hakkimizda set Metin=@p1", baglan.bag());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        baglan.bag().Close();
    }

    protected void Button10_Click(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }
}