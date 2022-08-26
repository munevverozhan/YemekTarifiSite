using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class GununYemegiAdminEdit : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["yemekID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from tblYemekler where yemekID=@p1", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtAd.Text = dr[1].ToString();
                txtMalzeme.Text = dr[2].ToString();
                txtTarif.Text = dr[3].ToString();
                txtResim.AccessKey = dr[4].ToString();
                txtKategori.SelectedValue = dr[7].ToString();
            }
            bgl.Baglanti().Close();

            //kategorilerin dropDownListte listelenmesi işlemi
            SqlCommand listele = new SqlCommand("select * from tblKategoriler", bgl.Baglanti());
            SqlDataReader list = listele.ExecuteReader();
            txtKategori.DataValueField = "kategoriID";
            txtKategori.DataTextField = "kategoriAd";
            txtKategori.DataSource = list;
            txtKategori.DataBind();
        }


    }

    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        SqlCommand update = new SqlCommand("update tblYemekler set yemekAd=@p1,yemekMalzeme=@p2,yemekTarif=@p3,yemekResim=@p4,kategoriID=@p5 where yemekID=@p6", bgl.Baglanti());
        update.Parameters.AddWithValue("@p1",txtAd.Text);
        update.Parameters.AddWithValue("@p2",txtMalzeme.Text);
        update.Parameters.AddWithValue("@p3",txtTarif.Text);
        update.Parameters.AddWithValue("@p4",txtResim.FileName);
        update.Parameters.AddWithValue("@p5",txtKategori.SelectedValue);
        update.Parameters.AddWithValue("@p6",id);
        update.ExecuteNonQuery();
        Response.Write("Yemek güncellendi.");
    }
}