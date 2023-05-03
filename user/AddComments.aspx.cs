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

public partial class AddComments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string vineName = DropDownList1.Text;
        string decription = description.Text;
        string rate = RadioButtonList1.Text;
        string reviewTitle = title.Text;

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
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO review (reviewTitle, vineName ,description, score, userNickname) VALUES (@reviewTitle, @vineName, @decription, @rate, @username)", con);
            cmd.Parameters.AddWithValue("@reviewTitle", reviewTitle);
            cmd.Parameters.AddWithValue("@vineName", vineName);
            cmd.Parameters.AddWithValue("@decription", decription);
            cmd.Parameters.AddWithValue("@rate", rate);
            cmd.Parameters.AddWithValue("@username", userName);

            cmd.ExecuteNonQuery();
            submited.Visible = true;
            submited.Text = "Your vine has been submited";
            description.Text ="";
            RadioButtonList1.Text="";
            title.Text ="";

        }
    }
}