using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadImages();
        }
    }

    private void LoadImages()
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            //TOP 3 wine
            SqlCommand cmd = new SqlCommand("SELECT TOP 3 ImageData from tblImages INNER JOIN wine ON wine.IdImage = tblImages.ID ORDER BY wine.rank ASC;", con);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            ImageTop123.DataSource = rdr;
            ImageTop123.DataBind();
            rdr.Close();

            //wine 4
            SqlCommand cmd2 = new SqlCommand("SELECT ImageData from tblImages INNER JOIN wine ON wine.IdImage = tblImages.ID ORDER BY wine.rank ASC OFFSET 3 ROWS FETCH FIRST 1 ROWS ONLY;", con);
            SqlDataReader rdr2 = cmd2.ExecuteReader();
            Image4.DataSource = rdr2;
            Image4.DataBind();
            rdr2.Close();


            //wine 5
            SqlCommand cmd3 = new SqlCommand("SELECT ImageData from tblImages INNER JOIN wine ON wine.IdImage = tblImages.ID ORDER BY wine.rank ASC OFFSET 4 ROWS FETCH FIRST 1 ROWS ONLY;", con);
            SqlDataReader rdr3 = cmd3.ExecuteReader();
            Image5.DataSource = rdr3;
            Image5.DataBind();
            rdr3.Close();

            //wine 6
            SqlCommand cmd4 = new SqlCommand("SELECT ImageData from tblImages INNER JOIN wine ON wine.IdImage = tblImages.ID ORDER BY wine.rank ASC OFFSET 5 ROWS FETCH FIRST 1 ROWS ONLY;", con);
            SqlDataReader rdr4 = cmd4.ExecuteReader();
            Image6.DataSource = rdr4;
            Image6.DataBind();
            rdr4.Close();
        }
    }
}