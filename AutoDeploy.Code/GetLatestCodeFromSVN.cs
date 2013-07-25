using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AutoDeploy.BusinessObjects;

namespace AutoDeploy.Code
{
    public class GetLatestCodeFromSVN : IGetLatestCode
    {
        public void ValidateUser(string username, string password)
        {
            throw new NotImplementedException();
        }

        public string LatestVersion(TfsGetCodeParams objTfsGetCodeParams)
        {
            throw new NotImplementedException();
        }
    }
}
