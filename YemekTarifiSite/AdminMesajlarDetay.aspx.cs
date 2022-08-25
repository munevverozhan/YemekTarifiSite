using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AdminMesajlar : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["mesajID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from tblMesajlar where mesajID=@p1", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtAdSoyad.Text = dr[1].ToString();
                txtBaslik.Text = dr[2].ToString();
                txtMail.Text = dr[3].ToString();
                txtIcerik.Text = dr[4].ToString();

            }
            bgl.Baglanti().Close();
        }
    }
}