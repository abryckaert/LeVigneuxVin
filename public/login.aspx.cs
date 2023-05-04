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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        if(Roles.IsUserInRole(this.User.Identity.Name,"admin"))
        {
            Response.Redirect("~/admin/DefaultAdmin.aspx");
        }

        else if (Roles.IsUserInRole(this.User.Identity.Name, "vigneron"))
        {
            Response.Redirect("~/vigneron/Default.aspx");
        }

        else if (Roles.IsUserInRole(this.User.Identity.Name, "user"))
        {
            Response.Redirect("~/user/DefaultUser.aspx");
        }
    }
}   