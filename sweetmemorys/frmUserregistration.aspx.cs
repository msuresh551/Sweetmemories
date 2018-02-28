using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class frmUserregistration : System.Web.UI.Page
{
    public static string _connectionstring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {

            if (Session["ID"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }
        catch (Exception ex)
        {
        }
    }
  /// <summary>
  /// submitting UserDetails to the DB
  /// </summary>
    protected void btnSumit_Click(object sender, EventArgs e)
    {
        try
        {
            string gender = "Male";


            if (rbMaleorFemale.Items[0].Selected == true)
            {
                gender = "Male";

            }
            else
            {
                gender = "FeMale";
            }

            SqlCommand cmd;
            SqlConnection connection = new SqlConnection(_connectionstring);
            string Existsornot = "SELECT * FROM Users WHERE Username='" + txtUsername.Text.Trim() + "' and Status='Active'";
            cmd = new SqlCommand(Existsornot, connection);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                connection.Open();


                String strquery = "Insert into Users([Username] ,[Password] ,[Email] ,[Fname]  ,[Role] ,[Status] ,[Gender] ,[CreatedOn] ,[ModifiedOn])";
                strquery = strquery + "values('" + txtUsername.Text.Trim() + "','" + txtPassword.Text.Trim() + "', '" + txtEmailID.Text.Trim() + "' , '" + txtFUllname.Text.Trim() + "',1,'Active','" + gender + "',getdate(),getdate())";
                cmd = new SqlCommand(strquery, connection);
                int n = cmd.ExecuteNonQuery();
                connection.Close();
                if (n > 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Successfully Created New User",
            "alert('Username is already exists,Try another');", true);

                    Response.Redirect("Home.aspx", false);
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "UsernameExists",
        "alert('Username is already exists,Try another');", true);

            }



        }
        catch (Exception ex)
        {
        }

    }
    /// <summary>
    /// Redirecting to the Home
    /// </summary>
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Redirect("Home.aspx");
        }
        catch (Exception ex)
        {
        }

    }
}