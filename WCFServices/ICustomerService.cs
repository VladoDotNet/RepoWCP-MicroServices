using System.Collections.Generic;
using System.ServiceModel;

namespace WCFServices
{
    [ServiceContract]
   public interface ICustomerService
   {
      [OperationContract]
      List<Customer> GetAll();

      [OperationContract]
      Customer Get(string id);
   }
}
