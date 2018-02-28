using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class frmPhotos : System.Web.UI.Page
{
    //public static string constring = BasePage._connectionString;
    public static string constring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        //validating the User  is active or Not
        if (Session["ID"] == null)
        {
            Response.Redirect("Frmlogin.aspx");
        }


    }
  
    
    /// <summary>
    ///Uploading the Images 
    /// </summary>
    protected void txtSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(constring);
        try
        {

            string ext = Path.GetExtension(MY_FileUpload.FileName);
            if (ext == ".jpg" || ext == ".png")
            {
                if (MY_FileUpload.HasFile)
                {
                    //string temp = "";
                    MY_FileUpload.PostedFile.SaveAs(Server.MapPath("~/Data/") + MY_FileUpload.FileName);
                    string path = "";
                    path = "~/Data/" + MY_FileUpload.FileName;
                    //temp = Server.MapPath("~/Data/") + MY_FileUpload.FileName;
                    string strquery = "insert into [UserImages] (F_UserID,Imagefile,[TextOptional],[Status])values(" + Convert.ToInt32(Session["ID"]) + ",'" + path + "','" + txtOptional.Text + "','Active')";
                    con.Open();
                    SqlCommand cmd = new SqlCommand(strquery, con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    ScriptManager.RegisterStartupScript(this, GetType(), "Imgsavedsucss", "alert('Successfully saved');", true);
                    txtOptional.Text = "";
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "InvalidImage", "alert('Please select Images');", true);
            }
        }
        catch (Exception ex)
        {
            con.Close();
        }
    }
}