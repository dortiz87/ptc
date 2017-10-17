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
            if (!IsPostBack)
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
                            c.ClientNotes,
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
                    udClientName.Text = ClientData.ClientName;
                    udClientAddressLine1.Value = ClientData.ClientAddressLine1;
                    udClientAddressLine2.Value = ClientData.ClientAddressLine2;
                    udClientAddressCity.Value = ClientData.ClientAddressCity;
                    udClientAddressState.Value = ClientData.ClientAddressState;
                    udClientAddressZip.Value = ClientData.ClientAddressZip;
                    udClientNotes.Value = ClientData.ClientNotes;

                }
            }
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            var updateClientData = new db_ptcDataContext();

            int cid;

            bool IsIntValue = Int32.TryParse(hfClientid.Value, out cid);

            if (IsIntValue)
            {
                var testquery = (from c in updateClientData.Clients
                                 where c.ClientId == cid
                                 join con in updateClientData.Contacts on c.ClientContactid equals con.Contactid                               
                                 select new { c, con }).Single();

                                    testquery.c.ClientName = udClientName.Text;
                                    testquery.c.ClientAddressLine1 = udClientAddressLine1.Value;
                                    testquery.c.ClientAddressLine2 = udClientAddressLine2.Value;
                                    testquery.c.ClientAddressCity = udClientAddressCity.Value;
                                    testquery.c.ClientAddressState = udClientAddressState.Value;
                                    testquery.c.ClientAddressZip = udClientAddressZip.Value;
                                    testquery.c.ClientNotes = udClientNotes.Value;



                updateClientData.SubmitChanges();



            }
        }

        protected void addproperty_Click(object sender, EventArgs e)
        {
            var InsertProperty = new db_ptcDataContext();

            int cid;

            bool IsIntValue = Int32.TryParse(hfClientid.Value, out cid);

            if (IsIntValue)
            { }
        }
    }
}
