using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetayAdmin : System.Web.UI.Page
{
    void temizle()
    {
        txtKategoriAd.Text = "";
        txtKategoriAdet.Text = "";
    }

    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string idKategori = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        idKategori = Request.QueryString["kategoriID"];
        if (Page.IsPostBack == false) //sayfayı yeniden yüklemesini önler. yani sayfayı 1 kere yükleyince o halini alır ve bu halin üstüne bir şey yapmaz.
        {          
            SqlCommand cmd = new SqlCommand("select kategoriAd,kategoriAdet from tblKategoriler where kategoriID=@p1", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", idKategori);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtKategoriAd.Text = dr[0].ToString();
                txtKategoriAdet.Text = dr[1].ToString();
            }
            bgl.Baglanti().Close();
        }
     
      
    }

    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update tblKategoriler set kategoriAd=@p1,kategoriAdet=@p2,kategoriResim=@p3 where kategoriID=@p4", bgl.Baglanti());
        cmd.Parameters.AddWithValue("@p1",txtKategoriAd.Text);
        cmd.Parameters.AddWithValue("@p2",txtKategoriAdet.Text);
        cmd.Parameters.AddWithValue("@p3",fileKategoriResim.FileName);
        cmd.Parameters.AddWithValue("@p4",idKategori);
        cmd.ExecuteNonQuery();
        bgl.Baglanti().Close();
        Response.Write("Kategori güncellendi...");
        temizle();
      

    }
}