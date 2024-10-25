using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fileuploadcontrol
{
    public partial class fileuploadpdf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            if (Fileupload.HasFile)
            {
                string fileExtension = Path.GetExtension(Fileupload.FileName).ToLower();

                if(fileExtension == ".pdf")
                {
                    Fileupload.PostedFile.SaveAs(Server.MapPath("~/Uploaded/" + Fileupload.FileName));
                    lblpdf.Text = "File uploaded successfully";
                    lblpdf.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblpdf.Text = "Please upload the file in .pdf format";
                    lblpdf.ForeColor= System.Drawing.Color.Red;
                }
            }
            else
            {
                lblpdf.Text = "Please select a file";
                lblpdf.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}