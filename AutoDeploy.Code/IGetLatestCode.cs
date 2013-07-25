using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AutoDeploy.BusinessObjects;

namespace AutoDeploy.Code
{
    interface IGetLatestCode
    {
        void ValidateUser(string username, string password);
        string LatestVersion(TfsGetCodeParams objTfsGetCodeParams);
    }
}
