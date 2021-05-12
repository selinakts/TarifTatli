using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    data baglan = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * From Table_Kategoriler", baglan.bag());/* Baglantı oluşturma*/
        SqlDataReader dr = komut.ExecuteReader();/* Sorguyu okutma*/
        DataList1.DataSource = dr;
        DataList1.DataBind();

        Panel2.Visible = false;
        Panel4.Visible = false;

    }







    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;

    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Table_Kategoriler (KategoriAd) values(@p1)", baglan.bag());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        baglan.bag().Close();
    }
}