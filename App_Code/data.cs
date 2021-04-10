using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class data
{
    public SqlConnection bag()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-FOC6R99\SQLEXPRESS;Initial Catalog=Db_tatlitarif;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}