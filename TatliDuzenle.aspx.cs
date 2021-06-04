using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TatliDuzenle : System.Web.UI.Page
{
    data baglan = new data();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tatliid"]; /*id değişken diğer formdan aldık*/

        if (Page.IsPostBack == false) /*sayfayının yeniden yüklenmesini durdurur*/
        {
            SqlCommand komut = new SqlCommand("select * from Table_Tatliler where Tatliid=@p1", baglan.bag());
            komut.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            baglan.bag().Close();

            if (Page.IsPostBack == false)
            {
                //Kategori Listesi
                SqlCommand komut2 = new SqlCommand("Select * From Table_Kategoriler", baglan.bag());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "KategoriAd";/*DropDownList görünecek kısım */
                DropDownList1.DataValueField = "Kategoriid";/* Çekilen kategorinin id */
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Table_Tatliler set tatliad=@p1, tatlimalzeme=@p2,tatlitarif=@p3,kategoriid=@p4 where tatliid=@p5 ", baglan.bag());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", id);
        komut.ExecuteNonQuery();
        baglan.bag().Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Table_Tatliler set durum=0", baglan.bag());
        komut.ExecuteNonQuery();
        baglan.bag().Close();

        //günün yemegi için durum true yapma
        SqlCommand komut2 = new SqlCommand("update Table_Tatliler set durum=1 tatliid=@p1", baglan.bag());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        baglan.bag().Close();
        
    }
}