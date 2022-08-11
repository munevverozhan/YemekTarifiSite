using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for sqlBaglantiClass
/// </summary>
public class sqlBaglantiClass
{
    public SqlConnection Baglanti()
    {
        SqlConnection conn = new SqlConnection(@"Data Source = DESKTOP-GBKS0E6; Initial Catalog = YemekTarifiSitesiDB; Integrated Security = True");
        conn.Open();
        return conn;
    }
}