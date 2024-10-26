using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fileuploadcontrol
{
    public partial class fileuploadjpg : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void jpgsubbtn_Click(object sender, EventArgs e)
        {
            if (Fileuploadpng.HasFile == true)
            {
                int maxsize = 20 * 1024 ;
                string fileextension = Path.GetExtension(Fileuploadpng.FileName).ToLower();
                int filesize = Fileuploadpng.PostedFile.ContentLength;

                if (fileextension == ".jpg" || fileextension == ".png")
                {
                    if (filesize <= maxsize)
                    {
                        Fileuploadpng.PostedFile.SaveAs(Server.MapPath("~/Uploaded/" + Fileuploadpng.FileName));
                        Lbljpg.Text = "File Uploaded Successfully";
                        Lbljpg.ForeColor = System.Drawing.Color.Green;
                        Image1.ImageUrl ="~/Uploaded/"+ Fileuploadpng.FileName;
                    }
                    else
                    {
                        Lbljpg.Text = "Please Upload file lessthan 20kb";
                        Lbljpg.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    Lbljpg.Text = "Upload jpg/png format file";
                    Lbljpg.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                Lbljpg.Text = "Please upload a file";
                Lbljpg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
