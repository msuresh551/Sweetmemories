using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for BasePage
/// </summary>
public  class BasePage : System.Web.UI.Page
{
    //
    // TODO: Add constructor logic here
    //

    public static string _connectionString="";
    public BasePage()
    {
        _connectionString = ConfigurationManager.ConnectionStrings["SqlConnectionString"].ConnectionString;

    }
}
