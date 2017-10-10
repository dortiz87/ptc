using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


namespace PTC_Systems
{
    public partial class appealform : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void BtnGeneratePDF_Click(object sender, EventArgs e)
        {
            var pdfpath = Path.Combine(Server.MapPath("~/PDFforms/appealform.pdf"));

            // Get the form fields for this PDF and fill them in!
            var formFieldMap = PDFHelper.GetFormFieldNames(pdfpath);
            formFieldMap["AppraisalDistrictsName"] = adname.Value;
            formFieldMap["Phone"] = adphone.Value;
            formFieldMap["Enter Address"] = adaddress.Value;



            var pdfContents = PDFHelper.GeneratePDF(pdfpath, formFieldMap);

            PDFHelper.ReturnPDF(pdfContents, "Completed-W9.pdf");


        }

        protected void appealformselect()
        {
            using (var parcelstb = new db_ptcDataContext())
            {
               
            }
        }
    }
}