using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Iletisim : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    void temizle()
    {
        txtAdSoyad.Text = "";
        txtKonu.Text = "";
        txtMail.Text = "";
        txtMesaj.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand mesaj = new SqlCommand("insert into tblMesajlar (mesajGonderen,mesajBaslik,mesajMail,mesajIcerik) values(@p1,@p2,@p3,@p4)", bgl.Baglanti());
        mesaj.Parameters.AddWithValue("@p1", txtAdSoyad.Text);
        mesaj.Parameters.AddWithValue("@p2", txtKonu.Text);     
        mesaj.Parameters.AddWithValue("@p3", txtMail.Text);
        mesaj.Parameters.AddWithValue("@p4", txtMesaj.Text);
      
        if (txtAdSoyad.Text == "")
        {
            Response.Write("lütfen adınızı ve soyadınızı giriniz.");
        }
        else if (txtKonu.Text == "")
        {
            Response.Write("lütfen bir konu  giriniz.");
        }
        else if (txtMail.Text == "")
        {
            Response.Write("lütfen mail adresinizi giriniz.");
        }
        else if (txtMesaj.Text == "")
        {
            Response.Write("lütfen mesajınızı giriniz.");
        }
        else
        {
            mesaj.ExecuteNonQuery();
            bgl.Baglanti().Close();
            temizle();
            Response.Write("Mesajınız alınmıştır.Teşekkür ederiz..");
        }
       
    }
}