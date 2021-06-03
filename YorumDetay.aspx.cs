using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    data baglan = new data();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];
        if (Page.IsPostBack == false) {
            SqlCommand komut = new SqlCommand("select YorumAdSoyad,YorumMail,Yorumicerik,TatliAd from Table_Yorumlar inner join Table_Tatliler on Table_Yorumlar.Tatliid=Table_Tatliler.Tatliid where yorumid=@p1", baglan.bag());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAd.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                Txticerik.Text = dr[2].ToString();
                TxtTatli.Text = dr[3].ToString();

            }
            baglan.bag().Close();
        }
       
    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Table_Yormlar set yorumicerik=@p1, yorumonay=@p2 where yorumid=@p3", baglan.bag());
        komut.Parameters.AddWithValue("@p1", Txticerik.Text);
        komut.Parameters.AddWithValue("@p", "True");
        komut.Parameters.AddWithValue("@p",id);
        komut.ExecuteNonQuery();
        baglan.bag().Close();
    }
}