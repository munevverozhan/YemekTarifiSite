using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YorumDetayAdmin : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["yorumID"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select yorumAdSoyad,yorumMail,yorumIcerik,yemekAd from tblYorumlar inner join tblYemekler on tblYemekler.yemekID=tblYorumlar.yemekID where yorumID=@p1", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtAdSoyad.Text = dr[0].ToString();
                txtMail.Text = dr[1].ToString();
                txtIcerik.Text = dr[2].ToString();
                txtYemek.Text = dr[3].ToString();
            }
            bgl.Baglanti().Close();
        }
    
    }

    protected void btnOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update tblYorumlar set yorumOnay=1,yorumIcerik=@p1 where yorumID=@p2", bgl.Baglanti());
        cmd.Parameters.AddWithValue("@p1", txtIcerik.Text);
        cmd.Parameters.AddWithValue("@p2", id);

        cmd.ExecuteNonQuery();
        bgl.Baglanti().Close();
        Response.Write("yorum onaylandı.");
    }
}