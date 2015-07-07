using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage_myself : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) {
            FirstName.Text=Profile.FirstName;
            LastName.Text = Profile.Lastname;
            DateOfBirth.Text = Profile.DateOfBirth.ToShortDateString();
            Biography.Text = Profile.Biography;
            favmusic.Text = Profile.favmusic;
            favmovie.Text = Profile.favmovie;


            
        
        
        }
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid) {
            Profile.FirstName = FirstName.Text;
            Profile.Lastname = LastName.Text;
            Profile.DateOfBirth = DateTime.Parse(DateOfBirth.Text);
            Profile.Biography = Biography.Text;
            Profile.favmusic = favmusic.Text;
            Profile.favmovie = favmovie.Text;
            Label7.Text = "your profile has been saved";
        
        
        }
    }
}