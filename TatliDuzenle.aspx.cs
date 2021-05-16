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
        }
    }
}