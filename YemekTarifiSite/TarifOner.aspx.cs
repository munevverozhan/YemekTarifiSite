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
        SqlCommand komut = new SqlCommand("insert into tblTarifler(tarifAd,tarifMalzeme,tarifYapilis,tarifResim,tarifSahip,tarifSahipMail) values(@p1,@p2,@p3,@p4,@p5,@p6)", bgl.Baglanti());
        komut.Parameters.AddWithValue("@p1",txtTarif.Text);
        komut.Parameters.AddWithValue("@p2",txtMalzeme.Text);
        komut.Parameters.AddWithValue("@p3",txtYapilis.Text);
        komut.Parameters.AddWithValue("@p4",txtResim.FileName);
        komut.Parameters.AddWithValue("@p5",txtTarifSahip.Text);
        komut.Parameters.AddWithValue("@p6",txtMail.Text);
        komut.ExecuteNonQuery();
        bgl.Baglanti().Close();
        temizle();
        Response.Write("Tarifiniz alınmıştır.Teşekkür ederiz..");
        


    }
}