using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataConnection.ConnectionObject objct = new DataConnection.ConnectionObject();

            if (!txtId.Text.Equals("") && !txtEmail.Text.Equals("") && !txtNo.Text.Equals("") && !txtMsg.Text.Equals(""))
            {
                objct.AddDelUpdate("insert into Message values('"+txtId.Text+"','"+txtEmail.Text+"','"+txtNo.Text+"','"+txtMsg.Text+"')");
                result.InnerHtml = "We Will COntact you SOon ";
                txtId.Text = "";
                txtEmail.Text = "";
                txtMsg.Text = "";
                txtNo.Text = "";
            }
            else {
                result.InnerHtml = "fill all details to ENter ";
            }
        }
    }
}