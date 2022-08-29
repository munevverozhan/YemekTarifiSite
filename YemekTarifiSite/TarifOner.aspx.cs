using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOner : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();

    void temizle()
    {
        txtTarif.Text = "";
        txtMail.Text = "";
        txtMalzeme.Text = "";
        txtTarifSahip.Text = "";
        txtYapilis.Text = "";

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTarifOner_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into tblTarifler(tarifAd,tarifMalzeme,tarifYapilis,tarifSahip,tarifSahipMail) values(@p1,@p2,@p3,@p4,@p5)", bgl.Baglanti());
        komut.Parameters.AddWithValue("@p1",txtTarif.Text);
        komut.Parameters.AddWithValue("@p2",txtMalzeme.Text);
        komut.Parameters.AddWithValue("@p3",txtYapilis.Text);
        komut.Parameters.AddWithValue("@p4",txtTarifSahip.Text);
        komut.Parameters.AddWithValue("@p5",txtMail.Text);
        if (txtTarif.Text == "")
        {
            Response.Write("Lütfen tarifin ismini giriniz...");
        }
        else if (txtMalzeme.Text == "")
        {
            Response.Write("Lütfen tarifin malzemelerini giriniz...");
        }
        else if (txtYapilis.Text == "")
        {
            Response.Write("Lütfen tarifin yapılışını giriniz...");
        }
       
        else if (txtTarifSahip.Text == "")
        {
            Response.Write("Lütfen isminizi giriniz...");
        }
        else if (txtMail.Text == "")
        {
            Response.Write("Lütfen mail adresinizi giriniz...");
        }
        else
        {
            komut.ExecuteNonQuery();
            bgl.Baglanti().Close();
            temizle();
            Response.Write("Tarifiniz alınmıştır.Teşekkür ederiz..");

        }
        
    }
}