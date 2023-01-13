using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WCFNorthwindEF.CustomerGetServiceRef;

namespace WCFNorthwindEF
{
   public partial class WFCustomerServices : System.Web.UI.Page
   {
      private CustomerServiceClient oService =
           new CustomerServiceClient();

      protected void Page_Load (object sender, EventArgs e)
      {
         if ( !Page.IsPostBack )
         {
            //MultiView1.ActiveViewIndex = 0;
            this.DataBinding();
         }
      }

      private void DataBinding()
      {
         this.GridCustomer.DataSource =
               oService.GetAll().Select(c =>
                new
                {
                   ID = c.CustomerID,
                   CompanyName = c.CompanyName,
                   Country = c.Country
                }
                ).ToList();

         this.GridCustomer.DataBind();
         lblRegs.Text = "Records retrieved per pages: " + GridCustomer.Rows.Count.ToString() + " records.";
      }

      protected void btnSearching_Click (object sender, EventArgs e)
      {
         try
         {
            Customer c = this.oService.Get(txtSearching.Text);
            if ( c != null )
            {
               lblCustomer.Text = "Company name: " + c.CompanyName;
               lblCountry.Text = "Country: " + c.Country;
            }
         }
         catch ( Exception ex )
         {
            ex.Source = "Error";
         }
      }

      protected void OnPageIndexChanging (object sender, GridViewPageEventArgs e)
      {
         GridCustomer.PageIndex = e.NewPageIndex;
         DataBinding();
      }
   }
}