using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorTrack
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnvisitorin_Click(object sender, EventArgs e)
        {
            Response.Redirect("VisitorIn.aspx");

        }

        protected void btnVisitorOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("VisitorOut.aspx");
        }
    }
}