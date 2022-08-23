using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yemek : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();

    protected void Page_Load(object sender, EventArgs e)
    {
        //yemekleri listeleme işlemi.
        SqlCommand cmd = new SqlCommand("select yemekAd from tblYemekler", bgl.Baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if (Page.IsPostBack == false)
        {
            //kategorilerin dropDownList'e çekilmesi işlemi
            SqlCommand cmd1 = new SqlCommand("select * from tblKategoriler ", bgl.Baglanti());
            SqlDataReader dr1 = cmd1.ExecuteReader();
            txtKategori.DataTextField = "kategoriAd";
            txtKategori.DataValueField = "kategoriID";
            txtKategori.DataSource = dr1;
            txtKategori.DataBind();
        }


        Panel2.Visible = false;
        Panel4.Visible = false;


    }

    void temizle()
    {
        txtAd.Text = "";
        txtMalzeme.Text = "";
        txtTarif.Text = "";
    }

    protected void btnEkle_Click(object sender, EventArgs e)
    {

        try
        {
            SqlCommand cmd = new SqlCommand("insert into tblYemekler(yemekAd,yemekMalzeme,yemekTarif,yemekResim,kategoriID) values(@p1,@p2,@p3,@p4,@p5)", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", txtAd.Text);
            cmd.Parameters.AddWithValue("@p2", txtMalzeme.Text);
            cmd.Parameters.AddWithValue("@p3", txtTarif.Text);
            cmd.Parameters.AddWithValue("@p4", txtResim.FileName);
            cmd.Parameters.AddWithValue("@p5", txtKategori.SelectedValue);
            if (txtAd.Text == "")
            {
                Response.Write("Lütfen yemeğin adını ekleyiniz...");
                Panel4.Visible = true;
            }
            else if (txtMalzeme.Text == "")
            {
                Response.Write("Lütfen yemeğin malzemesini ekleyiniz...");
                Panel4.Visible = true;
            }
            else if (txtTarif.Text == "")
            {
                Response.Write("Lütfen yemeğin tarifini ekleyiniz...");
                Panel4.Visible = true;
            }
            else if (txtResim.FileName == "")
            {
                Response.Write("Lütfen yemeğin resmini ekleyiniz...");
                Panel4.Visible = true;
            }
            else if (txtKategori.Text == "")
            {
                Response.Write("Lütfen yemeğin kategorisini ekleyiniz...");
                Panel4.Visible = true;
            }
            else
            {
                cmd.ExecuteNonQuery();
                bgl.Baglanti().Close();
                Response.Write("Yemek eklendi...");
                temizle();
            }


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

        }
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
}