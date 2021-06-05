using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    data baglan = new data();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            id = Request.QueryString["Tarifid"];
            SqlCommand komut = new SqlCommand("select * from Table_Tarifler where Tarifid=@p1", baglan.bag());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())
            {
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                TextBox4.Text = dr[3].ToString();
                TextBox5.Text = dr[5].ToString();
                TextBox6.Text = dr[6].ToString();
            }
            baglan.bag().Close();

            SqlCommand komut2 = new SqlCommand("select * from Table_Kategoriler", baglan.bag());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

        }

       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Table_Tarifler set TarifDurum=1 where tarifid=@p1", baglan.bag());
        komut.Parameters.AddWithValue("@p1", id);
        komut.ExecuteNonQuery();
        baglan.bag().Close();


        SqlCommand komut2 = new SqlCommand("insert into Table_Tatliler (TatliAd,TatliMalzeme,TatliTarif,Kategoriid) values (@p1,@p2,@p3,@p4)", baglan.bag());
        komut2.Parameters.AddWithValue("@p1", TextBox2.Text);
        komut2.Parameters.AddWithValue("@p2", TextBox3.Text);
        komut2.Parameters.AddWithValue("@p3", TextBox4.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        baglan.bag().Close();
    }
}