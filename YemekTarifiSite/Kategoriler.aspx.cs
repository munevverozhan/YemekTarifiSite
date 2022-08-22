using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    void temizle()
    {
        txtKategoriAd.Text = "";
    }

    sqlBaglantiClass bgl = new sqlBaglantiClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tblKategoriler", bgl.Baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

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
            SqlCommand cmd1 = new SqlCommand("insert into tblKategoriler(kategoriAd,kategoriResim) values(@p1,@p2)", bgl.Baglanti());
            cmd1.Parameters.AddWithValue("@p1", txtKategoriAd.Text);
            cmd1.Parameters.AddWithValue("@p2", kategoriIcon.FileName);
            if (txtKategoriAd.Text == "")
            {
                Response.Write("Lütfen bir kategori ismi giriniz...");
            }
            else if (kategoriIcon.FileName == "")
            {
                Response.Write("Lütfen bir kategori iconu seçiniz...");
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