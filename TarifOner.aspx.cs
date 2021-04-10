using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    data baglan = new data();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnTarifOner_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Table_Tarifler(TarifAd,TarifMalzeme,Tarifyapilis,TarifResim,TarifSahip,TarifSahipMail)values(@t1,@t2,@t3,@t4,@t5,@t6)", baglan.bag());
        komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
        komut.Parameters.AddWithValue("@t2", TxtMalzemeler.Text);
        komut.Parameters.AddWithValue("@t3", TxtTarif.Text);
        komut.Parameters.AddWithValue("@t4", FileUpload1.FileName);
        komut.Parameters.AddWithValue("@t5", TxtTarfifOner.Text);
        komut.Parameters.AddWithValue("@t6", TxtMail.Text);

        komut.ExecuteNonQuery();
        baglan.bag().Close();
        Response.Write("Tarifiniz alınmıştır...");


    }
}