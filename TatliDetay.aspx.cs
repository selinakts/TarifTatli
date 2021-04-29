using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TatliDetay : System.Web.UI.Page
{
    data baglan = new data();
    string tatliid = "";


    protected void Page_Load(object sender, EventArgs e)
    {
        tatliid = Request.QueryString["tatliid"];

        SqlCommand komut = new SqlCommand("Select TatliAd From Table_Tatliler Where tatliid=@p1", baglan.bag());
        komut.Parameters.AddWithValue("@p1", tatliid);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        baglan.bag().Close();

        //  Yorum listeleme

        SqlCommand komut2 = new SqlCommand("select * from Table_Yorumlar where tatliid=@p2", baglan.bag());
        komut2.Parameters.AddWithValue("@p2", tatliid);
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Table_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Tatliid) values (@p1,@p2,@p3,@p4)", baglan.bag());
        komut.Parameters.AddWithValue("@p1", TextBox2.Text);
        komut.Parameters.AddWithValue("@p2", TextBox3.Text);
        komut.Parameters.AddWithValue("@p3", TextBox4.Text);
        komut.Parameters.AddWithValue("@p4", tatliid);

        komut.ExecuteNonQuery();
        baglan.bag().Close();

    }
}
