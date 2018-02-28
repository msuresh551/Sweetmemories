using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class frmContact : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //validating the User  is active or Not
        if (Session["ID"] == null)
        {
            Response.Redirect("Frmlogin.aspx");
        }
    }
}