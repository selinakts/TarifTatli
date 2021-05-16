using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Tatliler : System.Web.UI.Page
{
    data baglan = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel4.Visible = false;
        if (Page.IsPostBack == false) {
            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * From Table_Kategoriler", baglan.bag());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";/*DropDownList görünecek kısım */
            DropDownList1.DataValueField = "Kategoriid";/* Çekilen kategorinin id */
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }

        SqlCommand komut = new SqlCommand("select * from Table_Tatliler ", baglan.bag());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

      
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

    protected void BtnEkle0_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Table_Tatliler (tatliad,tatlimalzeme,tatlitarif,kategoriid) values(@p1,@p2,@p3,@p4)", baglan.bag());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        baglan.bag().Close();

    }
}