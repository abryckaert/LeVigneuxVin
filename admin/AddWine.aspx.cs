using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;
using System.Web.Security;

public partial class Addwine : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        if (!IsPostBack)
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                SqlCommand cmd = new SqlCommand("spUploadImage", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter paramName = new SqlParameter()
                {
                    ParameterName = @"Name",
                    Value = filename
                };
                cmd.Parameters.Add(paramName);

                SqlParameter paramSize = new SqlParameter()
                {
                    ParameterName = "@Size",
                    Value = fileSize
                };
                cmd.Parameters.Add(paramSize);

                SqlParameter paramImageData = new SqlParameter()
                {
                    ParameterName = "@ImageData",
                    Value = bytes
                };
                cmd.Parameters.Add(paramImageData);

                SqlParameter paramNewId = new SqlParameter()
                {
                    ParameterName = "@NewId",
                    Value = -1,
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(paramNewId);

                cmd.ExecuteNonQuery();
                cmd.Parameters["@NewId"].Value.ToString();
                string IdImage = cmd.Parameters["@NewId"].Value.ToString();

                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Upload Successful";

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

                SqlCommand commandewine = new SqlCommand("insert into wine (name,type,domaine,description,price,IdImage,vigneronName) values (@wineName, @wineType, @wineDomaine, @wineDescription, @winePrice, @IdImage,@userName)", con);
                commandewine.Parameters.AddWithValue("@wineName", wineName.Text);
                commandewine.Parameters.AddWithValue("@wineType", wineType.Text);
                commandewine.Parameters.AddWithValue("@wineDomaine", wineDomaine.Text);
                commandewine.Parameters.AddWithValue("@wineDescription", wineDescription.Text);
                commandewine.Parameters.AddWithValue("@winePrice", winePrice.Text);
                commandewine.Parameters.AddWithValue("@IdImage", IdImage);
                commandewine.Parameters.AddWithValue("@userName", userName);

                commandewine.ExecuteNonQuery();

                submited.Visible = true;
                submited.Text = "Your wine has been submited";
                wineName.Text = "";
                wineType.Text = "";
                wineDescription.Text = "";
                wineDomaine.Text = "";
                winePrice.Text = "";
                con.Close();

            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
            }
        }
        else
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
            SqlCommand commandewine = new SqlCommand("insert into wine (name,type,domaine,description,price,vigneronName) values (@wineName, @wineType, @wineDomaine, @wineDescription, @winePrice, @userName)", con);
            commandewine.Parameters.AddWithValue("@wineName", wineName.Text);
            commandewine.Parameters.AddWithValue("@wineType", wineType.Text);
            commandewine.Parameters.AddWithValue("@wineDomaine", wineDomaine.Text);
            commandewine.Parameters.AddWithValue("@wineDescription", wineDescription.Text);
            commandewine.Parameters.AddWithValue("@winePrice", winePrice.Text);
            commandewine.Parameters.AddWithValue("@userName", userName);
            commandewine.ExecuteNonQuery();
            con.Close();
            submited.Visible = true;
            submited.Text = "Your wine has been submited";
            wineName.Text = "";
            wineType.Text = "";
            wineDescription.Text = "";
            wineDomaine.Text = "";
            winePrice.Text = "";
        }
    }
   
       
}