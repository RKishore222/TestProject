using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoDeploy.BusinessObjects
{
    public class DotnetBuildParams
    {
        public string Configuration { get; set; }

        public string  Platform { get; set; }

        public string  OutputPath { get; set; }

        public string projectFileName { get; set; }

        public string  Toolversion { get; set; }

        public string[] TargetsToBuild { get; set; }

        public string hostServices { get; set; }

    }
}
