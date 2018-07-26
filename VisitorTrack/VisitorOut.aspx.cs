using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VisitorTrack
{
    public partial class VisitorOut : System.Web.UI.Page
    {
        VisitorEntities db = new VisitorEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                var data = (from t in db.visitorinfoes
                            where t.Status == "signed in"
                            select new {ID=t.Id, Firstname = t.FirstName, lastname = t.LastName, Type_of_id = t.Type_of_ID, id_num = t.ID_Num }).ToList();

                GridView2.DataSource = data;
                GridView2.DataBind();
            }
             // string name = txtvisitor.Text;
                
            



        }

      
        protected void b2_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;
            
            int id =int.Parse( r.Cells[1].Text);
            var olddata = (from t in db.visitorinfoes where t.Id == id && t.Status=="signed in" select t).SingleOrDefault();
            olddata.Status = "Signed out";
          
            olddata.Checked_Out = DateTime.Now;
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("Status Updated");
            GridView2.DataBind();
            

        }
        protected void btnname_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtvisitor.Text))
            {
                string name = txtvisitor.Text;
                var data = (from t in db.visitorinfoes
                            where t.FirstName == name && t.Status=="signed in"
                            select new {Id=t.Id, Firstname = t.FirstName, lastname = t.LastName, Type_of_id = t.Type_of_ID, id_num = t.ID_Num }).ToList();

                GridView2.DataSource = data;
                GridView2.DataBind();


            }
            else
            {
                var data = (from t in db.visitorinfoes
                            where t.Status == "signed in"
                            select new { ID = t.Id, Firstname = t.FirstName, lastname = t.LastName, Type_of_id = t.Type_of_ID, id_num = t.ID_Num }).ToList();

                GridView2.DataSource = data;
                GridView2.DataBind();
            }

        }

        protected void btnid_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtvisitor.Text))
            {
                // string id = txtvisitor.Text;
                int id = int.Parse(txtvisitor.Text);
               // int id = int.Parse(txtvisitor.Text);
                var data = (from t in db.visitorinfoes
                            where t.Id==id && t.Status=="signed in"
                            select new { ID = t.Id, Firstname = t.FirstName, lastname = t.LastName, Type_of_id = t.Type_of_ID, id_num = t.ID_Num }).ToList();

                GridView2.DataSource = data;
                    GridView2.DataBind();
                

            }
            else
            {
                var data = (from t in db.visitorinfoes
                            where t.Status == "signed in"
                            select new { ID = t.Id, Firstname = t.FirstName, lastname = t.LastName, Type_of_id = t.Type_of_ID, id_num = t.ID_Num }).ToList();

                GridView2.DataSource = data;
                GridView2.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}