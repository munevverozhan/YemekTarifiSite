using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YorumListeleAdmin : System.Web.UI.Page
{
    string id;
    sqlBaglantiClass bgl = new sqlBaglantiClass();
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
}