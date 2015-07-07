using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage_All : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString.Get("ID") != null)
        {

            DetailsView1.DefaultMode = DetailsViewMode.Edit;






        }

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("songs.aspx ",false);

    }
}
