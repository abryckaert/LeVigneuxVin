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

public partial class Default2 : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("insert into vine (name,type,domaine,description,price) values ('"+vineName.Text+"','"+vineType.Text+"','"+vineDomaine.Text+"','"+vineDescription.Text+"','"+vinePrice+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        submited.Visible = true;
        submited.Text = "Your vine has been submited";
        vineName.Text ="";
        vineType.Text="";
        vineDescription.Text="";
        vineDomaine.Text="";
        vinePrice.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
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
                    con.Close();

                    lblMessage.Visible = true;
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "Upload Successful";
                        cmd.Parameters["@NewId"].Value.ToString();
                
            }
            else
            {
                lblMessage.Visible = true;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Only images (.jpg, .png, .gif and .bmp) can be uploaded";
            }
    }
}