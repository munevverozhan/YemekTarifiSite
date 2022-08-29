using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class HakkimizdaEditAdmin : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
       id= Request.QueryString["hakkimizdaID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from tblHakkimizda where hakkimizdaID=@p1", bgl.Baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                txtIcerik.Text = dr[1].ToString();
            }
            bgl.Baglanti().Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update tblHakkimizda set metin=@p1 where hakkimizdaID=@p2", bgl.Baglanti());
        cmd.Parameters.AddWithValue("@p1", txtIcerik.Text);
        cmd.Parameters.AddWithValue("@p2", id);
        cmd.ExecuteNonQuery();
        bgl.Baglanti().Close();
        Response.Write("Hakkımızda alanı güncellendi.");
    }
}