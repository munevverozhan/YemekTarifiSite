using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOnerAdminDetay : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["tarifID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from tblTarifler where tarifID=@p1", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtTarif.Text = dr[1].ToString();
                txtMalzeme.Text = dr[2].ToString();
                txtYapilis.Text = dr[3].ToString();
               // txtResim.AccessKey = dr[4].ToString();
                txtTarifSahip.Text = dr[5].ToString();
                txtMail.Text = dr[6].ToString();
                txtKategori.SelectedValue = dr[8].ToString();
            }
            bgl.Baglanti().Close();

            //kategorilerin dropDownList'e çekilmesi işlemi
            SqlCommand listele = new SqlCommand("select * from tblKategoriler", bgl.Baglanti());
            SqlDataReader list = listele.ExecuteReader();
            txtKategori.DataValueField = "kategoriID";
            txtKategori.DataTextField = "kategoriAd";
            txtKategori.DataSource = list;
            txtKategori.DataBind();
        }
    }

    protected void btnOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update tblTarifler set tarifAd=@p1,tarifMalzeme=@p2,tarifYapilis=@p3,tarifSahip=@p4,tarifSahipMail=@p5,tarifDurum=1,kategoriID=@p6 where tarifID=@p7", bgl.Baglanti());
        cmd.Parameters.AddWithValue("@p1",txtTarif.Text);
        cmd.Parameters.AddWithValue("@p2",txtMalzeme.Text);
        cmd.Parameters.AddWithValue("@p3",txtYapilis.Text);
        cmd.Parameters.AddWithValue("@p4",txtTarifSahip.Text);
        cmd.Parameters.AddWithValue("@p5",txtMail.Text);
        cmd.Parameters.AddWithValue("@p6", txtKategori.Text);
        cmd.Parameters.AddWithValue("@p7",id);
        cmd.ExecuteNonQuery();
        bgl.Baglanti().Close();

        //onaylanan yemeğin ana sayfada görüntülenme işlemi
        SqlCommand ekle = new SqlCommand("insert into tblYemekler(yemekAd,yemekMalzeme,yemekTarif,yemekResim,kategoriID) values(@p1,@p2,@p3,@p4,@p5)  ", bgl.Baglanti());
        ekle.Parameters.AddWithValue("@p1",txtTarif.Text);
        ekle.Parameters.AddWithValue("@p2",txtMalzeme.Text);
        ekle.Parameters.AddWithValue("@p3",txtYapilis.Text);
        ekle.Parameters.AddWithValue("@p4",txtResim.AccessKey);
        ekle.Parameters.AddWithValue("@p5",txtKategori.Text);
        ekle.ExecuteNonQuery();
        bgl.Baglanti().Close();

        //onaylanan yemek için kategoriAdet sayısını 1 arttırma işlemi
        SqlCommand guncelle = new SqlCommand("update tblKategoriler set kategoriAdet=kategoriAdet+1 where kategoriID=@p1", bgl.Baglanti());
        guncelle.Parameters.AddWithValue("@p1", txtKategori.SelectedValue);
        guncelle.ExecuteNonQuery();
        bgl.Baglanti().Close();


    }
}