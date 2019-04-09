using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace infotechit
{

  public partial class WebForm8 : System.Web.UI.Page
  {

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      if (imagefile.HasFile)
      {
        String test = @"~\images\";
        string fileName = imagefile.PostedFile.FileName.ToString();
        String savePath= test + fileName;

        imagefile.PostedFile.SaveAs(Server.MapPath( savePath));


        // Image.SaveAs(Server.MapPath(imgPath));
        // string image = "test";
        DAL aLayer = new DAL();
        aLayer.AddProduct(int.Parse(product_id.Text), product_title.Text, product_description.Text, int.Parse(product_price.Text), int.Parse(product_count.Text), fileName);
        product_id.Text = "";
        product_title.Text = "";
        product_description.Text = "";
        product_price.Text = "";
        product_count.Text = "";

      }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    }
}
