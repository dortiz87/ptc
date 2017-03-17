using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC_Systems
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClientSelect();

        }

        public void ClientSelect()
        {
            using (var clientTB = new db_ptcDataContext())
            {
                dd1.DataSource = from Client in clientTB.Clients
                                 orderby Client.ClientName
                                 select new { Client.ClientName, Client.ClientId };
                dd1.DataTextField = "ClientName";
                dd1.DataValueField = "ClientId";
                dd1.DataBind();
            }
        }



      

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Clients.aspx?Clientid=" + dd1.SelectedValue);
        }
    }
}