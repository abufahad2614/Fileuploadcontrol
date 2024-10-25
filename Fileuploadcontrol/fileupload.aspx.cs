using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fileuploadcontrol
{
    public partial class fileupload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFiles == false)
            {
                Lblres.Text = "Please Upload your Resume";
                Lblres.ForeColor = System.Drawing.Color.Red; 
            }
            else 
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploaded/" + FileUpload1.FileName));
                Lblres.Text = "File Uploaded Successfully";
                Lblres.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}