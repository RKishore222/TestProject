using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoDeploy.BusinessObjects
{
   public enum GetCodeType
    {
        LatestVersion=0,
        GetSpecificVersion,
        Changeset,
        ByLabel,
        ByDates
    }
}
