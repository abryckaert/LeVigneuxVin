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
using System.Web.Security;

public partial class ourwines : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadImages();
            Loadwine();
        }
    }

    private void LoadImages()
    {
        string userName = string.Empty;

        if (System.Web.HttpContext.Current != null &&
            System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
        {
            System.Web.Security.MembershipUser usr = Membership.GetUser();
            if (usr != null)
            {
                userName = usr.UserName;
            }
        }

        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("SELECT ImageData from tblImages INNER JOIN wine ON wine.IdImage = tblImages.ID;", con);
            cmd.Parameters.AddWithValue("@userName", userName);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            ImageMywine.DataSource = rdr;
            ImageMywine.DataBind();
            rdr.Close();
        }
    }
    private void Loadwine()
    {
        string userName = string.Empty;

        if (System.Web.HttpContext.Current != null &&
            System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
        {
            System.Web.Security.MembershipUser usr = Membership.GetUser();
            if (usr != null)
            {
                userName = usr.UserName;
            }
        }
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("SELECT * from wine;", con);
            cmd.Parameters.AddWithValue("@userName", userName);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            DataList2.DataSource = rdr;
            DataList2.DataBind();
            rdr.Close();
        }
    }

}