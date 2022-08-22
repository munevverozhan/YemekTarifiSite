using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string idKategori = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        idKategori = Request.QueryString["kategoriID"];
        SqlCommand komut = new SqlCommand("select * from tblYemekler where kategoriID=@p1", bgl.Baglanti());
        komut.Parameters.AddWithValue("@p1",idKategori);
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}