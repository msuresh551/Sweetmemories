using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class ViewImages : System.Web.UI.Page
{
    //Initializing the connection string variables
    public static string _connectionstring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            //Check the session
            if (Session["ID"] == null)
            {
                Response.Redirect("frmLogin.aspx");
            }
        }
        catch (Exception ex)
        {
        }

    }


    /// <summary>
    ///Binding  logged in user the Images , when Page is Loading 
    ///Not required Directly binded
    /// </summary>
    private void BindImages()
    {
        DataTable dt = new DataTable();
        string strQuery = "";
        strQuery = "Select [F_UserId],[FileID],[Imagefile],[TextOptional],[FileType] from [UserImages] where [F_UserId]=" + Convert.ToInt32(Session["ID"]) + " and Status='Active'";
        SqlDataAdapter dagetReturnTypeDataTable = new SqlDataAdapter(strQuery, _connectionstring);
        dagetReturnTypeDataTable.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            gvImages.DataSource = dt;
            gvImages.DataBind();
        }
        //else
        //{
        //    ScriptManager.RegisterStartupScript(this, GetType(), "Incorrectpwd",
        //    "alert('Username/Password is Incorrect.');", true);
        //}




    }
}