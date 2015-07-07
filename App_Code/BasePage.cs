using System;

public class BasePage : System.Web.UI.Page
{
    private void Page_Prerender(Object sender, EventArgs e) {

        if (string.IsNullOrEmpty(this.Title) || this.Title.Equals("Untitled Page", StringComparison.CurrentCultureIgnoreCase)) {

            throw new Exception("The page title cannot be shown");
        
        }
    
    
    
    
    
    }



    public BasePage() {

        this.PreRender += Page_Prerender;

    
    }



}