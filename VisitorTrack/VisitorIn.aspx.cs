using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorTrack
{
    public partial class VisitorIn : System.Web.UI.Page
    {
        VisitorEntities db = new VisitorEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string f_name = txtfname.Text;
            string l_name = txtlname.Text;
            string company = txtcompany.Text;
            string visit = txtVisiting.Text;
            string idtype = ddlidtype.SelectedItem.Value.ToString();
            string idnum = txtidno.Text;
            string vehicleno = txtvehicleno.Text;
            string contact = txtphn.Text;
            string purpose = txtpurpose.Text;
            string status = "signed in";
            DateTime checkedin = DateTime.Now;
            visitorinfo rs = new visitorinfo();
            rs.Checked_In = checkedin;
            rs.Checked_Out = checkedin;
            rs.Contact_No = contact;
            rs.FirstName = f_name;
            rs.LastName = l_name;
            rs.Company = company;
            rs.Visiting = visit;
            rs.Type_of_ID = idtype;
            rs.ID_Num = idnum;
            rs.Vehicle_No = vehicleno;
            rs.purpose_of_visiting = purpose;
            rs.Status = status;
            db.visitorinfoes.Add(rs);

            var res = db.SaveChanges();

            if (res > 0)

            {

                Response.Write("Visitors id is "+rs.Id);

            }
            txtfname.Text = "";
            txtlname.Text = "";
            txtidno.Text = "";
            txtphn.Text = "";
            txtpurpose.Text = "";
            txtvehicleno.Text = "";
            txtVisiting.Text = "";
            txtcompany.Text = "";
            



        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}