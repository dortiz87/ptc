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
    public partial class newsetup : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(@"Data Source = daenerys-one.database.windows.net; Initial Catalog = ptc; Persist Security Info=True;User ID = ptcadmin; Password=B11x55otc");

        protected void Page_Load(object sender, EventArgs e)
        {
            ClientContactSelect();
            PropertyContactSelect();
        }

        protected void ClientContactSelect()
        {
            using (var contactTB = new db_ptcDataContext())
            {
                ClientContactdd.DataSource = from Contact in contactTB.Contacts
                                             orderby Contact.ContactLastname
                                             select new { Contact.ContactLastname, Contact.ContactFirstName, Contact.Contactid, ContactFullName = string.Format("{0},{1}", Contact.ContactLastname, Contact.ContactFirstName) };

                ClientContactdd.DataTextField = "ContactFullName";
                ClientContactdd.DataValueField = "Contactid";
                ClientContactdd.DataBind();

                ClientContactdd.Items.Insert(0, new ListItem("Select Contact", "NA"));
            }
        }

        protected void PropertyContactSelect()
        {
            using (var contactTB = new db_ptcDataContext())
            {
                PropertyContactdd.DataSource = from Contact in contactTB.Contacts
                                               orderby Contact.ContactLastname
                                               select new { Contact.ContactLastname, Contact.ContactFirstName, Contact.Contactid, ContactFullName = string.Format("{0},{1}", Contact.ContactLastname, Contact.ContactFirstName) };

                PropertyContactdd.DataTextField = "ContactFullName";
                PropertyContactdd.DataValueField = "Contactid";
                PropertyContactdd.DataBind();

                PropertyContactdd.Items.Insert(0, new ListItem("Select Contact", "NA"));
            }
        }
        public void Wizard1_FinishButton_Click(object sender, EventArgs e)
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
		@PropertyAOAExpDate = @PropertyAOAExpDate,
        @ParcelFlagActive = @ParcelFlagActive,
        @ParcelActiveDate = @ParcelActiveDate,
        @ParcelPropId = @ParcelPropId,
        @ParcelGeoId = @ParcelGeoId,
        @ParcelDBA = @ParcelDBA,
        @ParcelSitusStreetprefx = @ParcelSitusStreetprefx,
        @ParcelSitusStreet = @ParcelSitusStreet,
        @ParcelSitusStreetSuffix = @ParcelSitusStreetSuffix,
        @ParcelSitusCity = @ParcelSitusCity,
        @ParcelSitusZip = @ParcelSitusZip,
        @ParcelLegalDesc = @ParcelLegalDesc,
        @ParcelOwnerName = @ParcelOwnerName,
        @ParcelOwnerAddressLine1 = @ParcelOwnerAddressLine1,
        @ParcelOwnerAddressLine2 = @ParcelOwnerAddressLine2,
        @ParcelOwnerAddressCity = @ParcelOwnerAddressCity,
        @ParcelOwnerAddressState = @ParcelOwnerAddressState,
        @ParcelOwnerAddressZip = @ParcelOwnerAddressZip,
        @ParcelCharGBA = @ParcelCharGBA,
        @ParcelCharNLA = @ParcelCharNLA,
        @ParcelCharYearBuilt = @ParcelCharYearBuilt,
        @ParcelNotes = @ParcelNotes,
        @ParcelAppraisalAuthoritiesId = @ParcelAppraisalAuthoritiesId
        @ParcelCharAcres = @ParcelCharAcres,
        @ParcelPropUseCd = @ParcelPropUseCd,
        @ParcelPropUseDesc = @ParcelPropUseDesc";

            com = new SqlCommand(str, conn);

            com.Parameters.AddWithValue("@ClientName", wzClientName.Value);
            /* com.Parameters.AddWithValue("@ClientLogo", wzClientLogo.ImageUrl);*/
            com.Parameters.AddWithValue("@ClientContactId", ClientContactdd.Value);
            /* com.Parameters.AddWithValue("@ClientActive", wzC.Checked); Client will always be active upon setup*/
            com.Parameters.AddWithValue("@ClientActiveDate", wzClientActiveDate.Value);
            com.Parameters.AddWithValue("@ClientAddressLine1", wzClientAddressLine1.Value);
            com.Parameters.AddWithValue("@ClientAddressLine2", wzClientAddressLine2.Value);
            com.Parameters.AddWithValue("@ClientAddressState", wzClientAddressState.Value);
            com.Parameters.AddWithValue("@ClientAddressCity", wzClientAddressCity.Value);
            com.Parameters.AddWithValue("@ClientAddressZip", wzClientAddressZip.Value);
            com.Parameters.AddWithValue("@ClientNotes", wzClientNotes.Value);
            com.Parameters.AddWithValue("@PropertyContactid", PropertyContactdd.Value);
            com.Parameters.AddWithValue("@PropertyName", wzPropertyName.Value);
            com.Parameters.AddWithValue("@InternalCode", wzInternalCode.Value);
            com.Parameters.AddWithValue("@PropertyCounty", wzPropertyCounty.Value);
            /*com.Parameters.AddWithValue("@PropertyIsActive", wzPropertyIsActive.Checked);*/
            com.Parameters.AddWithValue("@PropertyActiviatedDate", wzPropertyActiveDate.Value);
            com.Parameters.AddWithValue("@PropertyAddressLine1", wzPropertyAddressLine1.Value);
            com.Parameters.AddWithValue("@PropertyAddressLine2", wzPropertyAddressLine2.Value);
            com.Parameters.AddWithValue("@PropertyAddressCity", wzPropertyAddressCity.Value);
            com.Parameters.AddWithValue("@PropertyAddressState", wzPropertyAddressState.Value);
            com.Parameters.AddWithValue("@PropertyAddressZip", wzPropertyAddressZip.Value);
            com.Parameters.AddWithValue("@PropertyPrimaryUse", wzPropertyPrimaryuse.Value);
            com.Parameters.AddWithValue("@PropertyCharYearBuilt", wzPropertyCharYearBuilt.Value);
            com.Parameters.AddWithValue("@PropertyCharUnits", wzPropertyCharUnits.Value);
            com.Parameters.AddWithValue("@PropertyCharGBA", wzPropertyCharGBA.Value);
            com.Parameters.AddWithValue("@PropertyCharNLA", wzPropertyCharNLA.Value);
            com.Parameters.AddWithValue("@PropertyInfoSalesPrice", wzPropertyInfoSalesPrice.Value);
            com.Parameters.AddWithValue("@PropertyInfoSalesDate", wzPropertyInfoSalesDate.Value);
            com.Parameters.AddWithValue("@PropertyFlagIncomeProducing", cbIncomeProducing.Checked);
            com.Parameters.AddWithValue("@PropertyFlagIEReceived", cbIEExpected.Checked);
            com.Parameters.AddWithValue("@PropertyFlagRRReceived", cbRRExpected.Checked);
            com.Parameters.AddWithValue("@PropertyFlagAOAReceived", cbAOAReceived.Checked);
            /*com.Parameters.AddWithValue("@PropertyAOAExpDate", wzPropertyAOAExpDate.Value); Needs to be at Client Table*/

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
                    where tb.prop_id.ToString() == wzParcelId.Value
                   
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
                        tb.land_acres,
                        tb.property_name,
                        tb.gross_building_area,
                        tb.net_rentable_area,
                        tb.year_built,
                        tb.prop_use_cd,
                        tb.prop_use_desc,

                    }).FirstOrDefault();

               

                wzParcelGeoId.Value = lookup.geo_id;
                wzParcelType.Value = lookup.prop_type_cd;
                wzParcelLegalDesc.Value = lookup.legal_desc;
                wzParcelAdressLine2.Value = lookup.situs_street;
                wzParcelOwnerName.Value = lookup.py_owner_name + ' ' + lookup.py_addr_line1;
                wzParcelOwnerAddress.Value = lookup.py_addr_line2;
                wzParcelOwnerAddressCity.Value = lookup.py_addr_city;
                wzParcelOwnerAddressState.Value = lookup.py_addr_state;
                wzParcelOwnerAddressZip.Value = lookup.py_addr_zip + '-' + lookup.py_addr_zip_cass;
                wzParcelDBA.Value = lookup.property_name;
                wzParcelAcres.Value = lookup.land_acres;
                wzParcelGBA.Value = lookup.gross_building_area;
                wzParcelNLA.Value = lookup.net_rentable_area;
                wzParcelPropertyUseCode.Value = lookup.prop_use_cd;
                /*wzParcelCharYearBuilt = lookup.year_built;*/
                wzParcelPropertyUseDesc.Value = lookup.prop_use_desc;

               

            }

           }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {

        }
    }
    }
