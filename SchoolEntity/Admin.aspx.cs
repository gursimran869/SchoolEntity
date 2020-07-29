using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolEntity
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataConnection.ConnectionObject objct = new DataConnection.ConnectionObject();

            if (!txtId.Text.ToString().Equals("") && !txtPassword.Text.ToString().Equals(""))
            {
                DataTable tbl = new DataTable();
                tbl = objct.SearchRecord("select * from Admin where AdminID='"+txtId.Text+"' and AdminPassword='"+txtPassword.Text+"'");
                if (tbl.Rows.Count > 0)
                {
                    Response.Redirect("Pannel.aspx");
                }
                else {
                    result.InnerHtml = "CHeck User Name  or Password";
                }
            }
            else {
                result.InnerHtml = "Fill User Name or Password";
            }
        }
    }
}