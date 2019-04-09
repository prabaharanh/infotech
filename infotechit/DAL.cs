using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace infotechit
{
  public class DAL
  {
    string connectionstring = ConfigurationManager.ConnectionStrings["dbinfotech"].ConnectionString;
    SqlConnection connection;

    public void AddProduct(int id, string title, string description, int price, int stock, string image)
    {
      connection = new SqlConnection(connectionstring);
      connection.Open();
      string query = "insert into tbProducts values('" + id + "','" + title + "','" + description + "', '" + price + "','" + stock + "','" + image + "')";

      SqlCommand command = new SqlCommand(query, connection);

      command.ExecuteNonQuery();

      connection.Close();
    }

    internal bool loginUser(bool v)
    {
      throw new NotImplementedException();
    }

    public void userRegister(string firstname, string lastname, string email, string username, int phonenumber, string password)
    {
      connection = new SqlConnection(connectionstring);
      connection.Open();
      string query = "insert into tblUser values('" + firstname + "','" + lastname + "','" + email + "','" + username + "','" + phonenumber + "','" + password + "')";

      SqlCommand command = new SqlCommand(query, connection);

      command.ExecuteNonQuery();

      connection.Close();
    }    

  }

}
