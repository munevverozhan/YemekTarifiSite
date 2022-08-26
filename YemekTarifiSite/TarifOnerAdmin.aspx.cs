using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOnerAdmin : System.Web.UI.Page
{
    sqlBaglantiClass bgl = new sqlBaglantiClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //onaylanan tariflerin listelenmesi işlemi
        SqlCommand cmd = new SqlCommand("select * from tblTarifler where tarifDurum=1", bgl.Baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        //onay bekleyen tariflerin listelenmesi işlemi
        SqlCommand cmd1 = new SqlCommand("select * from tblTarifler where tarifDurum=0", bgl.Baglanti());
        SqlDataReader dr1 = cmd1.ExecuteReader();
        DataList2.DataSource = dr1;
        DataList2.DataBind();

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
}