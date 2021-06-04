using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Mesajlar : System.Web.UI.Page
{
    data baglan = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        SqlCommand komut = new SqlCommand("select * from Table_Mesajlar", baglan.bag());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
}