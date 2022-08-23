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
    string id ;
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
            }
            bgl.Baglanti().Close();
        }

    }
}