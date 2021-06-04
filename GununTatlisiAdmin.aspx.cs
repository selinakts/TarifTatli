using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununTatlisiAdmin : System.Web.UI.Page
{

    data baglan = new data();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
        SqlCommand komut = new SqlCommand("select * from Table_Tatliler", baglan.bag());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
}