using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class kullanici : System.Web.UI.MasterPage
{
    data baglan = new data();/*sınıfı çağırma*/ 
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * From Table_Kategoriler", baglan.bag());
        SqlDataReader oku = komut.ExecuteReader();/* komut çalıştır*/
        DataList1.DataSource = oku; /*DataList'te okunan veriler*/
        DataList1.DataBind();/*datbind metod işlemleri dataliste aktarma işlemi*/

    }
}
