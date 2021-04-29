using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class İletisim : System.Web.UI.Page
{
    data baglan = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Table_Mesajlar (mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)", baglan.bag());
        komut.Parameters.AddWithValue("@p1", TxtGonderen.Text);
        komut.Parameters.AddWithValue("@p2", TxtKonu.Text);
        komut.Parameters.AddWithValue("@p3", TxtMail.Text);
        komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);
        komut.ExecuteNonQuery();

        baglan.bag().Close();
    }
}