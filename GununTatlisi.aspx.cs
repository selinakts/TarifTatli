using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class GununTatlisi : System.Web.UI.Page
{
    data baglan = new data();

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * From Table_Tatliler where durum=1", baglan.bag());
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();

    }



    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}