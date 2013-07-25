using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoDeploy.BusinessObjects
{
   public  class DeployParms
    {
       public string DestinationServerName { get; set; }
       public string UserName { get; set; }
        public string PassWord { get; set; }
    }
}
