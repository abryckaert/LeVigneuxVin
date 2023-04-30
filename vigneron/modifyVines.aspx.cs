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

public partial class modifyVines : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            SqlCommand cmd = new SqlCommand("SELECT * from vine WHERE vigneronName = @userName;", con);
            cmd.Parameters.AddWithValue("@userName", userName);
            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView2.DataSource = rdr;
            GridView2.DataBind();
            rdr.Close();
        }
    }


    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}