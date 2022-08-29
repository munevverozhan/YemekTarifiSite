using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    string id = "";
    string islem = "";
    void temizle()
    {
        txtKategoriAd.Text = "";
    }

    sqlBaglantiClass bgl = new sqlBaglantiClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) // sayfanın sürekli yenilenmesini önler.
        {
            id = Request.QueryString["kategoriID"];
            islem = Request.QueryString["islem"];

        }
        SqlCommand cmd = new SqlCommand("select * from tblKategoriler", bgl.Baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //SİLME İŞLEMİ
        if (islem == "sil")
        {
            SqlCommand cmd1 = new SqlCommand("delete from tblKategoriler where kategoriID=@p1", bgl.Baglanti());
            cmd1.Parameters.AddWithValue("@p1", id);
            cmd1.ExecuteNonQuery();
            bgl.Baglanti().Close();
            Response.Write("kategori silindi..");
            temizle();
        }


        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd1 = new SqlCommand("insert into tblKategoriler(kategoriAd) values(@p1)", bgl.Baglanti());
            cmd1.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            
            if (txtKategoriAd.Text == "")
            {
                Response.Write("Lütfen bir kategori ismi giriniz...");
            }  
            else
            {
                cmd1.ExecuteNonQuery();
                bgl.Baglanti().Close();
                Response.Write("Kategori başarıyla eklendi...");
                temizle();

            }
        }
        catch (Exception mesaj)
        {
            Response.Write(mesaj.Message);
        }

    }
}