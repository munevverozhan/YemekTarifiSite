using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumlarAdmin : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    protected void Page_Load(object sender, EventArgs e)
    {    
        //onaylı yorumlar listesi
        SqlCommand komut = new SqlCommand("select * from tblYorumlar where yorumOnay=1", bgl.Baglanti());
        SqlDataReader dataReader = komut.ExecuteReader();
        DataList1.DataSource = dataReader;
        DataList1.DataBind();

        //onaysız yorumlar listesi
        SqlCommand cmd = new SqlCommand("select * from tblYorumlar where yorumOnay=0", bgl.Baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();

        Panel2.Visible = false;
        Panel4.Visible = false;

    }

    protected void Button1_Click1(object sender, EventArgs e)
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