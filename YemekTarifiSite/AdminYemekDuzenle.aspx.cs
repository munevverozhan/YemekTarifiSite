using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdminYemekDuzenle : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string id;

protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["yemekID"];
        if (Page.IsPostBack == false) //sayfayı yeniden yüklemesini önler. yani sayfayı 1 kere yükleyince o halini alır ve bu halin üstüne bir şey yapmaz.
        {

            SqlCommand cmd = new SqlCommand("select * from tblYemekler where yemekID=@p1", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtYemekAd.Text = dr[1].ToString();
                txtMalzeme.Text = dr[2].ToString();
                txtTarif.Text = dr[3].ToString();
                txtKategori.SelectedValue = dr[7].ToString();
            }
            bgl.Baglanti().Close();

            //kategorilerin dropDownListte listelenmesi işlemi
            SqlCommand kategoriListele = new SqlCommand("select * from tblKategoriler", bgl.Baglanti());
            SqlDataReader list = kategoriListele.ExecuteReader();
            txtKategori.DataTextField = "kategoriAd";
            txtKategori.DataValueField = "kategoriID";
            txtKategori.DataSource = list;
            txtKategori.DataBind();

        }   
    }

    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        //seçilen yemeğin id değerine göre kategoriID değerini tutar ve ilkDeger label'ına atar.
        SqlCommand listele = new SqlCommand("select kategoriID from tblYemekler where yemekID=@y1", bgl.Baglanti());
        listele.Parameters.AddWithValue("@y1", id);
        SqlDataReader liste = listele.ExecuteReader();
        while (liste.Read())
        {
            ilkDeger.Text = liste[0].ToString();
        }
        bgl.Baglanti().Close();

        SqlCommand cmd = new SqlCommand("update tblYemekler set yemekAd=@p1,yemekMalzeme=@p2,yemekTarif=@p3,yemekResim=@p4,kategoriID=@p5 where yemekID=@p6", bgl.Baglanti());
        cmd.Parameters.AddWithValue("@p1", txtYemekAd.Text);
        cmd.Parameters.AddWithValue("@p2", txtMalzeme.Text);
        cmd.Parameters.AddWithValue("@p3", txtTarif.Text);
        cmd.Parameters.AddWithValue("@p4","~/Pictures/"+txtResim.FileName);
        cmd.Parameters.AddWithValue("@p5", txtKategori.SelectedValue);
        cmd.Parameters.AddWithValue("@p6", id);
        cmd.ExecuteNonQuery();
        bgl.Baglanti().Close();
        Response.Write("Yemek güncellendi.");

        //güncellenen yemeğin kategorisinde kategoriAdetini 1 arttırma işlemi      
        SqlCommand arttir = new SqlCommand("update tblKategoriler set kategoriAdet=kategoriAdet+1 where kategoriID=@p1", bgl.Baglanti());
        arttir.Parameters.AddWithValue("@p1", txtKategori.SelectedValue);
        arttir.ExecuteNonQuery();
        bgl.Baglanti().Close();

        //güncellenen yemeğin ilDeger kategoriID degerine göre kategoriAdet değerini 1 azaltır.
        SqlCommand cmdSil = new SqlCommand("update  tblKategoriler set  kategoriAdet=kategoriAdet-1 where kategoriID=@k1", bgl.Baglanti());
        cmdSil.Parameters.AddWithValue("@k1", ilkDeger.Text);
        cmdSil.ExecuteNonQuery();
        bgl.Baglanti().Close();

        //fileUpload kullanarak resim ekleme işlemi.
        txtResim.SaveAs(Server.MapPath("/Pictures/" + txtResim.FileName));

    }

}