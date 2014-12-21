using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("Frmlogin.aspx");
            }
            lblUsername.Text = Session["Username"].ToString();


        }
        catch (Exception ex)
        {
        }
    }

    /// <summary>
    /// Sign out the corrent logged in User Details
    /// </summary>
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        try
        {
            Session["ID"] = "";
            Session["ID"] = null;

            Response.Redirect("Frmlogin.aspx");
        }
        catch (Exception ex)
        {
        }

    }
}
