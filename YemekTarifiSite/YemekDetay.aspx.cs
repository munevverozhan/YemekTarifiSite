using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 

public partial class YemekDetay : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string idYemek = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //yemek adına tıklanan yemeği, id değerine göre  getiren sorgu.
        idYemek = Request.QueryString["yemekID"];
        SqlCommand komut = new SqlCommand("select yemekAd from tblYemekler where yemekID=@s1", bgl.Baglanti());
        komut.Parameters.AddWithValue("@s1",idYemek);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bgl.Baglanti().Close();
    }
}