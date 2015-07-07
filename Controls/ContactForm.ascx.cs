using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
       



    }
    protected void sendbutton_Click(object sender, EventArgs e)
    {
        Message.Visible = true;
        FormTable.Visible = false;
        System.Threading.Thread.Sleep(5000);



    }
}