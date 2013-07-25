using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoDeploy.BusinessObjects
{
   public class PackageParms
    {
        public string  ProjectPath { get; set; }
        public string ConfigurationType { get; set; }
        public string Platform { get; set; }
        public string PackageLocation { get; set; }
    }
}
