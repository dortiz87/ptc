using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC_Systems
{
    public partial class Props : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hfpropid.Value = Request.QueryString["id"];

            {
                getpropdetails();
            }

        }

            protected void getpropdetails()

        {
            db_ptcDataContext propdetailcontext = new db_ptcDataContext();

                int pid;

            bool IsIntValue = Int32.TryParse(hfpropid.Value, out pid);

            if(IsIntValue)
            {
                var propertydetails = (
                    from p in propdetailcontext.Properties
                    join con in propdetailcontext.Contacts on p.PropertyContactid equals con.Contactid
                    where p.PropertyId == pid
                    select new
                    {
                        con.ContactFirstName,
                        con.ContactLastname,
                        con.ContactEmailAddress,
                        con.ContactBusinessNumber,
                        con.ContactBusinessNumberExtension,
                        con.ContactCellularNumber,
                        con.ContactFaxNumber,
                        p.PropertyCounty,
                        p.PropertyAddressLine1,
                        p.PropertyAddressLine2,
                        p.PropertyAddressCity,
                        p.PropertyAddressState,
                        p.PropertyAddressZip,
                        p.PropertyCharGBA,
                        p.PropertyCharNLA,
                        p.PropertyCharUnits,
                        p.PropertyCharYearBuilt,
                        p.PropertyName,
                        p.PropertyActiviatedDate,
                        p.PropertyPrimaryUse,
                        p.PropertyAOAExpDate,
                        p.InternalCode

                    }).FirstOrDefault();

                ptclientname.Text = propertydetails.PropertyName;
                ptfirstname.Text = propertydetails.ContactFirstName;
                ptlastname.Text = propertydetails.ContactLastname;
                ptemail.Text = propertydetails.ContactEmailAddress;
                ptbusphone.Text = propertydetails.ContactBusinessNumber;
                ptcellphone.Text = propertydetails.ContactCellularNumber;
                ptfaxnumber.Text = propertydetails.ContactFaxNumber;
                ptcounty.Text = propertydetails.PropertyCounty;
                ptaddressline1.Text = propertydetails.PropertyAddressLine1;

              

            }


          }

        }  
    }
