using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DIT : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            try
            {

                if (Session["username"] != null)
                {
                    lblUserNmae.Text = Session["username"].ToString();

                    lblRole.Text = Session["Role"].ToString();

                }

                if ((Session["Role"] == null))
                {

                    Response.Redirect("frmUserLogin.aspx");
                }



            }
            catch (Exception ex)
            {
            }
        }
        if (Convert.ToString(Session["LoggedInuserDept"]) != "DIT Admin")
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Hide", "HideAdminItem();", true);
        }
    }
    protected void lbtnlOgout_Click(object sender, EventArgs e)
    {
        Session["User ID"] = "";
        Session["User Role ID"] = "";
        Session["username"] = "";
        Session["Role"] = "";
        Session["LoggedInuserName"] = "";
        Session["Org_Filter"] = "";
        Session["Org_Add"] = "";
        Session["Org_Edit"] = "";
        Session["Org_CS"] = "";

        Session["Amd_Filter"] = "";
        Session["Amd_Add"] = "";
        Session["Amd_Edit"] = "";
        Session["Amd_CS"] = "";
        Session["TvIndexselected"] = "";
        Session["TvValueselected"] = "";
        Session["_ordersExpandedState"] = "";
        Session["_selectedState"] = "";
        Session["TimePointSelected"] = "";
        Session["FormSelected"] = "";
        Session["SpecialCaseTimePointselected"] = "";
        Session["TimePOintExist"] = "";
        Session["TimePOintExist"] = "";
        Session["CurrentRowIndex"] = null;
        Session["TimePoint"] = null;
        Session["seqNumber"] = null;
        Session["Duration"] = null;
        Session["gracePeriod"] = null;
        Session["StartDate"] = null;
        Response.Redirect("frmUserLogin.aspx");
    }
}
