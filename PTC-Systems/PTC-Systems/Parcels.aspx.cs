using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC_Systems
{
    public partial class parcels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hfparcelid.Value = Request.QueryString["id"];
        }

      
    }
}