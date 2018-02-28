using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Frmlogin : System.Web.UI.Page
{
    public static string _connectionstring = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["UId"] != null)
            {
                Response.Redirect("Home.aspx");
            }
        }
        catch (Exception ex)
        {
        }


    }
    /// <summary>
    /// validating the User Credentials
    /// </summary>
    /// 

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(_connectionstring);
            
            DataTable dt = new DataTable();
            string strQuery = "";
            strQuery = "select    Users.ID,r.RoleID, Users.Username,(Users.Fname) as Fullname from Users left join dbo.M_Users_Roles r on r.UserID=Users.ID where Users.Username='" + txtUsername.Text.Trim() + "' and Users.Password='" + txtPassword.Text.Trim() + "' and Status='Active'";
            SqlDataAdapter dagetReturnTypeDataTable = new SqlDataAdapter(strQuery, _connectionstring);
            dagetReturnTypeDataTable.Fill(dt);
            //SqlDataReader myReader = null;
            //SqlCommand myCommand = new SqlCommand(strQuery,con);
            //con.Open();
            //myReader = myCommand.ExecuteReader();
            //while (myReader.Read())
            //{
            //    Session["ID"] = myReader["ID"].ToString();
            //    Session["Username"]=myReader["Fullname"].ToString();
            //    Response.Redirect("Home.aspx", false);
            //}
            //con.Close();
            if (dt.Rows.Count > 0)
            {

                Session["ID"] = dt.Rows[0]["ID"].ToString();
                Session["Username"] = dt.Rows[0]["Fullname"].ToString();
                Response.Redirect("Home.aspx", false);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Incorrectpwd",
                "alert('Username/Password is Incorrect.');", true);
            }
        
        }
        catch (Exception ex)
        {
        }


    }
}