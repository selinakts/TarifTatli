using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{
    data baglan = new data();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Mesajid"];
        SqlCommand komut = new SqlCommand("select * from Table_Mesajlar where mesajid=@p1", baglan.bag());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[4].ToString();
        }
        baglan.bag().Close();
    }
}