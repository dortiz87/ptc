using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PTC_Systems
{
    

    public partial class NewClientSetup : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data Source = daenerys-one.database.windows.net; Initial Catalog = ptc; Persist Security Info=True;User ID = ptcadmin; Password=B11x55otc");

        protected void Page_Load(object sender, EventArgs e)
        {
            ClientContactSelect();
            PropertyContactSelect();
            

        }

        public void ClientContactSelect()
        {
            using (var contactTB = new db_ptcDataContext())
            {
                ClientContactdd.DataSource = from Contact in contactTB.Contacts
                                             orderby Contact.ContactLastname
                                             select new { Contact.ContactLastname, Contact.ContactFirstName, Contact.Contactid, ContactFullName = string.Format("{0},{1}", Contact.ContactLastname, Contact.ContactFirstName) };

                ClientContactdd.DataTextField = "ContactFullName";
                ClientContactdd.DataValueField = "Contactid";
                ClientContactdd.DataBind();
            }
        }

        public void PropertyContactSelect()
        {
            using (var contactTB = new db_ptcDataContext())
            {
                PropertyContactdd.DataSource = from Contact in contactTB.Contacts
                                             orderby Contact.ContactLastname
                                             select new { Contact.ContactLastname, Contact.ContactFirstName, Contact.Contactid, ContactFullName = string.Format("{0},{1}", Contact.ContactLastname, Contact.ContactFirstName) };

                PropertyContactdd.DataTextField = "ContactFullName";
                PropertyContactdd.DataValueField = "Contactid";
                PropertyContactdd.DataBind();
            }
        }

        public void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {

            SqlCommand com;
            String str;
            conn.Open();
            str = @"exec NewClientSetup
        @ClientContactId = @ClientContactId,
		@ClientActiveDate = @ClientActiveDate,
		@ClientActive = @ClientActive,
		@ClientName = @ClientName,
		@ClientAddressLine1 = @ClientAddressLine1,
		@ClientAddressLine2 = @ClientAddressLine2,
		@ClientAddressCity = @ClientAddressCity,
		@ClientAddressState = @ClientAddressState,
		@ClientAddressZip = @ClientAddressZip,
		@ClientNotes = @ClientNotes,
		@PropertyContactid = @PropertyContactid,
		@PropertyName = @PropertyName,
		@InternalCode = @InternalCode,
		@PropertyCounty = @PropertyCounty,
		@PropertyIsActive = @PropertyIsActive,
		@PropertyActiviatedDate = @PropertyActiviatedDate,
		@PropertyAddressLine1 = @PropertyAddressLine1,
		@PropertyAddressLine2 = @PropertyAddressLine2,
		@PropertyAddressCity = @PropertyAddressCity,
		@PropertyAddressState = @PropertyAddressState,
		@PropertyAddressZip = @PropertyAddressZip,
		@PropertyPrimaryUse = @PropertyPrimaryUse,
		@PropertyCharYearBuilt = @PropertyCharYearBuilt,
		@PropertyCharUnits = @PropertyCharUnits,
		@PropertyCharGBA = @PropertyCharGBA,
		@PropertyCharNLA = @PropertyCharNLA,
		@PropertyInfoSalesPrice = @PropertyInfoSalesPrice,
		@PropertyInfoSalesDate = @PropertyInfoSalesDate,
		@PropertyFlagIncomeProducing = @PropertyFlagIncomeProducing,
		@PropertyFlagIEReceived = @PropertyFlagIEReceived,
		@PropertyFlagRRReceived = @PropertyFlagRRReceived,
		@PropertyFlagAOAReceived = @PropertyFlagAOAReceived,
		@PropertyAOAExpDate = @PropertyAOAExpDate";

            com = new SqlCommand(str, conn);
            
            com.Parameters.AddWithValue("@ClientName", wzClientName.Value);
            com.Parameters.AddWithValue("@ClientLogo", wzClientLogo.ImageUrl);
            com.Parameters.AddWithValue("@ClientContactId", ClientContactdd.SelectedValue);
            com.Parameters.AddWithValue("@ClientActive", wzClientActive.Checked);
            com.Parameters.AddWithValue("@ClientActiveDate", wzClientActiveDate.Text);
            com.Parameters.AddWithValue("@ClientAddressLine1", wzClientAddressLine1.Value);
            com.Parameters.AddWithValue("@ClientAddressLine2", wzClientAddresLine2.Text);
            com.Parameters.AddWithValue("@ClientAddressState", wzClientAddressState.Text);
            com.Parameters.AddWithValue("@ClientAddressCity", wzClientAddressCity.Text);
            com.Parameters.AddWithValue("@ClientAddressZip", wzClientAddressZip.Text);
            com.Parameters.AddWithValue("@ClientNotes", wzClientNotes.Text);
            com.Parameters.AddWithValue("@PropertyContactid", PropertyContactdd.SelectedValue);
            com.Parameters.AddWithValue("@PropertyName", wzpPropertyName.Text);
            com.Parameters.AddWithValue("@InternalCode", wzpInternalCode.Text);
            com.Parameters.AddWithValue("@PropertyCounty", wzpPropertyCounty.Text);
            com.Parameters.AddWithValue("@PropertyIsActive", wzpPropertyIsActive.Checked);
            com.Parameters.AddWithValue("@PropertyActiviatedDate", wzpPropertyActivatedDate.Text);
            com.Parameters.AddWithValue("@PropertyAddressLine1", wzpPropertyAddressLine1.Text);
            com.Parameters.AddWithValue("@PropertyAddressLine2", wzpPropertyAddressLine2.Text);
            com.Parameters.AddWithValue("@PropertyAddressCity", wzpPropertyAddressCity.Text);
            com.Parameters.AddWithValue("@PropertyAddressState", wzpPropertyAddressState.Text);
            com.Parameters.AddWithValue("@PropertyAddressZip", wzpPropertyAddressZip.Text);
            com.Parameters.AddWithValue("@PropertyPrimaryUse", wzpPropertyPrimaryUse.Text);
            com.Parameters.AddWithValue("@PropertyCharYearBuilt", wzpPropertyCharYearBuilt.Text);
            com.Parameters.AddWithValue("@PropertyCharUnits", wzpPropertyCharUnits.Text);
            com.Parameters.AddWithValue("@PropertyCharGBA", wzpPropertyCharGBA.Text);
            com.Parameters.AddWithValue("@PropertyCharNLA", wzpPropertyCharNLA.Text);
            com.Parameters.AddWithValue("@PropertyInfoSalesPrice", wzpPropertyInfoSalesPrice.Text);
            com.Parameters.AddWithValue("@PropertyInfoSalesDate", wzpPropertyInfoSalesDate.Text);
            com.Parameters.AddWithValue("@PropertyFlagIncomeProducing", wzpPropertyFlagIncomeProducing.Checked);
            com.Parameters.AddWithValue("@PropertyFlagIEReceived", wzpPropertyFlagIEReceived.Checked);
            com.Parameters.AddWithValue("@PropertyFlagRRReceived", wzpPropertyFlagRRReceived.Checked);
            com.Parameters.AddWithValue("@PropertyFlagAOAReceived", wzpPropertyFlagAOAReceived.Checked);
            com.Parameters.AddWithValue("@PropertyAOAExpDate", wzpPropertyAOAExpDate.Text);

            com.ExecuteNonQuery();
            conn.Close();


           



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            db_ptcDataContext ADsearch = new db_ptcDataContext();

            //int AD;
            {
                var lookup = (
                    from tb in ADsearch.SearchAppraisalDistrictDatas
                    where tb.prop_id.ToString() == txtSearchPID.Text
                    select new
                    {
                        tb.geo_id,
                        tb.prop_type_cd,
                        tb.legal_desc,
                        tb.situs_street,
                        tb.py_owner_name,
                        tb.py_addr_line1,
                        tb.py_addr_line2,
                        tb.py_addr_city,
                        tb.py_addr_state,
                        tb.py_addr_zip,
                        tb.py_addr_zip_cass,
                        acres = Convert.ToDecimal(tb.land_acres)/10000,
                        tb.property_name,
                        tb.gross_building_area,
                        tb.net_rentable_area,
                        tb.prop_use_cd,
                        tb.prop_use_desc,
                        
                    }).FirstOrDefault();

                txtgeoid.Text = lookup.geo_id;
                txtparceltype.Text = lookup.prop_type_cd;
                txtlegaldesc.Text = lookup.legal_desc;
                txtaddressline2.Text = lookup.situs_street;
                txtlegalowner.Text = lookup.py_owner_name + ' ' + lookup.py_addr_line1;
                txtowneraddress.Text = lookup.py_addr_line2;
                txtownercity.Text = lookup.py_addr_city;
                txtownerstate.Text = lookup.py_addr_state;
                txtownerzip.Text = lookup.py_addr_zip + '-' + lookup.py_addr_zip_cass;
                txtdba.Text = lookup.property_name;
                txtlandsize.Text = lookup.acres.ToString("#.####");
                txtgba.Text = lookup.gross_building_area;
                txtnla.Text = lookup.net_rentable_area;
                txtpropusecode.Text = lookup.prop_use_cd;
                txtpropusedesc.Text = lookup.prop_use_desc;


            }

            
        }
    }
}