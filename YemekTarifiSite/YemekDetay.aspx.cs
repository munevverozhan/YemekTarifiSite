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

    void temizle()
    {
        txtAdSoyad.Text = "";
        txtMail.Text = "";
        txtYorum.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //yemek adına tıklanan yemeği, id değerine göre  getiren sorgu.
        idYemek = Request.QueryString["yemekID"];
        SqlCommand komut = new SqlCommand("select yemekAd from tblYemekler where yemekID=@s1", bgl.Baglanti());
        komut.Parameters.AddWithValue("@s1", idYemek);
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label3.Text = dr[0].ToString();
        }
        bgl.Baglanti().Close();


        SqlCommand listele = new SqlCommand("select yorumAdSoyad,yorumTarih,yorumIcerik from tblYorumlar where yemekID=@p1", bgl.Baglanti());
        listele.Parameters.AddWithValue("@p1", idYemek);
        SqlDataReader list = listele.ExecuteReader();
        DataList2.DataSource = list;
        DataList2.DataBind();
    }

    protected void btnYorumYap_Click(object sender, EventArgs e)
    {
        if (txtAdSoyad.Text == "") // null kontrolü yapıldı
        {
            Response.Write("lütfen adınızı giriniz..");
        }
        else if (txtMail.Text == "")
        {
            Response.Write("lütfen mail adresi giriniz.");
        }
        else if (txtYorum.Text == "")
        {
            Response.Write("lütfen yorum giriniz..");
        }
        else
        {
            SqlCommand yorum = new SqlCommand("insert into tblYorumlar(yorumAdSoyad,yorumMail,yorumIcerik,yemekID) values(@p1,@p2,@p3,@p4)", bgl.Baglanti());
            yorum.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
            yorum.Parameters.AddWithValue("@p2", txtMail.Text);
            yorum.Parameters.AddWithValue("@p3", txtYorum.Text);
            yorum.Parameters.AddWithValue("@p4", idYemek);

            yorum.ExecuteNonQuery();
            bgl.Baglanti().Close();
            temizle();
        }



    }
}