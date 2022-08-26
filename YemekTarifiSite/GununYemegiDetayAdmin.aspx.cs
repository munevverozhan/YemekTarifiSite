using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegiDetayAdmin : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id=Request.QueryString["yemekID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select yemekAd,yemekMalzeme,yemekTarif,yemekTarih,yemekPuan,kategoriAd,durum from tblYemekler inner join tblKategoriler on tblKategoriler.kategoriID=tblYemekler.kategoriID where yemekID=@p1", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
        
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update tblYemekler set durum=1 where yemekID=@p1", bgl.Baglanti());
        cmd.Parameters.AddWithValue("@p1", id);
        cmd.ExecuteNonQuery();
        bgl.Baglanti().Close();
    }

    protected void btnListele_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select yemekAd,yemekMalzeme,yemekTarif,yemekTarih,yemekPuan,kategoriAd,durum from tblYemekler inner join tblKategoriler on tblKategoriler.kategoriID=tblYemekler.kategoriID where yemekID=@p1", bgl.Baglanti());
        cmd.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = cmd.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }


    protected void btnSil_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update tblYemekler set durum=0 where yemekID=@p1", bgl.Baglanti());
        cmd.Parameters.AddWithValue("@p1", id);
        cmd.ExecuteNonQuery();
        bgl.Baglanti().Close();
    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}