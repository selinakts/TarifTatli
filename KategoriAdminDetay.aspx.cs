using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class KategoriAdminDetay : System.Web.UI.Page
{
    data baglan = new data();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategoriid"]; /*id değişken diğer formdan aldık*/

        if (Page.IsPostBack == false) /*sayfayının yeniden yüklenmesini durdurur*/ 
        {
            SqlCommand komut = new SqlCommand("select * from Table_Kategoriler where kategoriid=@p1", baglan.bag());
            komut.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            baglan.bag().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update Table_Kategoriler set kategoriad=@p1,ketegoriadet=@p2 where kategoriid=@p3", baglan.bag());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        baglan.bag().Close();

    }
}