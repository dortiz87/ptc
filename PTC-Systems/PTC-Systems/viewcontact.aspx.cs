using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC_Systems
{

    public partial class viewcontact : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
          
            Populate_contact_table();

            if (IsPostBack)
            {
                Response.Write("ok");
            }
        }

        private void Populate_contact_table()
        {
            

            using (db_ptcDataContext contact_dc = new db_ptcDataContext())

            {
                var contactdata =
                    from con1 in contact_dc.Contacts
                    orderby con1.ContactLastname,con1.ContactFirstName
                    select new
                    {
                        ContactFirstName = con1.ContactFirstName,
                        ContactLastName = con1.ContactLastname,
                        ContactEmail = con1.ContactEmailAddress,
                    };



               
                Contact_Datagrid.DataSource = contactdata;
                Contact_Datagrid.DataBind();
            }
        }
   
        protected void Save_Click(object sender, EventArgs e)
        {
            
            var ContactTable = new db_ptcDataContext();
            
            {
                Contact cont = new Contact();

               
                cont.ContactFirstName = fmContactFirstName.Value;
                cont.ContactLastname = fmContactLastName.Value;
                cont.ContactAddressLine1 = fmContactAddressLine1.Value;
                cont.ContactAddressCity = fmContactAddressCity.Value;
                cont.ContactAddressState = fmContactAddressState.Value;
                cont.ContactAddressZip = fmContactAddressZip.Value;

                ContactTable.Contacts.InsertOnSubmit(cont);
                ContactTable.SubmitChanges();

                Response.Redirect("~/viewcontact.aspx");
                
            }

             
        }
    }
}