using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    data baglan = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        Panel4.Visible = false;

        //onaylı yorumlar
        SqlCommand komut = new SqlCommand("select * from Table_Yorumlar where yorumonay=1", baglan.bag());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        SqlCommand komut2 = new SqlCommand("select * from Table_Yorumlar where yorumonay=0", baglan.bag());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}