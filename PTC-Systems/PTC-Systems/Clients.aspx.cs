using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC_Systems
{
    public partial class Clients : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            hfClientid.Value = Request.QueryString["Clientid"];
                   
            

            {     

            GetClientInfo();
           /* GetPropInfo();*/
            }
            

        }

        public void GetClientInfo()
        {

            db_ptcDataContext clientdatacontext = new db_ptcDataContext();

            int cid;

            bool IsIntValue = Int32.TryParse(hfClientid.Value, out cid);

            if (IsIntValue)
            {

                var ClientData = (
                    from c in clientdatacontext.Clients
                    where c.ClientId == cid
                    join con in clientdatacontext.Contacts on c.ClientContactid equals con.Contactid
                    select new
                    {
                        c.ClientId,
                        c.ClientName,
                        c.ClientAddressLine1,
                        c.ClientAddressLine2,
                        c.ClientAddressState,
                        c.ClientAddressCity,
                        c.ClientAddressZip,
                        con.ContactSalutation,
                        con.ContactFirstName,
                        con.ContactLastname,
                        con.ContactBusinessNumber,
                        con.ContactBusinessNumberExtension,
                        con.ContactCellularNumber,
                        con.ContactEmailAddress,
                        con.ContactAltEmailAddress,

                    }).FirstOrDefault();

                lbclientname.Text = ClientData.ClientName;
                lbaddressline1.Text = ClientData.ClientAddressLine1;
                lbaddressline2.Text = ClientData.ClientAddressLine2;
                lbstate.Text = ClientData.ClientAddressState;
                lbcity.Text = ClientData.ClientAddressCity;
                lbzipcode.Text = ClientData.ClientAddressZip;
                lbsaluation.Text = ClientData.ContactSalutation;
                lbfirstname.Text = ClientData.ContactFirstName;
                lblastname.Text = ClientData.ContactLastname;
                lbcellphone.Text = Convert.ToInt64(ClientData.ContactCellularNumber).ToString("(###) ###-####");
                lbbusphone.Text = Convert.ToInt64(ClientData.ContactBusinessNumber).ToString("(###) ###-####");
                wzClient.Text= ClientData.ClientName;
                wzClientAddressLine1.Value = ClientData.ClientAddressLine1;
                wzClientAddressLine2.Value = ClientData.ClientAddressLine2;


            }
        }

       
       
        

        /* public void GetPropInfo()
         {
             db_ptcDataContext clientdatacontext = new db_ptcDataContext();

             int cid;

             bool IsIntValue = Int32.TryParse(hfClientid.Value, out cid);

             if (IsIntValue)
             {
                 var proplist = (
                     from p in clientdatacontext.Properties
                     where p.PropertyClientId == cid
                     select new
                     {
                       Property_Name = p.PropertyName,
                       Count =  p.PropertyCounty,
                       Primary_Use = p.PropertyPrimaryUse

                     }).ToList();

                 //propview.DataSource = proplist;
                // propview.DataBind();


             }
    }*/


    }

  
    }
