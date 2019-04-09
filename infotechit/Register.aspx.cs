using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace infotechit
{
  public partial class WebForm6 : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
      string loginString = Security.GetHash512(txtRegusername.Text, txtRegpassword.Text);

      DAL aLayer = new DAL();
      aLayer.userRegister(txtRegfirstname.Text, txtReglastname.Text, txtRegemail.Text, txtRegusername.Text, int.Parse(txtRegphone.Text), loginString);


      txtRegfirstname.Text = "";
      txtReglastname.Text = "";
      txtRegemail.Text = "";
      txtRegusername.Text = "";
      txtRegphone.Text = "";
      txtRegpassword.Text = "";
      txtRegcpassword.Text = "";

    }
  }
}
