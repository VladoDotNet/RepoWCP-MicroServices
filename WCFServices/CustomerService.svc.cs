using System.Collections.Generic;
using System.Linq;

namespace WCFServices
{
    public class CustomerService : ICustomerService
   {
      private NorthwindEntities _context = new NorthwindEntities();
      public Customer Get (string id)
      {
         if ( id == "" )
         {
            return null;
         }
         return _context.Customers.Single(c => c.CustomerID == id);
      }

      public List<Customer> GetAll ()
      {
         return _context.Customers.ToList();
      }
   }
}
