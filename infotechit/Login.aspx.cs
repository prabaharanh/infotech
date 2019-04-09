using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace infotechit
{
  public partial class WebForm7 : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }



    protected void btnLogin_Click(object sender, EventArgs e)
    {

      string loginString = Security.GetHash512(txtLoginusername.Text, txtLoginpassword.Text);
      string connectionstring = ConfigurationManager.ConnectionStrings["dbinfotech"].ConnectionString;
      SqlConnection connection;
      connection = new SqlConnection(connectionstring);
      connection.Open();
      SqlDataAdapter sda = new SqlDataAdapter("Select count(*) from tblUser where userName='" + txtLoginusername.Text + "' and password= '" + loginString + "'", connection);
      DataTable dt = new DataTable();
      sda.Fill(dt);
      if (dt.Rows[0][0].ToString() == "1")
      {
        Response.Redirect("Register.aspx");
      }
      else
      {
        Response.Redirect("StoreAdmin.aspx");
      }

    }

    
  }
}
